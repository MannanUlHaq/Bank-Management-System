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
    public partial class CardApplicationPage : System.Web.UI.Page
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
            if (txtFirstName.Text != "" && txtLastName.Text != "" && txtAccountID.Text != "" && DropDownList2.SelectedItem.Text != "" && TextBoxPin.Text != "")
            {
                try
                {
                    conn.Open();

                    int AccountID = Convert.ToInt32(txtAccountID.Text);
                    string CardType = DropDownList2.SelectedItem.Text;
                    int Pin = Convert.ToInt32(TextBoxPin.Text);

                    if (TextBoxPin.Text.Length > 4)
                    {
                        Session["ErrorMessage"] = "Pin is not Correct!";
                        Response.Redirect(Request.RawUrl);
                        return;
                    }

                    // Check if the client exists based on first name and last name
                    string firstName = txtFirstName.Text;
                    string lastName = txtLastName.Text;

                    string checkClientQuery = "SELECT COUNT(*) FROM Client WHERE FirstName = @FirstName AND LastName = @LastName";
                    using (SqlCommand checkClientCommand = new SqlCommand(checkClientQuery, conn))
                    {
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

                    // SQL query to insert a new debit card
                    string insertQuery = "INSERT INTO DebitCard (AccountID, CardType, Pin) VALUES (@AccountID, @CardType, @Pin)";

                    using (SqlCommand command = new SqlCommand(insertQuery, conn))
                    {
                        // Add parameters to command
                        command.Parameters.AddWithValue("@AccountID", AccountID);
                        command.Parameters.AddWithValue("@CardType", CardType);
                        command.Parameters.AddWithValue("@Pin", Pin);

                        // Execute the command
                        int rowsAffected = command.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            HttpContext.Current.Response.Redirect("ProductsCoordinatorDashboard.aspx");
                        }
                        else
                        {
                            // Show pop-up message using JavaScript
                            Session["ErrorMessage"] = "Failed to create the debit card!";
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
                    Session["ErrorMessage"] = "No Account With this ID!";
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