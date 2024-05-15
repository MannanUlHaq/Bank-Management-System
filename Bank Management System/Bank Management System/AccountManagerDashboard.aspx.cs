using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bank_Management_System
{
    public partial class AccountManagerDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddClient_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("AddClientPage.aspx");
        }

        protected void btnRemoveClient_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("RemoveClientPage.aspx");
        }

        protected void btnSeeClient_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("ViewClientInfoPage.aspx");
        }

        protected void btnUpdateClient_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("UpdateClientInfoPage.aspx");
        }

        protected void btnCreateAccount_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("CreateAccountPage.aspx");
        }

        protected void btnViewAccounts_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("ViewAccountInfoPage.aspx");
        }
    }
}