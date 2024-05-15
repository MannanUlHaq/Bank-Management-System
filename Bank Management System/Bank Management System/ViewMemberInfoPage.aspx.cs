using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bank_Management_System
{
    public partial class ViewMemberInfoPage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=jarvis-2020.database.windows.net;Initial Catalog=""Bank Management System"";Persist Security Info=True;User ID=jarvis-2020;Password=Mannan2004@;");

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.ClientScript.GetPostBackEventReference(gv, "");

            if (!IsPostBack)
            {
                ShowAllMembers();
            }
        }

        private void RetrieveAllMembers()
        {
            conn.Open();

            string query = "SELECT memberId, FirstName, LastName, Designation FROM BankTeam";
            SqlCommand command = new SqlCommand(query, conn);

            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);

            gv.DataSource = table;
            gv.DataBind();

            conn.Close();
        }

        private void ShowAllMembers()
        {
            RetrieveAllMembers();
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

                    String memberid;
                    memberid = row.Cells[0].Text;
                    String firstname;
                    firstname = row.Cells[1].Text;
                    String LastName;
                    LastName = row.Cells[2].Text;
                    String designation;
                    designation = row.Cells[3].Text;

                    conn.Open();

                    string query = @"SELECT Age, gender, Email, PhoneNumber, UserName, Password FROM BankTeam WHERE memberId = @memberID AND FirstName = @firstname AND LastName = @lastname AND Designation = @designation";

                    SqlCommand command = new SqlCommand(query, conn);
                    command.Parameters.AddWithValue("@memberID", memberid);
                    command.Parameters.AddWithValue("@firstname", firstname);
                    command.Parameters.AddWithValue("@lastname", LastName);
                    command.Parameters.AddWithValue("@designation", designation);

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            int age = Convert.ToInt32(reader["Age"]);
                            string gender = reader["gender"].ToString();
                            string email = reader["Email"].ToString();
                            int phoneNumber = Convert.ToInt32(reader["PhoneNumber"]);
                            string userName = reader["UserName"].ToString();
                            string password = reader["Password"].ToString();

                            txtFirstName.Text = firstname;
                            txtFirstName.Enabled = false;
                            txtGender.Text = gender;
                            txtGender.Enabled = false;
                            txtLastName.Text = LastName;
                            txtLastName.Enabled = false;
                            txtAge.Text = age.ToString();
                            txtAge.Enabled = false;
                            txtEmailAddress.Text = email;
                            txtEmailAddress.Enabled = false;
                            txtPhone.Text = phoneNumber.ToString();
                            txtPhone.Enabled = false;
                            txtUsername.Text = userName;
                            txtUsername.Enabled = false;
                            txtDesignation.Text = designation;
                            txtDesignation.Enabled = false;
                            txtPassword.Text = password;
                            txtPassword.Enabled = false;
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