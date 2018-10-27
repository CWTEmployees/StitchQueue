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


namespace StitchQueue
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillCapctha();
            }

        }
        void FillCapctha()
        {
            try
            {
                Random random = new Random();
                string combination = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
                StringBuilder captcha = new StringBuilder();
                for (int i = 0; i < 6; i++)
                {
                    captcha.Append(combination[random.Next(combination.Length)]);
                }
                Session["captcha"] = captcha.ToString();
                imgCaptcha.ImageUrl = "Captcha.aspx?" + DateTime.Now.Ticks.ToString();

            }
            catch
            {
                throw;
            }
        }
        

      

        private Boolean checkemail()
        {
            con.Open();
            Boolean emailavailable = false;
            SqlCommand cmd = new SqlCommand("Select * from Customer_Registration where Email_Id ='" + email.Text + "'", con);
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

        protected void refershbtn_Click(object sender, EventArgs e)
        {
            FillCapctha();
        }

        protected void reg_Click(object sender, EventArgs e)
        {
            if (checkemail() == true)
            {

                reglbl.Text = "Your Email Already Registered with Us";
                reglbl.ForeColor = Color.Red;
                captchtxt.Text = "";
            }
            else
            {
                con.Open();

                if (Session["captcha"].ToString() != captchtxt.Text)
                {
                    reglbl.Text = "Your Enter Wrong Captcha";
                    reglbl.ForeColor = Color.Red;
                }
                else
                {
                    SqlCommand cmd = new SqlCommand("insert into Customer_Registration (First_Name,Last_Name,Mobile_No,Email_Id,Password) values ('" + firstname.Text + "','" + lastname.Text + "','" + mobile.Text + "','" + email.Text + "','" + password.Text + "')", con);
                    cmd.Parameters.AddWithValue("@First_Name", firstname.Text);
                    cmd.Parameters.AddWithValue("@Last_Name", lastname.Text);
                    cmd.Parameters.AddWithValue("@Mobile_No", mobile.Text);
                    cmd.Parameters.AddWithValue("@Email_Id", email.Text);
                    cmd.Parameters.AddWithValue("@Password", password.Text);
                    cmd.ExecuteScalar();

                    reglbl.Text = "Thankyou For Registration";
                    reglbl.ForeColor = Color.Green;







                    firstname.Text = "";
                    lastname.Text = "";
                    mobile.Text = "";
                    email.Text = "";
                    password.Text = "";
                    CPassword.Text = "";
                    captchtxt.Text = "";
                }
            }
        }

      


    }
}