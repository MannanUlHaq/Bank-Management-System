using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bank_Management_System
{
    public partial class AdminLoginPage : System.Web.UI.Page
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

            string query = "SELECT COUNT(*) FROM BankTeam WHERE UserName = @Username AND Password = @Password AND Designation = 'Admin'";

            using (SqlCommand command = new SqlCommand(query, conn))
            {
                command.Parameters.AddWithValue("@Username", txtUsername.Text);
                command.Parameters.AddWithValue("@Password", txtPassword.Text);

                int count = (int)command.ExecuteScalar();

                if (count > 0)
                {
                    HttpContext.Current.Response.Redirect("AdminDashboard.aspx");
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