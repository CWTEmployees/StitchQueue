using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Drawing;

namespace StitchQueue
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void frgpass_Click(object sender, EventArgs e)
        {
            string username = string.Empty;
            string password = string.Empty;
            string dbconnection = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(dbconnection))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT Email_Id,Password FROM Customer_Registration WHERE Email_Id = @Email"))
                {
                    cmd.Parameters.AddWithValue("@Email", email.Text.Trim());
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        if (sdr.Read())
                        {
                            username = sdr["Email_Id"].ToString();
                            password = sdr["Password"].ToString();
                        }
                    }
                    con.Close();
                }
            }
            if (!string.IsNullOrEmpty(password))
            {
                MailMessage mm = new MailMessage();
                mm.From = new MailAddress("cwttest12@gmail.com");
                mm.To.Add(email.Text);
                mm.Subject = "Password Recovery";
                mm.Body = string.Format("Hi {0},<br /><br />Your password is {1}.<br /><br />Thank You.", username, password);
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential();
                NetworkCred.UserName = "cwttest12@gmail.com";
                NetworkCred.Password = "CWT@1234";
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);


                frgpasslbl.Text = "Password Send successfully";
                frgpasslbl.ForeColor = Color.Green;
                //Response.Redirect("LoginPage.aspx");

            }
            else
            {
                frgpasslbl.Text = "Please Enter Registered Email Id";
                frgpasslbl.ForeColor = Color.Red;
                //Response.Write("This email address does not match our records.");
            }
        }
    }
}