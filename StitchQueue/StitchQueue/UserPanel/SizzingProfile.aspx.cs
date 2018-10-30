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

namespace StitchQueue.UserPanel
{
    public partial class SizzingProfile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("select * from SizingProfile", con);

                cmd.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                sizingProfile.DataSource = dt;
                sizingProfile.DataBind();
                con.Close();
            }
        }

        protected void sizingProfile_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "EditSizing")
            {
                Response.Redirect("UpdateSizingProfile.aspx?id=" + e.CommandArgument.ToString());
            }
        }
    }
}