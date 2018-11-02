using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;
using System.Net;
using System.Net.Mail;
using System.IO;
using System.Drawing;

namespace StitchQueue
{
    public partial class Fitting : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("select * from Fitting", con);

                cmd.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                fitting.DataSource = dt;
                fitting.DataBind();
                con.Close();
            }
        }

        protected void fitting_ItemCommand(object source, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "fittingcart")
            {
                DropDownList fitlist = (DropDownList)(e.Item.FindControl("dropfitt"));
                Response.Redirect("Cart.aspx?fittid=" + e.CommandArgument.ToString() + "&quantity=" + fitlist.SelectedItem.ToString());
            }
        }
    }
}