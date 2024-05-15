using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bank_Management_System
{
    public partial class LoanApplicationPage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=jarvis-2020.database.windows.net;Initial Catalog=""Bank Management System"";Persist Security Info=True;User ID=jarvis-2020;Password=Mannan2004@;");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["ErrorMessage"] != null)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('Error', '" + Session["ErrorMessage"].ToString() + "', 'error')", true);
                    Session.Remove("ErrorMessage");
                }
            }
        }

        protected void btnApply_Click(object sender, EventArgs e)
        {
            if (txtFirstName.Text != "" && txtLastName.Text != "" && txtClientID.Text != "" && txtAccountType.Text != "" && TextBox1.Text != "")
            {
                try
                {
                    conn.Open();

                    int clientId = Convert.ToInt32(txtClientID.Text);
                    string loanType = txtAccountType.Text;
                    int amount = Convert.ToInt32(TextBox1.Text);

                    string firstName = txtFirstName.Text;
                    string lastName = txtLastName.Text;

                    // Check if the client exists based on client ID, first name, and last name
                    string checkClientQuery = "SELECT COUNT(*) FROM Client WHERE ClientId = @ClientId AND FirstName = @FirstName AND LastName = @LastName";
                    using (SqlCommand checkClientCommand = new SqlCommand(checkClientQuery, conn))
                    {
                        checkClientCommand.Parameters.AddWithValue("@ClientId", clientId);
                        checkClientCommand.Parameters.AddWithValue("@FirstName", firstName);
                        checkClientCommand.Parameters.AddWithValue("@LastName", lastName);

                        int clientCount = (int)checkClientCommand.ExecuteScalar();

                        if (clientCount == 0)
                        {
                            Session["ErrorMessage"] = "No client with the provided details!";
                            Response.Redirect(Request.RawUrl);
                            return;
                        }
                    }

                    // SQL query to insert a new loan
                    string query = "INSERT INTO Loans (ClientId, LoanType, Amount) VALUES (@ClientId, @LoanType, @Amount)";

                    using (SqlCommand command = new SqlCommand(query, conn))
                    {
                        // Add parameters to command
                        command.Parameters.AddWithValue("@ClientId", clientId);
                        command.Parameters.AddWithValue("@LoanType", loanType);
                        command.Parameters.AddWithValue("@Amount", amount);

                        // Execute the command
                        int rowsAffected = command.ExecuteNonQuery();

                        // Check if any rows were affected
                        if (rowsAffected > 0)
                        {
                            HttpContext.Current.Response.Redirect("ProductsCoordinatorDashboard.aspx");
                        }
                        else
                        {
                            // Show pop-up message using JavaScript
                            Session["ErrorMessage"] = "Failed to create the loan!";
                            Response.Redirect(Request.RawUrl);
                        }
                    }
                }
                catch (ThreadAbortException ex)
                {
                    // Handle ThreadAbortException
                    // You might not need to do anything here, as it is usually expected behavior.
                }
                catch (Exception ex)
                {
                    // Handle the exception
                    Session["ErrorMessage"] = "No Client With this ID!";
                    Response.Redirect(Request.RawUrl);
                }
            }
            else
            {
                Session["ErrorMessage"] = "Fill information completely!";
                Response.Redirect(Request.RawUrl);
            }
        }
    }
}