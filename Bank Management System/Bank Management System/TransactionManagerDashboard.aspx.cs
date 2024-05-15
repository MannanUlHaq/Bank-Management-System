using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bank_Management_System
{
    public partial class TransactionManagerDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTransactionForm_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("TransactionProcessPage.aspx");
        }

        protected void btnTransactionHistory_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("TransactionsHistoryPage.aspx");
        }
    }
}