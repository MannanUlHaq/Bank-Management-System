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
    public partial class UpdateStaffMemberInfoPage : System.Web.UI.Page
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
                if (string.IsNullOrEmpty(TextBox1.Text) ||
    string.IsNullOrEmpty(txtFirstName.Text) ||
    string.IsNullOrEmpty(txtLastName.Text) ||
    string.IsNullOrEmpty(txtEmail.Text) ||
    string.IsNullOrEmpty(txtPhone.Text) ||
    string.IsNullOrEmpty(txtUsername.Text) ||
    string.IsNullOrEmpty(TextBoxPassword.Text) ||
    string.IsNullOrEmpty(txtDesignation.Text))
                {
                    // Show error message and exit the method
                    Session["ErrorMessage"] = "All fields are required!";
                    Response.Redirect(Request.RawUrl);
                    return;
                }

                conn.Open();

                int memberId = Convert.ToInt32(TextBox1.Text);
                string firstName = txtFirstName.Text;
                string lastName = txtLastName.Text;
                string email = txtEmail.Text;
                int phoneNumber = Convert.ToInt32(txtPhone.Text);
                string userName = txtUsername.Text;
                string password = TextBoxPassword.Text;
                string designation = txtDesignation.Text;

                // Create the SQL query
                string query = @"UPDATE BankTeam 
                             SET FirstName = @FirstName, LastName = @LastName, Email = @Email, 
                                 PhoneNumber = @PhoneNumber, UserName = @UserName, Password = @Password, 
                                 Designation = @Designation
                             WHERE memberId = @MemberId";

                // Create and open the connection
                using (SqlCommand command = new SqlCommand(query, conn))
                {
                    // Add parameters
                    command.Parameters.AddWithValue("@FirstName", firstName);
                    command.Parameters.AddWithValue("@LastName", lastName);
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@PhoneNumber", phoneNumber);
                    command.Parameters.AddWithValue("@UserName", userName);
                    command.Parameters.AddWithValue("@Password", password);
                    command.Parameters.AddWithValue("@Designation", designation);
                    command.Parameters.AddWithValue("@MemberId", memberId);


                    // Execute the query
                    int rowsAffected = command.ExecuteNonQuery();

                    // Check if any rows were affected
                    if (rowsAffected > 0)
                    {
                        HttpContext.Current.Response.Redirect("AdminDashboard.aspx");
                    }
                    else
                    {
                        // Show pop-up message using JavaScript
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();

                string query = @"SELECT FirstName, LastName, Age, gender, Email, PhoneNumber, UserName, Password,  Designation FROM BankTeam WHERE memberId = @memberID";

                SqlCommand command = new SqlCommand(query, conn);
                command.Parameters.AddWithValue("@memberID", TextBox1.Text);

                using (SqlDataReader reader = command.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        string firstname = reader["FirstName"].ToString();
                        string lastname = reader["LastName"].ToString();
                        int age = Convert.ToInt32(reader["Age"]);
                        string gender = reader["gender"].ToString();
                        string email = reader["Email"].ToString();
                        int phoneNumber = Convert.ToInt32(reader["PhoneNumber"]);
                        string userName = reader["UserName"].ToString();
                        string password = reader["Password"].ToString();
                        string designation = reader["Designation"].ToString();

                        txtFirstName.Text = firstname;
                        txtGender.Text = gender;
                        txtLastName.Text = lastname;
                        txtAge.Text = age.ToString();
                        txtEmail.Text = email;
                        txtPhone.Text = phoneNumber.ToString();
                        txtUsername.Text = userName;
                        TextBoxPassword.Text = password;
                        txtDesignation.Text = designation;
                        TextBox1.Enabled = false;
                    }
                    else
                    {
                        Session["ErrorMessage"] = "No record found!";
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
                Session["ErrorMessage"] = "No record found!";
                Response.Redirect(Request.RawUrl);
            }
            finally
            {
                conn.Close();
            }
        }
    }
}