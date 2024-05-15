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
    public partial class AddStaffMemberPage : System.Web.UI.Page
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

        protected void btnAdd_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();

                string firstName = txtFirstName.Text;
                string lastName = txtLastName.Text;
                int age = Convert.ToInt32(txtAge.Text);
                char gender = char.ToUpper(txtGender.Text[0]); // Ensure gender is uppercase
                string email = txtEmail.Text;
                int phoneNumber = Convert.ToInt32(txtPhone.Text);
                string userName = txtUsername.Text;
                string password = txtPassword.Text;
                string designation = DropDownList2.SelectedItem.Text;

                // Create the SQL query
                string query = @"INSERT INTO BankTeam (FirstName, LastName, Age, Gender, Email, PhoneNumber, UserName, Password, Designation)
                     VALUES (@FirstName, @LastName, @Age, @Gender, @Email, @PhoneNumber, @UserName, @Password, @Designation)";

                // Create and open the connection
                using (SqlCommand command = new SqlCommand(query, conn))
                {
                    // Add parameters
                    command.Parameters.AddWithValue("@FirstName", firstName);
                    command.Parameters.AddWithValue("@LastName", lastName);
                    command.Parameters.AddWithValue("@Age", age);
                    command.Parameters.AddWithValue("@Gender", gender);
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@PhoneNumber", phoneNumber);
                    command.Parameters.AddWithValue("@UserName", userName);
                    command.Parameters.AddWithValue("@Password", password);
                    command.Parameters.AddWithValue("@Designation", designation);

                    // Execute the query
                    int rowsAffected = command.ExecuteNonQuery();

                    // Check if any rows were affected
                    if (rowsAffected > 0)
                    {
                        HttpContext.Current.Response.Redirect("AdminDashboard.aspx");
                    }
                    else
                    {
                        Session["ErrorMessage"] = "Invalid Input!";
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
            finally
            {
                conn.Close();
            }
        }
    }
}
