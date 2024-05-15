using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using static System.Net.Mime.MediaTypeNames;


namespace Bank_Management_System
{
    public partial class ViewClientInfoPage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=jarvis-2020.database.windows.net;Initial Catalog=""Bank Management System"";Persist Security Info=True;User ID=jarvis-2020;Password=Mannan2004@;");

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.ClientScript.GetPostBackEventReference(gv, "");

            if (!IsPostBack)
            {
                ShowAllClients();
            }
        }

        private void RetrieveAllClients()
        {
            conn.Open();

            string query = "SELECT ClientId, FirstName, LastName, CNIC FROM Client";
            SqlCommand command = new SqlCommand(query, conn);

            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);

            gv.DataSource = table;
            gv.DataBind();

            conn.Close();
        }

        private void ShowAllClients()
        {
            RetrieveAllClients();
        }

        protected void gv_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(gv, "Select$" + e.Row.RowIndex);
                e.Row.ToolTip = "Click to select this row.";
                e.Row.Style["cursor"] = "pointer";
            }
        }

        protected void gv_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (GridViewRow row in gv.Rows)
            {
                if (row.RowIndex == gv.SelectedIndex)
                {
                    row.BackColor = ColorTranslator.FromHtml("#A1DCF2");
                    row.ToolTip = string.Empty;

                    String clientid;
                    clientid = row.Cells[0].Text;
                    String firstname;
                    firstname = row.Cells[1].Text;
                    String lastname;
                    lastname = row.Cells[2].Text;
                    String cnic;
                    cnic = row.Cells[3].Text;

                    conn.Open();

                    string query = @"SELECT Username, Password, ClientPhoto, DOB, Gender, Age, Address, City, Email, Phone FROM Client WHERE ClientId = @clientid AND FirstName = @firstname AND LastName = @lastname AND CNIC = @cnic";

                    SqlCommand command = new SqlCommand(query, conn);
                    command.Parameters.AddWithValue("@clientid", clientid);
                    command.Parameters.AddWithValue("@firstname", firstname);
                    command.Parameters.AddWithValue("@lastname", lastname);
                    command.Parameters.AddWithValue("@cnic", cnic);

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            int age = Convert.ToInt32(reader["Age"]);
                            string gender = reader["gender"].ToString();
                            DateTime dobDateTime = (DateTime)reader["DOB"];
                            string dobString = dobDateTime.ToString("yyyy-MM-dd");
                            string email = reader["Email"].ToString();
                            int phoneNumber = Convert.ToInt32(reader["Phone"]);
                            string userName = reader["UserName"].ToString();
                            string password = reader["Password"].ToString();
                            string address = reader["Address"].ToString();
                            string city = reader["City"].ToString();
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
                            username.Text = userName;
                            username.Enabled = false;
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
                            Image1.ImageUrl = imageUrl;

                            Image1.Style["width"] = "100%";
                            Image1.Style["height"] = "100%";
                        }
                    }

                    conn.Close();
                }
                else
                {
                    row.BackColor = ColorTranslator.FromHtml("#FFFFFF");
                    row.ToolTip = "Click to select this row.";
                }
            }
        }
    }
}