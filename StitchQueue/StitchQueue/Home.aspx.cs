using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;


namespace StitchQueue
{
    public partial class Home : System.Web.UI.Page
    {
        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    con.Open();

            //    SqlCommand cmd = new SqlCommand("select * from Product", con);

            //    cmd.ExecuteNonQuery();
            //    SqlDataAdapter da = new SqlDataAdapter(cmd);
            //    DataTable dt = new DataTable();
            //    da.Fill(dt);
            //    Data.DataSource = dt;
            //    Data.DataBind();
            //    con.Close();
            //}

        }

        //protected void Data_ItemCommand(object source, ListViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "addtocart")
        //    {
        //        Response.Redirect("Cart.aspx?id=" + e.CommandArgument.ToString());
        //    }
        //}

        
    }
}