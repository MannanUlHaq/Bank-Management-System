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
    public partial class RemoveClient : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            string firstName = txtFirstName.Text;
            string lastName = txtLastName.Text;
            string clientid = txtclientid.Text;

            if (firstName != "" && lastName != "" && clientid != "")
            {
                try
                {
                    conn.Open();

                    // SQL query to check if the admin exists based on first name, last name, and CNIC
                    string query = "DELETE FROM Client WHERE FirstName = @FirstName AND LastName = @LastName AND ClientId = @ClientId";


                    using (SqlCommand command = new SqlCommand(query, conn))
                    {
                        // Add parameters to command
                        command.Parameters.AddWithValue("@FirstName", firstName);
                        command.Parameters.AddWithValue("@LastName", lastName);
                        command.Parameters.AddWithValue("@ClientId", clientid);

                        // Execute the command
                        int rowsAffected = command.ExecuteNonQuery();

                        // Check if any rows were affected
                        if (rowsAffected > 0)
                        {
                            HttpContext.Current.Response.Redirect("AdminDashboard.aspx");
                        }
                        else
                        {
                            // Show pop-up message using JavaScript
                            Session["ErrorMessage"] = "No records found to delete.";
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
                    Session["ErrorMessage"] = "Error occurred!";
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