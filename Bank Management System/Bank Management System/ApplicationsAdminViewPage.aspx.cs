using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Runtime.Remoting.Metadata.W3cXsd2001;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bank_Management_System
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=jarvis-2020.database.windows.net;Initial Catalog=""Bank Management System"";Persist Security Info=True;User ID=jarvis-2020;Password=Mannan2004@;");

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.ClientScript.GetPostBackEventReference(gv, "");

            if (!IsPostBack)
            {
                ShowAllApplications();
            }
        }

        private void RetrieveAllApplications()
        {
            conn.Open();

            string query = "SELECT LoansId, ClientId, LoanType, Status FROM Loans";
            SqlCommand command = new SqlCommand(query, conn);

            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);

            gv.DataSource = table;
            gv.DataBind();

            conn.Close();
        }

        private void ShowAllApplications()
        {
            RetrieveAllApplications();
        }

        protected void ApproveButton_Click(object sender, EventArgs e)
        {
            if (Session["LoanID"] == null)
                return;

            try
            {
                conn.Open();

                string clientid = TextBoxClientID.Text;
                string loanid = Session["LoanID"] as string;

                // Create the SQL query
                string query = @"UPDATE Loans SET Status = @Approved, ApprovalDate = @date WHERE LoansId = @LoanID AND ClientId = @clientID";

                // Create and open the connection
                using (SqlCommand command = new SqlCommand(query, conn))
                {
                    // Add parameters
                    command.Parameters.AddWithValue("@Approved", "Approved");
                    command.Parameters.AddWithValue("@date", DateTime.Now);
                    command.Parameters.AddWithValue("@LoanID", loanid);
                    command.Parameters.AddWithValue("@clientID", clientid);
                    int rowsAffected = command.ExecuteNonQuery();

                    // Check if any rows were affected
                    if (rowsAffected > 0)
                    {
                        RetrieveAllApplications();
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

        protected void NotApproveButton_Click(object sender, EventArgs e)
        {
            if (Session["LoanID"] == null)
                return;

            try
            {
                conn.Open();

                string clientid = TextBoxClientID.Text;
                string loanid = Session["LoanID"] as string;

                // Create the SQL query
                string query = @"UPDATE Loans SET Status = @NotApproved WHERE LoansId = @LoanID AND ClientId = @clientID";

                // Create and open the connection
                using (SqlCommand command = new SqlCommand(query, conn))
                {
                    // Add parameters
                    command.Parameters.AddWithValue("@NotApproved", "Not Approved");
                    command.Parameters.AddWithValue("@LoanID", loanid);
                    command.Parameters.AddWithValue("@clientID", clientid);
                    int rowsAffected = command.ExecuteNonQuery();

                    // Check if any rows were affected
                    if (rowsAffected > 0)
                    {
                        RetrieveAllApplications();
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

                    string query = @"SELECT Amount FROM Loans WHERE LoansId = @LoanID AND ClientId = @clientID";

                    SqlCommand command = new SqlCommand(query, conn);
                    command.Parameters.AddWithValue("@LoanID", loanid);
                    command.Parameters.AddWithValue("@clientID", clientid);

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            int amount = Convert.ToInt32(reader["Amount"]);

                            Session["LoanID"] = loanid;
                            TextBoxClientID.Text = clientid;
                            TextBoxClientID.Enabled = false;
                            LoanTypeTextBox.Text = loantype;
                            LoanTypeTextBox.Enabled = false;
                            AmountTextBox.Text = amount.ToString();
                            AmountTextBox.Enabled = false;
                        }
                    }

                    string query2 = @"SELECT FirstName, LastName FROM Client WHERE ClientId = @ClientID";

                    SqlCommand command2 = new SqlCommand(query2, conn);
                    command2.Parameters.AddWithValue("@ClientID", clientid);

                    using (SqlDataReader reader = command2.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            string firstname = reader["FirstName"].ToString();
                            string lastname = reader["LastName"].ToString();

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