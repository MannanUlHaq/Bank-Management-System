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
    public partial class TransferHistoryPage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=jarvis-2020.database.windows.net;Initial Catalog=""Bank Management System"";Persist Security Info=True;User ID=jarvis-2020;Password=Mannan2004@;");

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.ClientScript.GetPostBackEventReference(gv, "");

            if (!IsPostBack)
            {
                ShowAllTransfers();
            }
        }

        private void RetrieveAllTransfers()
        {
            conn.Open();

            // Retrieve ClientId from session
            int clientId = (int)Session["ClientId"];

            string query = @"SELECT TransferID, ToAccID, TransferAmount, TransferDate 
                 FROM MoneyTransfer 
                 JOIN Account ON MoneyTransfer.FromAccID = Account.AccId  
                 WHERE Account.ClientId = @ClientId";

            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("@ClientId", clientId);

            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);

            gv.DataSource = table;
            gv.DataBind();

            conn.Close();
        }

        private void ShowAllTransfers()
        {
            RetrieveAllTransfers();
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
                    String receiverid;
                    receiverid = row.Cells[1].Text;
                    String amount;
                    amount = row.Cells[2].Text;
                    String transferdate;
                    transferdate = row.Cells[3].Text;

                    TextBoxR.Text = receiverid;
                    TextBoxR.Enabled = false;
                    AmountTextBox.Text = amount;
                    AmountTextBox.Enabled = false;
                    transferdateTextBox.Text = transferdate;
                    transferdateTextBox.Enabled = false;
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