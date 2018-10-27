using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Text;

namespace StitchQueue
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

 

        protected void login_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select RoleName from Customer_Registration where Email_Id=@email and Password=@password ", con);

                //cmd.Parameters.AddWithValue("@mobileno", emailtxt.Text);
                cmd.Parameters.AddWithValue("@email", emailtxt.Text);
                cmd.Parameters.AddWithValue("@password", passtxt.Text);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    if (dt.Rows[0]["RoleName"].ToString() == "Admin")
                    {
                        Session["Admin"] = emailtxt.Text;
                        Response.Redirect("Admin/PartnerDetails.aspx");
                    }
                    else
                    {
                        Session["User"] = emailtxt.Text;
                        Response.Redirect("Home.aspx");
                    }
                }
                else
                {
                    lgnlbl.Text = "Invalid Username Or Password";
                    lgnlbl.ForeColor = Color.Red;
                }



            }
            finally
            {
                con.Close();
            }
        }

        //protected void cls_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("Home.aspx");
        //}

     



        


    }
}