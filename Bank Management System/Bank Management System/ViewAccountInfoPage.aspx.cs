using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bank_Management_System
{
    public partial class ViewAccountInfoPage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=jarvis-2020.database.windows.net;Initial Catalog=""Bank Management System"";Persist Security Info=True;User ID=jarvis-2020;Password=Mannan2004@;");

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.ClientScript.GetPostBackEventReference(gv, "");

            if (!IsPostBack)
            {
                ShowAllAccounts();
            }
        }

        private void RetrieveAllAccounts()
        {
            conn.Open();

            string query = @"SELECT c.ClientId, c.FirstName, c.LastName, a.AccId 
                 FROM Client c
                 INNER JOIN Account a ON c.ClientId = a.ClientId";

            SqlCommand command = new SqlCommand(query, conn);

            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);

            gv.DataSource = table;
            gv.DataBind();

            conn.Close();
        }

        private void ShowAllAccounts()
        {
            RetrieveAllAccounts();
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
                    String accountid;
                    accountid = row.Cells[3].Text;

                    conn.Open();

                    string query = @"SELECT AccType, Balance, Status FROM Account WHERE AccId = @accountid";

                    SqlCommand command = new SqlCommand(query, conn);
                    command.Parameters.AddWithValue("@accountid", accountid);

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            int balance = Convert.ToInt32(reader["Balance"]);
                            string type = reader["AccType"].ToString();
                            string status = reader["Status"].ToString();

                            TextBoxtype.Text = type;
                            TextBoxtype.Enabled = false;
                            StatusTextBox.Text = status;
                            StatusTextBox.Enabled = false;
                            BalanceTextBox.Text = balance.ToString();
                            BalanceTextBox.Enabled = false;
                            TextAccountId.Text = accountid;
                            TextAccountId.Enabled = false;
                            FirstNameTextBox.Text = firstname;
                            FirstNameTextBox.Enabled = false;
                            LastNameTextBox.Text = lastname;
                            LastNameTextBox.Enabled = false;
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