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
    public partial class TransactionsHistoryPage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=jarvis-2020.database.windows.net;Initial Catalog=""Bank Management System"";Persist Security Info=True;User ID=jarvis-2020;Password=Mannan2004@;");

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.ClientScript.GetPostBackEventReference(gv, "");

            if (!IsPostBack)
            {
                ShowAllTransactions();
            }
        }

        private void RetrieveAllTransactions()
        {
            conn.Open();

            string query = @"SELECT TransId, TransType, AccId, TransDate 
                 FROM Transactions";

            SqlCommand command = new SqlCommand(query, conn);

            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);

            gv.DataSource = table;
            gv.DataBind();

            conn.Close();
        }

        private void ShowAllTransactions()
        {
            RetrieveAllTransactions();
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

                    String transid;
                    transid = row.Cells[0].Text;
                    String transtype;
                    transtype = row.Cells[1].Text;
                    String accountid;
                    accountid = row.Cells[2].Text;
                    String transdate;
                    transdate = row.Cells[3].Text;

                    conn.Open();

                    string query = @"SELECT Amount FROM Transactions WHERE TransId = @transId";

                    SqlCommand command = new SqlCommand(query, conn);
                    command.Parameters.AddWithValue("@transId", transid);

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            int amount = Convert.ToInt32(reader["Amount"]);

                            AccIDTextBox.Text = accountid;
                            AccIDTextBox.Enabled = false;
                            TextBoxtype.Text = transtype;
                            TextBoxtype.Enabled = false;
                            AmountTextBox.Text = amount.ToString();
                            AmountTextBox.Enabled = false;
                            DateTextBox.Text = transdate;
                            DateTextBox.Enabled = false;
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