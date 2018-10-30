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
    public partial class AddressBook : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into CustomerAddress (Email,Firstname,Lastname,Mobile,Address1,Address2,City,State,Country,Zipcode) values (@email,@firstname,@lastname,@mobile,@address1,@address2,@city,@state,@country,@zipcode)", con);


            con.Open();

            cmd.Parameters.AddWithValue("@email", Session["User"].ToString());
            cmd.Parameters.AddWithValue("@firstname", txtfirstname.Text);
            cmd.Parameters.AddWithValue("@lastname", txtsecondname.Text);
            cmd.Parameters.AddWithValue("@mobile", txtMobile.Text);
            cmd.Parameters.AddWithValue("@address1", txtaddress1.Text);
            cmd.Parameters.AddWithValue("@address2", txtaddress2.Text);
            cmd.Parameters.AddWithValue("@city", txtcity.Text);
            cmd.Parameters.AddWithValue("@state", txtstate.Text);
            cmd.Parameters.AddWithValue("@country", txtcountry.Text);
            cmd.Parameters.AddWithValue("@zipcode", txtzip.Text);
            cmd.ExecuteScalar();

            //lbladdress.Text = "";
            //lbladdress.ForeColor = Color.Green;

            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Address Add Successfully');", true);





            txtfirstname.Text = "";
            txtsecondname.Text = "";
            txtMobile.Text = "";
            txtaddress1.Text = "";
            txtaddress2.Text = "";
            txtcity.Text = "";
            txtstate.Text = "";
            txtcountry.Text = "";
            txtzip.Text = "";
            con.Close();
        }
    }
}