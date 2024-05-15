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
    public partial class AdminMessageBoxPage : System.Web.UI.Page
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

            string query = "SELECT MessageID, ClientID, RequestDate, Status FROM MessageBox";
            SqlCommand command = new SqlCommand(query, conn);

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
                    String clientid;
                    clientid = row.Cells[1].Text;
                    String requestdate;
                    requestdate = row.Cells[2].Text;
                    String status;
                    status = row.Cells[3].Text;

                    conn.Open();

                    string query = @"SELECT Message, Reply FROM MessageBox WHERE messageid = @messageID AND ClientId = @clientID";

                    SqlCommand command = new SqlCommand(query, conn);
                    command.Parameters.AddWithValue("@messageID", messageid);
                    command.Parameters.AddWithValue("@clientID", clientid);

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            string message = reader["Message"].ToString();
                            string reply = reader["Reply"].ToString();

                            Session["MessageID"] = messageid;
                            Session["ClientID"] = clientid;
                            txtClientsMessage.Text = message;
                            txtClientsMessage.Enabled = false;
                            txtAdminsReply.Text = reply;
                        }
                    }

                    string query2 = @"SELECT FirstName, LastName, Email FROM Client WHERE ClientId = @ClientID";

                    SqlCommand command2 = new SqlCommand(query2, conn);
                    command2.Parameters.AddWithValue("@ClientID", clientid);

                    using (SqlDataReader reader = command2.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            string firstname = reader["FirstName"].ToString();
                            string lastname = reader["LastName"].ToString();
                            string email = reader["Email"].ToString();

                            txtFirstName.Text = firstname;
                            txtFirstName.Enabled = false;
                            txtLastName.Text = lastname;
                            txtLastName.Enabled = false;
                            txtEmailAddress.Text = email;
                            txtEmailAddress.Enabled = false;
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
            if (Session["MessageID"] == null)
                return;

            if (txtAdminsReply.Text == "Waiting for Reply")
                return;

            try
            {
                conn.Open();

                string clientid = Session["ClientID"] as string;
                string messageid = Session["MessageID"] as string;
                string adminreply = txtAdminsReply.Text;

                // Create the SQL query
                string query = @"UPDATE MessageBox SET Reply = @reply, Status = @resolved , ReplyDate = @date WHERE MessageID = @Messageid AND ClientID = @clientID";

                // Create and open the connection
                using (SqlCommand command = new SqlCommand(query, conn))
                {
                    // Add parameters
                    command.Parameters.AddWithValue("@reply", adminreply);
                    command.Parameters.AddWithValue("@resolved", "Resolved");
                    command.Parameters.AddWithValue("@date", DateTime.Now);
                    command.Parameters.AddWithValue("@Messageid", messageid);
                    command.Parameters.AddWithValue("@clientID", clientid);
                    int rowsAffected = command.ExecuteNonQuery();

                    // Check if any rows were affected
                    if (rowsAffected > 0)
                    {
                        RetrieveAllMessages();
                    }
                    else
                    {
                        // Show pop-up message using JavaScript
                        Session["ErrorMessage"] = "Invalid Input!";
                        Response.Redirect(Request.RawUrl);
                    }
                }
            }
            catch (ThreadAbortException ex)
            {
                // Handle ThreadAbortException
                // You might not need to do anything here, as it is usually expected behavior.
            }
            catch (Exception ex)
            {
                // Handle the exception
                Session["ErrorMessage"] = "Invalid Input!";
                Response.Redirect(Request.RawUrl);
            }
            finally
            {
                conn.Close();
            }
        }
    }
}