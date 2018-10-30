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
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Drawing.Text;
using System.IO;

namespace StitchQueue.UserPanel
{
    public partial class AddSizingProfile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into SizingProfile (EmailId,ProfileName,aroundbust,waist,hips,shoulder,armhole,ankle,thighs,legLength,LastUpdate) values (@email,@profilename,@aroundbust,@waist,@hips,@shoulder,@armhole,@ankle,@thighs,@legLength,@date)", con);

            con.Open();

            cmd.Parameters.AddWithValue("@email", Session["User"].ToString());


            cmd.Parameters.AddWithValue("@profilename", txtProfile.Text);
            cmd.Parameters.AddWithValue("@aroundbust", txtaround_bust.Text);
            cmd.Parameters.AddWithValue("@waist", txtwaist.Text);
            cmd.Parameters.AddWithValue("@hips", txthips.Text);
            cmd.Parameters.AddWithValue("@shoulder", txtshoulder_width.Text);
            cmd.Parameters.AddWithValue("@armhole", txtarm_hole.Text);
            cmd.Parameters.AddWithValue("@ankle", txtankle.Text);
            cmd.Parameters.AddWithValue("@thighs", txtthighs.Text);
            cmd.Parameters.AddWithValue("@legLength", txtleglength.Text);
            cmd.Parameters.AddWithValue("@date", DateTime.Now);
            cmd.ExecuteScalar();


            lblprofile.Text = "Profile Add Successfully";
            lblprofile.ForeColor = Color.Green;
        }
    }
}