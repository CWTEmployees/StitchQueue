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

namespace StitchQueue.Admin
{
    public partial class AddUser : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        //int Active;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string Active = isactive.Checked ? "1" : "0";
            if (checkemail() == true)
            {

                reglbl.Text = "Your Email Already Registered with Us";
                reglbl.ForeColor = Color.Red;
            }
            else
            {
                con.Open();
                
                SqlCommand cmd = new SqlCommand("insert into UserRegistration (FirstName,LastName,FirName,Mobile,AlternativeMobile,EmailId,Address,UserType,isActive) values (@firstname,@lastname,@firmname,@mobile,@alternativmobile,@emailid,@address,@usertype,@isactive)", con);
                cmd.Parameters.AddWithValue("@firstname", txtfirstname.Text);
                cmd.Parameters.AddWithValue("@lastname", txtLastname.Text);
                cmd.Parameters.AddWithValue("@firmname", txtFirmname.Text);
                cmd.Parameters.AddWithValue("@mobile", txtMobile.Text);
                cmd.Parameters.AddWithValue("@alternativmobile", txtalternativcontact.Text);
                cmd.Parameters.AddWithValue("@emailid", txtEmail.Text);
                cmd.Parameters.AddWithValue("@address", txtaddress.Text);
                cmd.Parameters.AddWithValue("@usertype", cat.SelectedValue);
                
                cmd.Parameters.AddWithValue("@isactive", Active);
                cmd.ExecuteScalar();

                reglbl.Text = "Thankyou For Registration";
                reglbl.ForeColor = Color.Green;
            }

        }

        private Boolean checkemail()
        {
            con.Open();
            Boolean emailavailable = false;
            SqlCommand cmd = new SqlCommand("Select * from UserRegistration where EmailId ='" + txtEmail.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                emailavailable = true;
            }
            con.Close();

            return emailavailable;
        }
    }
}