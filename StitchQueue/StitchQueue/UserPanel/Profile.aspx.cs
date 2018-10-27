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
using System.Drawing;

namespace StitchQueue.UserPanel
{
    public partial class Profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["User"] == null)
            //{
            //    Response.Redirect("../LoginPage.aspx");
            //}
            //else
            //{
            //    con.Open();
            //    profile();
            //    con.Close();

            //}
        }

        public void profile()
        {
            //SqlCommand cmd = new SqlCommand("select * from Registration where Email_id = '" + Session["User"] + "' OR Mobile_No = '"+ Session["User"] +"'", con);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
            //if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            //{
            //    lblFirstName.Text = ds.Tables[0].Rows[0]["First_Name"].ToString();
            //    lblLastName.Text = ds.Tables[0].Rows[0]["Last_Name"].ToString();
            //    lblEmail.Text = ds.Tables[0].Rows[0]["Email_Id"].ToString();
            //    lblCountry.Text = ds.Tables[0].Rows[0]["Country"].ToString();
            //    lblCity.Text = ds.Tables[0].Rows[0]["City"].ToString();
            //    lblPhone.Text = ds.Tables[0].Rows[0]["Mobile_No"].ToString();
            //    lblGender.Text = ds.Tables[0].Rows[0]["Gender"].ToString();



            //}
        }
    }
}