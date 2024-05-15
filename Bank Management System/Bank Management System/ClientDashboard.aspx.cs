using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bank_Management_System
{
    public partial class ClientDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMoneyTransfer_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("TransferMoneyPage.aspx");
        }

        protected void btnTransferHistory_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("TransferHistoryPage.aspx");
        }

        protected void btnPersonalInfo_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("PersonalInfoPage.aspx");
        }

        protected void btnAccountCardInfo_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("AccountandCardInfoPage.aspx");
        }

        protected void btnCustomerSupport_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("CustomerSupport.aspx");
        }

        protected void btnMessageBox_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("ClientMessageBoxPage.aspx");
        }
    }
}