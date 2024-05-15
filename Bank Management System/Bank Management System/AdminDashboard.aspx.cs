using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bank_Management_System
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClientInfo_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("ViewClientInfoPage.aspx");
        }

        protected void btnAddStaff_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("AddStaffMemberPage.aspx");
        }

        protected void btnRemoveStaff_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("RemoveStaffMemberPage.aspx");
        }

        protected void btnSeeStaff_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("ViewMemberInfoPage.aspx");
        }

        protected void btnUpdateStaff_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("UpdateStaffMemberInfoPage.aspx");
        }

        protected void btnLoanApplications_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("ApplicationsAdminViewPage.aspx");
        }

        protected void btnCheckMessages_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("AdminMessageBoxPage.aspx");
        }
    }
}