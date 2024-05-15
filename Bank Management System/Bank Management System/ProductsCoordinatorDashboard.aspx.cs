using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bank_Management_System
{
    public partial class ProductsCoordinatorDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLoanApplication_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("LoanApplicationPage.aspx");
        }

        protected void btnLoanInfo_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("LoanInformationPage.aspx");
        }

        protected void btnCardApplication_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("CardApplicationPage.aspx");
        }

        protected void btnCardInfo_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("CardInformationPage.aspx");
        }
    }
}