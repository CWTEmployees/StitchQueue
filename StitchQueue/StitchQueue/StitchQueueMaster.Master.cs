using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Drawing;
using System.IO;
using System.Drawing.Imaging;
using System.Web.Services;

namespace StitchQueue
{
    public partial class StitchQueueMaster : System.Web.UI.MasterPage
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            if (dt != null)
            {

                clbl.Text = dt.Rows.Count.ToString();
            }
            else
            {
                clbl.Text = "0";

            }

            if (Session["User"] != null)
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from Customer_Registration where Email_Id = '" + Session["User"] + "'", con);
                con.Open();

                DataTable dt1 = new DataTable();
                da.Fill(dt1);
                lblUser.Text = "Hii " + dt1.Rows[0]["First_Name"].ToString();
                con.Close();

            }
            

        }

        protected void btnlgt_Click(object sender, EventArgs e)
        {
            Session.Remove("User");
            Response.Redirect("Home.aspx");
        }

        //protected void lgout_Click(object sender, EventArgs e)
        //{
        //    Session.Remove("User");
        //    Response.Redirect("Home.aspx");
        //}
    }
}