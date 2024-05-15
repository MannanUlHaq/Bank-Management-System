using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bank_Management_System
{
    public partial class BankStaffLoginPage : System.Web.UI.Page
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

        protected void Bankstaff_loginbtn_Click1(object sender, EventArgs e)
        {
            conn.Open();

            string username = txtBankstaff_login.Text; 
            string password = txtBankstaff_pswd.Text;

            // Get the selected role from the dropdown list
            string selectedRole = DropDownList2.SelectedItem.Text;

            // SQL query to check if the username, password, and role exist in the database
            string query = "SELECT COUNT(*) FROM BankTeam WHERE UserName = @UserName AND Password = @Password AND Designation = @Role";

            // Create and open connection
            using (SqlCommand command = new SqlCommand(query, conn))
            {
                // Add parameters to command
                command.Parameters.AddWithValue("@UserName", username);
                command.Parameters.AddWithValue("@Password", password);
                command.Parameters.AddWithValue("@Role", selectedRole);

                // Execute the command and get the result
                int count = (int)command.ExecuteScalar();

                // Check if count is greater than 0, indicating successful login
                if (count > 0)
                {
                    // Redirect the user based on the selected role
                    switch (selectedRole)
                    {
                        case "Account Manager":
                            HttpContext.Current.Response.Redirect("AccountManagerDashboard.aspx");
                            break;

                        case "Transaction Manager":
                            HttpContext.Current.Response.Redirect("TransactionManagerDashboard.aspx");
                            break;

                        case "Financial Products Coordinator":
                            HttpContext.Current.Response.Redirect("ProductsCoordinatorDashboard.aspx");
                            break;

                        default:
                            break;
                    }
                }
                else
                {
                    // Show pop-up message using JavaScript
                    Session["ErrorMessage"] = "Invalid Input! You entered wrong username or password.";
                    Response.Redirect(Request.RawUrl);
                }
            }
        }
    }
}