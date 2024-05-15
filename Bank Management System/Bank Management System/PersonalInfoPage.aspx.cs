using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bank_Management_System
{
    public partial class PersonalInfoPage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=jarvis-2020.database.windows.net;Initial Catalog=""Bank Management System"";Persist Security Info=True;User ID=jarvis-2020;Password=Mannan2004@;");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowPersonalInfo();
            }
        }

        private void RetrievePersonalInfo()
        {
            conn.Open();

            string query = @"SELECT FirstName, LastName, UserName, Password, ClientPhoto, DOB, Gender, Age, Address, City, Email, Phone, CNIC FROM Client WHERE ClientId = @clientid";

            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("@clientid", (int)Session["ClientId"]);

            using (SqlDataReader reader = command.ExecuteReader())
            {
                if (reader.Read())
                {
                    string firstname = reader["FirstName"].ToString();
                    string lastname = reader["LastName"].ToString();
                    string username = reader["UserName"].ToString();
                    string password = reader["Password"].ToString();
                    DateTime dobDateTime = (DateTime)reader["DOB"];
                    string dobString = dobDateTime.ToString("yyyy-MM-dd");
                    string gender = reader["Gender"].ToString();
                    int age = Convert.ToInt32(reader["Age"]);
                    string address = reader["Address"].ToString();
                    string city = reader["City"].ToString();
                    string email = reader["Email"].ToString();
                    int phoneNumber = Convert.ToInt32(reader["Phone"]);
                    string cnic = reader["gender"].ToString();
                    byte[] imageData = (byte[])reader["ClientPhoto"];

                    txtGender.Text = gender;
                    txtGender.Enabled = false;
                    txtAge.Text = age.ToString();
                    txtAge.Enabled = false;
                    txtFirstName.Text = firstname;
                    txtFirstName.Enabled = false;
                    txtLastName.Text = lastname;
                    txtLastName.Enabled = false;
                    txtEmailAddress.Text = email;
                    txtEmailAddress.Enabled = false;
                    txtPhone.Text = phoneNumber.ToString();
                    txtPhone.Enabled = false;
                    txtUsername.Text = username;
                    txtUsername.Enabled = false;
                    txtPassword.Text = password;
                    txtPassword.Enabled = false;
                    txtAddress.Text = address;
                    txtAddress.Enabled = false;
                    txtCity.Text = city;
                    txtCity.Enabled = false;
                    txtCNIC.Text = cnic;
                    txtCNIC.Enabled = false;
                    txtDateOfBirth.Text = dobString;
                    txtDateOfBirth.Enabled = false;

                    string base64Image = Convert.ToBase64String(imageData);
                    string imageUrl = "data:image/png;base64," + base64Image;
                    Image2.ImageUrl = imageUrl;

                    Image2.Style["width"] = "100%";
                    Image2.Style["height"] = "100%";
                }
            }

            conn.Close();
        }

        private void ShowPersonalInfo()
        {
            RetrievePersonalInfo();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}