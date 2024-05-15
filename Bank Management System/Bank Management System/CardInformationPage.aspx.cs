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
    public partial class CardInformation : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=jarvis-2020.database.windows.net;Initial Catalog=""Bank Management System"";Persist Security Info=True;User ID=jarvis-2020;Password=Mannan2004@;");

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.ClientScript.GetPostBackEventReference(gv, "");

            if (!IsPostBack)
            {
                ShowAllCards();
            }
        }

        private void RetrieveAllCards()
        {
            conn.Open();

            string query = @"SELECT CardId, AccountID, CardType, Status 
                 FROM DebitCard";

            SqlCommand command = new SqlCommand(query, conn);

            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);

            gv.DataSource = table;
            gv.DataBind();

            conn.Close();
        }

        private void ShowAllCards()
        {
            RetrieveAllCards();
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

                    String cardid;
                    cardid = row.Cells[0].Text;
                    String accountid;
                    accountid = row.Cells[1].Text;
                    String cardtype;
                    cardtype = row.Cells[2].Text;
                    String status;
                    status = row.Cells[3].Text;

                    conn.Open();

                    string query = @"SELECT CardNumber, Pin FROM DebitCard WHERE CardId = @CardId";

                    SqlCommand command = new SqlCommand(query, conn);
                    command.Parameters.AddWithValue("@CardId", cardid);

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            int pin = Convert.ToInt32(reader["Pin"]);
                            string cardnumber = reader["CardNumber"].ToString();

                            CardIdTextBox.Text = cardid;
                            CardIdTextBox.Enabled = false;
                            CardTypeTextBox.Text = cardtype;
                            CardTypeTextBox.Enabled = false;
                            CardNumberTextBox.Text = cardnumber;
                            CardNumberTextBox.Enabled = false;
                            TextBoxPin.Text = pin.ToString();
                            TextBoxPin.Enabled = false;
                            TextBoxStatus.Text = status;
                            TextBoxStatus.Enabled = false;
                            AccountIdTextBox.Text = accountid;
                            AccountIdTextBox.Enabled = false;
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