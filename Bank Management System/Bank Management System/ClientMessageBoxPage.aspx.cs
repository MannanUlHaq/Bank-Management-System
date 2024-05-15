using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bank_Management_System
{
    public partial class ClientMessageBoxPage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=jarvis-2020.database.windows.net;Initial Catalog=""Bank Management System"";Persist Security Info=True;User ID=jarvis-2020;Password=Mannan2004@;");

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.ClientScript.GetPostBackEventReference(gv, "");

            if (!IsPostBack)
            {
                ShowAllMessages();
            }
        }

        private void RetrieveAllMessages()
        {
            conn.Open();

            string query = @"SELECT MessageBox.MessageID, Client.Email, MessageBox.RequestDate, MessageBox.Status 
                 FROM MessageBox 
                 JOIN Client ON MessageBox.ClientID = Client.ClientId 
                 WHERE Client.ClientId = @ClientId";

            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("@ClientId", (int)Session["ClientId"]);

            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);

            gv.DataSource = table;
            gv.DataBind();

            conn.Close();
        }

        private void ShowAllMessages()
        {
            RetrieveAllMessages();
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

                    String messageid;
                    messageid = row.Cells[0].Text;
                    String email;
                    email = row.Cells[1].Text;
                    String requestdate;
                    requestdate = row.Cells[2].Text;
                    String status;
                    status = row.Cells[3].Text;

                    conn.Open();

                    string query = @"SELECT Message, Reply, ReplyDate FROM MessageBox WHERE messageid = @messageID";

                    SqlCommand command = new SqlCommand(query, conn);
                    command.Parameters.AddWithValue("@messageID", messageid);

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            string message = reader["Message"].ToString();
                            string reply = reader["Reply"].ToString();

                            string replydate = "Null";
                            if (reader["ReplyDate"] != DBNull.Value)
                            {
                                DateTime date = Convert.ToDateTime(reader["ReplyDate"]);
                                replydate = date.ToString("yyyy-MM-dd");
                            }

                            txtRequestDate.Text = requestdate;
                            txtRequestDate.Enabled = false;
                            txtStatus.Text = status;
                            txtStatus.Enabled = false;
                            txtEmailAddress.Text = email;
                            txtEmailAddress.Enabled = false;
                            txtClientsMessage.Text = message;
                            txtClientsMessage.Enabled = false;
                            TextBoxReply.Text = replydate;
                            TextBoxReply.Enabled = false;
                            txtAdminsReply.Text = reply;
                            txtAdminsReply.Enabled = false;
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

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }
    }
}