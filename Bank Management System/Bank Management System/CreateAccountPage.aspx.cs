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

    public partial class CreateAccountPage : System.Web.UI.Page
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

        protected void btnCreateAccount_Click(object sender, EventArgs e)
        {
            string firstName = txtFirstName.Text;
            string lastName = txtLastName.Text;
            string clientId = txtClientID.Text;
            string accountType = DropDownList2.SelectedItem.Text;

            if (clientId != "" && accountType != "" && firstName != "" && lastName != "")
            {
                try
                {
                    conn.Open();

                    // SQL query to check if the client exists
                    string checkQuery = "SELECT COUNT(*) FROM Client WHERE ClientId = @ClientId AND FirstName = @FirstName AND LastName = @LastName";

                    using (SqlCommand checkCommand = new SqlCommand(checkQuery, conn))
                    {
                        checkCommand.Parameters.AddWithValue("@ClientId", Convert.ToInt32(clientId));
                        checkCommand.Parameters.AddWithValue("@FirstName", firstName);
                        checkCommand.Parameters.AddWithValue("@LastName", lastName);

                        int clientCount = (int)checkCommand.ExecuteScalar();

                        if (clientCount > 0)
                        {
                            // SQL query to insert a new account for the client
                            string insertQuery = "INSERT INTO Account (ClientId, AccType) VALUES (@ClientId, @AccType)";

                            using (SqlCommand insertCommand = new SqlCommand(insertQuery, conn))
                            {
                                insertCommand.Parameters.AddWithValue("@ClientId", Convert.ToInt32(clientId));
                                insertCommand.Parameters.AddWithValue("@AccType", accountType);

                                int rowsAffected = insertCommand.ExecuteNonQuery();

                                if (rowsAffected > 0)
                                {
                                    HttpContext.Current.Response.Redirect("AccountManagerDashboard.aspx");
                                }
                                else
                                {
                                    // Show pop-up message using JavaScript
                                    Session["ErrorMessage"] = "Failed to create the account!";
                                    Response.Redirect(Request.RawUrl);
                                }
                            }
                        }
                        else
                        {
                            // Show pop-up message using JavaScript
                            Session["ErrorMessage"] = "No client with the provided details!";
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