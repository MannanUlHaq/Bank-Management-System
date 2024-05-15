using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bank_Management_System
{
    public partial class AccountandCardInfoPage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=jarvis-2020.database.windows.net;Initial Catalog=""Bank Management System"";Persist Security Info=True;User ID=jarvis-2020;Password=Mannan2004@;");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowAllAccountandCardDetails();
            }
        }

        private void ShowAllAccount()
        {
            conn.Open();

            string query = @"SELECT AccId, AccType, Balance, Status 
                     FROM Account WHERE ClientId = @ClientId";

            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("@ClientId", (int)Session["ClientId"]);

            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);

            gv.DataSource = table;
            gv.DataBind();

            conn.Close();
        }

        private void ShowAllCards()
        {
            conn.Open();

            string query = @"SELECT DebitCard.CardId, DebitCard.AccountID, DebitCard.CardType, DebitCard.CardNumber, DebitCard.Pin, DebitCard.Status
                     FROM DebitCard JOIN Account ON DebitCard.AccountID = Account.AccId WHERE Account.ClientId = @ClientId";

            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("@ClientId", (int)Session["ClientId"]);

            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);

            GridView1.DataSource = table;
            GridView1.DataBind();

            conn.Close();
        }

        private void ShowAllAccountandCardDetails()
        {
            ShowAllAccount();
            ShowAllCards();
        }
    }
}