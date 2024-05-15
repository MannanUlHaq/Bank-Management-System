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
    public partial class CustomerSupport : System.Web.UI.Page
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

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtFirstName.Text != "" && txtLastName.Text != "" && txtEmailAddress.Text != "" && txtMessage.Text != "")
            {
                conn.Open();

                string firstName = txtFirstName.Text;
                string lastName = txtLastName.Text;
                string email = txtEmailAddress.Text;
                string message = txtMessage.Text;

                // SQL query to retrieve the ClientId associated with the provided information
                string queryClientId = "SELECT ClientId FROM Client WHERE FirstName = @FirstName AND LastName = @LastName AND Email = @Email";

                // SQL query to insert a new message into the MessageBox table
                string queryInsertMessage = "INSERT INTO MessageBox (ClientID, Message) VALUES (@ClientId, @Message)";

                SqlTransaction transaction = conn.BeginTransaction();

                try
                {
                    int clientId = 0;

                    // Retrieve the ClientId associated with the provided information
                    using (SqlCommand commandClientId = new SqlCommand(queryClientId, conn, transaction))
                    {
                        // Add parameters to command
                        commandClientId.Parameters.AddWithValue("@FirstName", firstName);
                        commandClientId.Parameters.AddWithValue("@LastName", lastName);
                        commandClientId.Parameters.AddWithValue("@Email", email);

                        // Execute the command to retrieve the ClientId
                        object clientIdObject = commandClientId.ExecuteScalar();
                        if (clientIdObject != null && clientIdObject != DBNull.Value)
                        {
                            clientId = (int)clientIdObject;
                        }
                    }

                    if (clientId != 0)
                    {
                        // Insert a new message into the MessageBox table
                        using (SqlCommand commandInsertMessage = new SqlCommand(queryInsertMessage, conn, transaction))
                        {
                            // Add parameters to command
                            commandInsertMessage.Parameters.AddWithValue("@ClientId", clientId);
                            commandInsertMessage.Parameters.AddWithValue("@Message", message);

                            // Execute the command to insert the message
                            commandInsertMessage.ExecuteNonQuery();
                        }

                        // Commit the transaction if all queries are successful
                        transaction.Commit();
                        conn.Close();
                        HttpContext.Current.Response.Redirect("ClientDashboard.aspx");
                    }
                    else
                    {
                        transaction.Rollback();
                        conn.Close();
                        // Rollback the transaction if an exception occurs
                        // Show pop-up message using JavaScript
                        Session["ErrorMessage"] = "Client Not found!";
                        Response.Redirect(Request.RawUrl);
                    }
                }
                catch (ThreadAbortException ex)
                {
                    // Handle ThreadAbortException
                    // You might not need to do anything here, as it is usually expected behavior.
                }
                catch (Exception ex)
                {
                    transaction.Rollback();
                    conn.Close();
                    // Rollback the transaction if an exception occurs
                    // Show pop-up message using JavaScript
                    Session["ErrorMessage"] = "Invalid Input!";
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