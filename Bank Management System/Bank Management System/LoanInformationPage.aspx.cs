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
    public partial class LoanInformationPage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=jarvis-2020.database.windows.net;Initial Catalog=""Bank Management System"";Persist Security Info=True;User ID=jarvis-2020;Password=Mannan2004@;");

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.ClientScript.GetPostBackEventReference(gv, "");

            if (!IsPostBack)
            {
                ShowAllLoans();
            }
        }

        private void RetrieveAllLoans()
        {
            conn.Open();

            string query = @"SELECT LoansId, ClientId, LoanType, Status 
                 FROM Loans";

            SqlCommand command = new SqlCommand(query, conn);

            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);

            gv.DataSource = table;
            gv.DataBind();

            conn.Close();
        }

        private void ShowAllLoans()
        {
            RetrieveAllLoans();
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

                    String loanid;
                    loanid = row.Cells[0].Text;
                    String clientid;
                    clientid = row.Cells[1].Text;
                    String loantype;
                    loantype = row.Cells[2].Text;
                    String status;
                    status = row.Cells[3].Text;

                    conn.Open();

                    string query = @"SELECT Amount, ApprovalDate FROM Loans WHERE LoansId = @loansId";

                    SqlCommand command = new SqlCommand(query, conn);
                    command.Parameters.AddWithValue("@loansId", loanid);

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            int amount = Convert.ToInt32(reader["Amount"]);
                            string dateString = "Null";
                            if (reader["ApprovalDate"] != DBNull.Value)
                            {
                                DateTime date = Convert.ToDateTime(reader["ApprovalDate"]);
                                dateString = date.ToString("yyyy-MM-dd");
                            }

                            LoanIDTextBox.Text = loanid;
                            LoanIDTextBox.Enabled = false;
                            LoanTypeTextBox.Text = loantype;
                            LoanTypeTextBox.Enabled = false;
                            AmountTextBox.Text = amount.ToString();
                            AmountTextBox.Enabled = false;
                            TextBoxdate.Text = dateString;
                            TextBoxdate.Enabled = false;
                            TextBoxstatus.Text = status;
                            TextBoxstatus.Enabled = false;
                            ClientIdTextBox.Text = clientid;
                            ClientIdTextBox.Enabled = false;
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