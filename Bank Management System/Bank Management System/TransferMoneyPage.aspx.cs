using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Community.CsharpSqlite.Sqlite3;

namespace Bank_Management_System
{
    public partial class TransferMoneyPage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=jarvis-2020.database.windows.net;Initial Catalog=""Bank Management System"";Persist Security Info=True;User ID=jarvis-2020;Password=Mannan2004@;");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindAccountIdDropDownList();

                if (Session["ErrorMessage"] != null)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('Error', '" + Session["ErrorMessage"].ToString() + "', 'error')", true);
                    Session.Remove("ErrorMessage");
                }
            }
        }

        private void BindAccountIdDropDownList()
        {
            conn.Open();

            int clientId = (int)Session["ClientId"];

            string query = @"SELECT AccId 
                 FROM Account 
                 WHERE ClientId = @ClientId";

            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("@ClientId", clientId);

            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);

            // Assuming adapter is already initialized and table is populated from the database
            AccountIdDropDownList.DataSource = table;
            AccountIdDropDownList.DataTextField = "AccId";
            AccountIdDropDownList.DataValueField = "AccId";
            AccountIdDropDownList.DataBind();

            AccountIdDropDownList.Items.Insert(0, new ListItem("Select Account", ""));
        }

        protected void TransferButton_Click(object sender, EventArgs e)
        {
            if (AccountIdDropDownList.SelectedValue != "" && AccountIdRTextBox.Text != "" && AmountToTransferTextBox.Text != "")
            {
                conn.Open();
                int senderAccountId = Convert.ToInt32(AccountIdDropDownList.SelectedValue);
                int receiverAccountId = Convert.ToInt32(AccountIdRTextBox.Text);
                int transferAmount = Convert.ToInt32(AmountToTransferTextBox.Text);

                // SQL query to check the current balance of the sender account
                string queryCheckSenderBalance = "SELECT Balance FROM Account WHERE AccId = @SenderAccountId";

                // SQL query to update the balances of sender and receiver accounts
                string queryUpdateBalances = "UPDATE Account SET Balance = Balance - @TransferAmount WHERE AccId = @SenderAccountId;" +
                                              "UPDATE Account SET Balance = Balance + @TransferAmount WHERE AccId = @ReceiverAccountId;";

                // SQL query to insert a new record into the MoneyTransfer table
                string queryInsertTransferRecord = "INSERT INTO MoneyTransfer (FromAccID, ToAccID, TransferAmount) VALUES (@SenderAccountId, @ReceiverAccountId, @TransferAmount)";
                SqlTransaction transaction = conn.BeginTransaction();
                try
                {
                    // Check the current balance of the sender account
                    int senderBalance = 0;
                    using (SqlCommand commandCheckSenderBalance = new SqlCommand(queryCheckSenderBalance, conn, transaction))
                    {
                        // Add parameter to command
                        commandCheckSenderBalance.Parameters.AddWithValue("@SenderAccountId", senderAccountId);

                        // Execute the command to get the current balance
                        senderBalance = (int)commandCheckSenderBalance.ExecuteScalar();
                    }

                    // Check if the sender has sufficient balance for the transfer
                    if (transferAmount <= senderBalance)
                    {

                        // Update the balances of sender and receiver accounts
                        using (SqlCommand commandUpdateBalances = new SqlCommand(queryUpdateBalances, conn, transaction))
                        {
                            // Add parameters to command
                            commandUpdateBalances.Parameters.AddWithValue("@TransferAmount", transferAmount);
                            commandUpdateBalances.Parameters.AddWithValue("@SenderAccountId", senderAccountId);
                            commandUpdateBalances.Parameters.AddWithValue("@ReceiverAccountId", receiverAccountId);

                            // Execute the command to update the balances
                            commandUpdateBalances.ExecuteNonQuery();
                        }

                        // Insert a new record into the MoneyTransfer table
                        using (SqlCommand commandInsertTransferRecord = new SqlCommand(queryInsertTransferRecord, conn, transaction))
                        {
                            // Add parameters to command
                            commandInsertTransferRecord.Parameters.AddWithValue("@SenderAccountId", senderAccountId);
                            commandInsertTransferRecord.Parameters.AddWithValue("@ReceiverAccountId", receiverAccountId);
                            commandInsertTransferRecord.Parameters.AddWithValue("@TransferAmount", transferAmount);

                            // Execute the command to insert the transfer record
                            commandInsertTransferRecord.ExecuteNonQuery();
                        }

                        // Commit the transaction if all queries are successful
                        transaction.Commit();
                        conn.Close();
                        HttpContext.Current.Response.Redirect("ClientDashboard.aspx");
                    }
                    else
                    {
                        // Show pop-up message using JavaScript
                        Session["ErrorMessage"] = "Transfer amount is greater than current balance!";
                        Response.Redirect(Request.RawUrl);
                    }
                }
                catch (ThreadAbortException ex)
                {
                    // Handle ThreadAbortException
                    // You might not need to do anything here, as it is usually expected behavior.
                }
                catch (Exception)
                {
                    transaction.Rollback();
                    // Rollback the transaction if an exception occurs
                    // Show pop-up message using JavaScript
                    Session["ErrorMessage"] = "Invalid Sender or Receiver ID!";
                    Response.Redirect(Request.RawUrl);
                }
            }
            else
            {
                Session["ErrorMessage"] = "Fill all the fields!";
                Response.Redirect(Request.RawUrl);
            }
        }
    }
}