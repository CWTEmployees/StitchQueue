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
    public partial class ChangePassword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnchangpass_Click(object sender, EventArgs e)
        {
            if(checkEmail()== false)
            {
                lblPass.Text = "Your Current Password is wrong";
                lblPass.ForeColor = Color.Red;
            }
            else
            {
                SqlCommand cmd = new SqlCommand("update Registration set Password='"+txtNewPass.Text+"' where Email_Id='"+Session["User"]+"'",con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                lblPass.Text = "Your Password Change Successfully!!!";
                lblPass.ForeColor = Color.Green;

            }
        }

        private Boolean checkEmail()
        {
            Boolean idavailable = false;
            SqlCommand cmd = new SqlCommand("select * from Registration where Password = '" + txtCurrentPass.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if(ds.Tables[0].Rows.Count > 0)
            {
                idavailable = true;
            }
            con.Close();

            return idavailable;
        }
    }
}