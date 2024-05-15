using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bank_Management_System
{
    public partial class UpdateClientInfoPage : System.Web.UI.Page
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
                if (string.IsNullOrEmpty(txtFirstName.Text) ||
                    string.IsNullOrEmpty(txtLastName.Text) ||
                    string.IsNullOrEmpty(txtEmailAddress.Text) ||
                    string.IsNullOrEmpty(txtPhone.Text) ||
                    string.IsNullOrEmpty(txtUsername.Text) ||
                    string.IsNullOrEmpty(txtPassword.Text) ||
                    string.IsNullOrEmpty(txtAddress.Text) ||
                    string.IsNullOrEmpty(txtCity.Text) ||
                    string.IsNullOrEmpty(txtCNIC.Text) ||
                    string.IsNullOrEmpty(Image2.ImageUrl) ||
                    string.IsNullOrEmpty(txtDateOfBirth.Text))
                {
                    // Show error message and exit the method
                    Session["ErrorMessage"] = "All fields are required!";
                    Response.Redirect(Request.RawUrl);
                    return;
                }

                conn.Open();

                int clientId = Convert.ToInt32(TextBox1.Text);
                string firstName = txtFirstName.Text;
                string lastName = txtLastName.Text;
                string email = txtEmailAddress.Text;
                int phoneNumber = Convert.ToInt32(txtPhone.Text);
                string userName = txtUsername.Text;
                string password = txtPassword.Text;
                string address = txtAddress.Text;
                string city = txtCity.Text;
                string cnic = txtCNIC.Text;
                string dob = txtDateOfBirth.Text;

                if (fileUpload1.HasFile)
                {
                    byte[] imageData = fileUpload1.FileBytes;

                    // Create the SQL query
                    string query = @"UPDATE Client 
                     SET FirstName = @FirstName, LastName = @LastName, Email = @Email, 
                         Phone = @PhoneNumber, UserName = @UserName, Password = @Password, 
                         Address = @Address, City = @City, CNIC = @CNIC, DOB = @DOB, ClientPhoto = @ClientPhoto
                     WHERE ClientId = @ClientId"; // Update table name and column names

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
                        command.Parameters.AddWithValue("@Address", address);
                        command.Parameters.AddWithValue("@City", city);
                        command.Parameters.AddWithValue("@CNIC", cnic);
                        command.Parameters.AddWithValue("@DOB", dob);
                        command.Parameters.AddWithValue("@ClientId", clientId);
                        command.Parameters.AddWithValue("@ClientPhoto", imageData);

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
                else
                {
                    string query = @"UPDATE Client 
                     SET FirstName = @FirstName, LastName = @LastName, Email = @Email, 
                         Phone = @PhoneNumber, UserName = @UserName, Password = @Password, 
                         Address = @Address, City = @City, CNIC = @CNIC, DOB = @DOB
                     WHERE ClientId = @ClientId"; // Update table name and column names

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
                        command.Parameters.AddWithValue("@Address", address);
                        command.Parameters.AddWithValue("@City", city);
                        command.Parameters.AddWithValue("@CNIC", cnic);
                        command.Parameters.AddWithValue("@DOB", dob);
                        command.Parameters.AddWithValue("@ClientId", clientId);

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

        protected void txtCity_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();

                string query = @"SELECT FirstName, LastName, DOB, ClientPhoto, Email, Phone, UserName, Password, Address, City, CNIC FROM Client WHERE ClientId = @clientId";

                SqlCommand command = new SqlCommand(query, conn);
                command.Parameters.AddWithValue("@clientId", Convert.ToInt32(TextBox1.Text));

                using (SqlDataReader reader = command.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        string firstname = reader["FirstName"].ToString();
                        string lastname = reader["LastName"].ToString();
                        DateTime dobDateTime = (DateTime)reader["DOB"];
                        string dobString = dobDateTime.ToString("yyyy-MM-dd");
                        string email = reader["Email"].ToString();
                        int phoneNumber = Convert.ToInt32(reader["Phone"]);
                        string userName = reader["UserName"].ToString();
                        string password = reader["Password"].ToString();
                        string address = reader["Address"].ToString();
                        string city = reader["City"].ToString();
                        string cnic = reader["CNIC"].ToString();
                        byte[] imageData = (byte[])reader["ClientPhoto"];

                        txtFirstName.Text = firstname;
                        txtLastName.Text = lastname;
                        txtEmailAddress.Text = email;
                        txtPhone.Text = phoneNumber.ToString();
                        txtUsername.Text = userName;
                        txtPassword.Text = password;
                        txtAddress.Text = address;
                        txtCity.Text = city;
                        txtCNIC.Text = cnic;
                        txtDateOfBirth.Text = dobString;
                        TextBox1.Enabled = false;

                        string base64Image = Convert.ToBase64String(imageData);
                        string imageUrl = "data:image/png;base64," + base64Image;
                        Image2.ImageUrl = imageUrl;
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