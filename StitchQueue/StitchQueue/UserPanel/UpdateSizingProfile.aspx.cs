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
using System.Drawing;

namespace StitchQueue.UserPanel
{
    public partial class UpdateSizingProfile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("select * from SizingProfile where Id=" + Request.QueryString["id"], con);
            con.Open();
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();

            txtProfile.Text = ds.Tables[0].Rows[0]["ProfileName"].ToString();
            txtaround_bust.Text = ds.Tables[0].Rows[0]["aroundbust"].ToString();
            txtwaist.Text = ds.Tables[0].Rows[0]["waist"].ToString();
            txthips.Text = ds.Tables[0].Rows[0]["hips"].ToString();
            txtshoulder_width.Text = ds.Tables[0].Rows[0]["shoulder"].ToString();
            txtarm_hole.Text = ds.Tables[0].Rows[0]["armhole"].ToString();
            txtankle.Text = ds.Tables[0].Rows[0]["ankle"].ToString();
            txtthighs.Text = ds.Tables[0].Rows[0]["thighs"].ToString();
            txtleglength.Text = ds.Tables[0].Rows[0]["legLength"].ToString();



            
            
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("update SizingProfile set ProfileName ='" + txtProfile.Text + "',aroundbust='" + txtaround_bust.Text + "',waist='" + txtwaist.Text + "',hips='" + txthips.Text + "',shoulder='" + txtshoulder_width.Text + "',armhole='" + txtarm_hole.Text + "',ankle='" + txtankle.Text + "',thighs='" + txtthighs.Text + "',legLength='" + txtleglength.Text + "',LastUpdate='" + DateTime.Now + "' where Id='" + Request.QueryString["id"] + "'", con);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Open();
            cmd.Parameters.AddWithValue("@ProfileName", txtProfile.Text);
            cmd.Parameters.AddWithValue("@aroundbust", txtaround_bust.Text);
            cmd.Parameters.AddWithValue("@waist", txtwaist.Text);
            cmd.Parameters.AddWithValue("@hips", txthips.Text);
            cmd.Parameters.AddWithValue("@shoulder", txtshoulder_width.Text);
            cmd.Parameters.AddWithValue("@armhole", txtarm_hole.Text);
            cmd.Parameters.AddWithValue("@ankle", txtankle.Text);
            cmd.Parameters.AddWithValue("@thighs", txtthighs.Text);
            cmd.Parameters.AddWithValue("@legLength", txtleglength.Text);
            cmd.Parameters.AddWithValue("@date", DateTime.Now);

            cmd.ExecuteNonQuery();


            lblprofile.Text = "Update Profile Successfully";
            lblprofile.ForeColor = Color.Green;

            con.Close();
        }

       
    }
}