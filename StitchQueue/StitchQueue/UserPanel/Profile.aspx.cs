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
using System.Globalization;

namespace StitchQueue.UserPanel
{
    public partial class Profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("../Login.aspx");
            }
            else
            {
                con.Open();
                profile();
                con.Close();

            }
        }

        public void profile()
        {
            SqlCommand cmd = new SqlCommand("select * from Customer_Registration where Email_id = '" + Session["User"] + "' ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                lblfirstname.Text = ds.Tables[0].Rows[0]["First_Name"].ToString();
                lbllastname.Text = ds.Tables[0].Rows[0]["Last_Name"].ToString();
                lblgender.Text = ds.Tables[0].Rows[0]["Gender"].ToString();
                //lbldateofbirth.Text = dr["DateofBirth"].ToString(); ;
                lblmobile.Text = ds.Tables[0].Rows[0]["Mobile_No"].ToString();
                lblemail.Text = ds.Tables[0].Rows[0]["Email_Id"].ToString();
                lblcity.Text = ds.Tables[0].Rows[0]["City"].ToString();
                lblcountry.Text = ds.Tables[0].Rows[0]["Country"].ToString();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    lbldateofbirth.Text = DateTime.Parse(reader["DateofBirth"].ToString()).ToString("dd-MM-yyyy");
                }


            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("update Customer_Registration set First_Name ='" + txtfirstname.Text + "',Last_Name='" + txtlastname.Text + "',Gender='" + txtgender.Text + "',DateofBirth='" + txtdateofbirth.Text + "',Mobile_No='" + txtmobile.Text + "',Email_Id='" + txtemail.Text + "',City='" + txtcity.Text + "',Country='" + txtcountry.Text + "' where Email_Id='" + Session["User"] + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Open();
            cmd.Parameters.AddWithValue("@First_Name", txtfirstname.Text);
            cmd.Parameters.AddWithValue("@Last_Name", txtlastname.Text);
            cmd.Parameters.AddWithValue("@Gender", txtgender.Text);
            cmd.Parameters.AddWithValue("@DateofBirth", txtdateofbirth.Text);
            cmd.Parameters.AddWithValue("@Mobile_No", txtmobile.Text);
            cmd.Parameters.AddWithValue("@Email_Id", txtemail.Text);
            cmd.Parameters.AddWithValue("@City", txtcity.Text);
            cmd.Parameters.AddWithValue("@Country", txtcountry.Text);
            
            cmd.ExecuteNonQuery();
            lblupdate.Text = "Update Profile Successfully";
            lblupdate.ForeColor = Color.Green;

            con.Close();


        }

        protected void btnchangpass_Click(object sender, EventArgs e)
        {
            if (checkEmail() == false)
            {
                lblPass.Text = "Your Current Password is wrong";
                lblPass.ForeColor = Color.Red;
            }
            else
            {
                SqlCommand cmd = new SqlCommand("update Customer_Registration set Password='" + txtNewPass.Text + "' where Email_Id='" + Session["User"] + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                

            }

        }

        private Boolean checkEmail()
        {
            Boolean idavailable = false;
            SqlCommand cmd = new SqlCommand("select * from Customer_Registration where Password = '" + txtCurrentPass.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                idavailable = true;
            }
            con.Close();

            return idavailable;
        }
    }
}