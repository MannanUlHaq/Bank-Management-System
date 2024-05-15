using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bank_Management_System
{
    public partial class ClientLoginPage : System.Web.UI.Page
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
            conn.Open();

            string query = "SELECT ClientId, ClientPhoto FROM Client WHERE UserName = @Username AND Password = @Password";

            using (SqlCommand command = new SqlCommand(query, conn))
            {
                command.Parameters.AddWithValue("@Username", txtUsername.Text);
                command.Parameters.AddWithValue("@Password", txtPassword.Text);

                using (SqlDataReader reader = command.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        int clientId = reader.GetInt32(reader.GetOrdinal("ClientId"));
                        byte[] clientPhotoBytes = (byte[])reader["ClientPhoto"];

                        // Store the ClientId and ClientPhoto in session
                        Session["ClientId"] = clientId;
                        Session["ClientPhoto"] = clientPhotoBytes;

                        HttpContext.Current.Response.Redirect("FaceRecognitionPage.aspx");
                    }
                    else
                    {
                        Session["ErrorMessage"] = "Invalid Input! You entered wrong username or password.";
                        Response.Redirect(Request.RawUrl);
                    }
                }
            }
        }
    }
}