using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bank_Management_System
{
    public partial class TransactionProcessPage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=jarvis-2020.database.windows.net;Initial Catalog=""Bank Management System"";Persist Security Info=True;User ID=jarvis-2020;Password=Mannan2004@;");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["ErrorMessage"] != null)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "swal('Error', '" + Session["ErrorMessage"].ToString() + "', 'error')", true);
                    Session.Remove("ErrorMessage");
                }
            }
        }

        protected void DepositButton_Click(object sender, EventArgs e)
        { 
            if (AccountIDTextBox1.Text != "" && AmountToDepositTextBox.Text != "")
            {
                conn.Open();

                int accountId = Convert.ToInt32(AccountIDTextBox1.Text);
                int amount = Convert.ToInt32(AmountToDepositTextBox.Text);
                if (amount > 0)
                {
                    // SQL query to update the account balance
                    string queryUpdateBalance = "UPDATE Account SET Balance = Balance + @Amount WHERE AccId = @AccId";

                    // SQL query to insert a new transaction record
                    string queryInsertTransaction = "INSERT INTO Transactions (AccId, TransType, Amount) VALUES (@AccId, 'Deposit', @Amount)";

                    // Begin a transaction
                    SqlTransaction transaction = conn.BeginTransaction();

                    try
                    {
                        // Update the account balance
                        using (SqlCommand commandUpdateBalance = new SqlCommand(queryUpdateBalance, conn, transaction))
                        {
                            // Add parameters to command
                            commandUpdateBalance.Parameters.AddWithValue("@Amount", amount);
                            commandUpdateBalance.Parameters.AddWithValue("@AccId", accountId);

                            // Execute the command to update the balance
                            commandUpdateBalance.ExecuteNonQuery();
                        }

                        // Insert a new transaction record
                        using (SqlCommand commandInsertTransaction = new SqlCommand(queryInsertTransaction, conn, transaction))
                        {
                            // Add parameters to command
                            commandInsertTransaction.Parameters.AddWithValue("@AccId", accountId);
                            commandInsertTransaction.Parameters.AddWithValue("@Amount", amount);

                            // Execute the command to insert the transaction record
                            commandInsertTransaction.ExecuteNonQuery();
                        }

                        // Commit the transaction if all queries are successful
                        transaction.Commit();
                        conn.Close();
                        HttpContext.Current.Response.Redirect("TransactionManagerDashboard.aspx");
                    }
                    catch (Exception)
                    {
                        // Rollback the transaction if an exception occurs
                        transaction.Rollback();
                        conn.Close();
                        // Show pop-up message using JavaScript
                        Session["ErrorMessage"] = "Error Occurred!";
                        Response.Redirect(Request.RawUrl);
                    }
                }
                else
                {
                    // Show pop-up message using JavaScript
                    Session["ErrorMessage"] = "Invalid Input!";
                    Response.Redirect(Request.RawUrl);
                }
            }
            else
            {
                Session["ErrorMessage"] = "Fill all the fields!";
                Response.Redirect(Request.RawUrl);
            }
        }

        protected void WithdrawButton_Click(object sender, EventArgs e)
        {
            if (AccountIDTextBox2.Text != "" && AmountToWithdrawTextBox.Text != "")
            {
                conn.Open();

                int accountId = Convert.ToInt32(AccountIDTextBox2.Text);
                int amountToWithdraw = Convert.ToInt32(AmountToWithdrawTextBox.Text);

                // SQL query to check the current balance
                string queryCheckBalance = "SELECT Balance FROM Account WHERE AccId = @AccId";

                // SQL query to update the account balance
                string queryUpdateBalance = "UPDATE Account SET Balance = Balance - @Amount WHERE AccId = @AccId";

                // SQL query to insert a new transaction record
                string queryInsertTransaction = "INSERT INTO Transactions (AccId, TransType, Amount) VALUES (@AccId, 'Withdraw', @Amount)";

                // Create and open connection
                SqlTransaction transaction = conn.BeginTransaction();

                try
                {
                    // Check the current balance
                    int currentBalance;
                    using (SqlCommand commandCheckBalance = new SqlCommand(queryCheckBalance, conn, transaction))
                    {
                        // Add parameters to command
                        commandCheckBalance.Parameters.AddWithValue("@AccId", accountId);

                        // Execute the command to get the current balance
                        currentBalance = (int)commandCheckBalance.ExecuteScalar();
                    }

                    // Check if the amount to withdraw is less than or equal to the current balance
                    if (amountToWithdraw <= currentBalance)
                    {
                        // Update the account balance
                        using (SqlCommand commandUpdateBalance = new SqlCommand(queryUpdateBalance, conn, transaction))
                        {
                            // Add parameters to command
                            commandUpdateBalance.Parameters.AddWithValue("@Amount", amountToWithdraw);
                            commandUpdateBalance.Parameters.AddWithValue("@AccId", accountId);

                            // Execute the command to update the balance
                            commandUpdateBalance.ExecuteNonQuery();
                        }

                        // Insert a new transaction record
                        using (SqlCommand commandInsertTransaction = new SqlCommand(queryInsertTransaction, conn, transaction))
                        {
                            // Add parameters to command
                            commandInsertTransaction.Parameters.AddWithValue("@AccId", accountId);
                            commandInsertTransaction.Parameters.AddWithValue("@Amount", amountToWithdraw);

                            // Execute the command to insert the transaction record
                            commandInsertTransaction.ExecuteNonQuery();
                        }

                        // Commit the transaction if all queries are successful
                        transaction.Commit();
                        conn.Close();

                        HttpContext.Current.Response.Redirect("TransactionManagerDashboard.aspx");
                    }
                    else
                    {
                        conn.Close();
                        Session["ErrorMessage"] = "Amount is greater than current balance!";
                        Response.Redirect(Request.RawUrl);
                    }
                }
                catch (Exception)
                {
                    // Rollback the transaction if an exception occurs
                    transaction.Rollback();
                    conn.Close();
                    // Show pop-up message using JavaScript
                    Session["ErrorMessage"] = "Invalid Input!";
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