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
using System.Net;
using System.Net.Mail;
using System.IO;
using System.Drawing;

namespace StitchQueue
{
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("select * from Product", con);

                cmd.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Data.DataSource = dt;
                Data.DataBind();
                con.Close();
            }

        }

        protected void Data_ItemCommand(object source, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "addtocart")
            {
                Response.Redirect("Cart.aspx?id=" + e.CommandArgument.ToString());
            }
        }

        protected void prData_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("cwttest12@gmail.com");
            msg.To.Add(txtemail.Text);
            msg.Subject = "Customer Message";
            msg.Body = string.Format("{0} {1}.<br/><br/> Email: {2} <br/><br/> PhoneNo: {3}<br/> <br/> Message: {4}<br/> <br/> Thank you", txtfirstname.Text, txtlastname.Text, txtemail.Text, txtphone.Text,txtmsg.Text);
            if (fileimg.HasFile)
            {
                foreach (HttpPostedFile file in fileimg.PostedFiles)
                {
                    string fileName = Path.GetFileName(file.FileName);
                    file.SaveAs(Server.MapPath("~/Email_Images/") + fileName);
                    msg.Attachments.Add(new Attachment(file.InputStream, fileName));
                }
            }
            msg.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            System.Net.NetworkCredential ntwd = new NetworkCredential();
            ntwd.UserName = "cwttest12@gmail.com"; //Your Email ID  
            ntwd.Password = "CWT@1234";              // Your Password  
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = ntwd;
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.Send(msg);
            lblmsg.Text = "Message Sent Successfully";
            lblmsg.ForeColor = System.Drawing.Color.ForestGreen;
        }
    }
}