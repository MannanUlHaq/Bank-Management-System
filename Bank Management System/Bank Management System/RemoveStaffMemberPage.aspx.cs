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
    public partial class RemoveStaffMemberPage : System.Web.UI.Page
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
            try
            {
                conn.Open();

                string firstName = txtFirstName.Text;
                string lastName = txtLastName.Text;
                int memberId = Convert.ToInt32(txtMemberId.Text);

                // SQL query to delete the bank member based on first name, last name, and member ID
                string query = "DELETE FROM BankTeam WHERE memberId = @memberId AND FirstName = @FirstName AND LastName = @LastName";

                // Create and open connection
                using (SqlCommand command = new SqlCommand(query, conn))
                {
                    // Add parameters to command
                    command.Parameters.AddWithValue("@FirstName", firstName);
                    command.Parameters.AddWithValue("@LastName", lastName);
                    command.Parameters.AddWithValue("@memberId", memberId);

                    // Execute the command
                    int rowsAffected = command.ExecuteNonQuery();

                    // Check if any rows were affected
                    if (rowsAffected > 0)
                    {
                        HttpContext.Current.Response.Redirect("AdminDashboard.aspx");
                    }
                    else
                    {
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
                Session["ErrorMessage"] = "Invalid Input!";
                Response.Redirect(Request.RawUrl);
            }
        }
    }
}