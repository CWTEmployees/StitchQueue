using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace StitchQueue.Admin
{
    public partial class AdminMaster : System.Web.UI.MasterPage
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Admin"]!=null)
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from Customer_Registration where Email_Id = '" + Session["Admin"] + "'", con);
                con.Open();

                DataTable dt = new DataTable();
                da.Fill(dt);
                lblAdminEmail.Text = dt.Rows[0]["Email_Id"].ToString();
                lblAdminName.Text = dt.Rows[0]["First_Name"].ToString();
            }
        }

        protected void lgout_Click(object sender, EventArgs e)
        {
            Session.Remove("Admin");
            Response.Redirect("../Home.aspx");
        }
    }
}