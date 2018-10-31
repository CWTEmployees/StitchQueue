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

namespace StitchQueue
{
    public partial class AddressDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (chkPassport.Checked == false)
            {
                con.Open();

                string isship = "false";
                SqlCommand cmd = new SqlCommand("insert into BillingAddress (Firstname,Lastname,Mobile,Address1,Address2,City,State,Country,Zipcode,isShippingAddress,SFirstname,SLastname,SMobile,SAddress1,SAddress2,SCity,SState,SCountry,SZipcode)values(@firstname,@lastname,@mobile,@address1,@address2,@city,@state,@country,@zip,@IsShip,@sfirstname,@slastname,@smobile,@saddress1,@saddress2,@scity,@sstate,@scountry,@szip)", con);



                cmd.Parameters.AddWithValue("@firstname", firstname.Text);
                cmd.Parameters.AddWithValue("@lastname", lastname.Text);
                cmd.Parameters.AddWithValue("@mobile", phone.Text);
                cmd.Parameters.AddWithValue("@address1", address1.Text);
                cmd.Parameters.AddWithValue("@address2", address2.Text);
                cmd.Parameters.AddWithValue("@city", city.Text);
                cmd.Parameters.AddWithValue("@state", state.Text);
                cmd.Parameters.AddWithValue("@country", country.Text);
                cmd.Parameters.AddWithValue("@zip", zipcode.Text);

                cmd.Parameters.AddWithValue("@IsShip", isship);

                cmd.Parameters.AddWithValue("@sfirstname", firstname.Text);
                cmd.Parameters.AddWithValue("@slastname", lastname.Text);
                cmd.Parameters.AddWithValue("@smobile", phone.Text);
                cmd.Parameters.AddWithValue("@saddress1", address1.Text);
                cmd.Parameters.AddWithValue("@saddress2", address2.Text);
                cmd.Parameters.AddWithValue("@scity", city.Text);
                cmd.Parameters.AddWithValue("@sstate", state.Text);
                cmd.Parameters.AddWithValue("@scountry", country.Text);
                cmd.Parameters.AddWithValue("@szip", zipcode.Text);
                





                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("OrderDetail.aspx");

                
            }
            else
            {
                con.Open();

                string isship = "true";
                SqlCommand cmd = new SqlCommand("insert into BillingAddress (Firstname,Lastname,Mobile,Address1,Address2,City,State,Country,Zipcode,isShippingAddress,SFirstname,SLastname,SMobile,SAddress1,SAddress2,SCity,SState,SCountry,SZipcode)values(@firstname,@lastname,@mobile,@address1,@address2,@city,@state,@country,@zip,@IsShip,@sfirstname,@slastname,@smobile,@saddress1,@saddress2,@scity,@sstate,@scountry,@szip)", con);



                cmd.Parameters.AddWithValue("@firstname", firstname.Text);
                cmd.Parameters.AddWithValue("@lastname", lastname.Text);
                cmd.Parameters.AddWithValue("@mobile", phone.Text);
                cmd.Parameters.AddWithValue("@address1", address1.Text);
                cmd.Parameters.AddWithValue("@address2", address2.Text);
                cmd.Parameters.AddWithValue("@city", city.Text);
                cmd.Parameters.AddWithValue("@state", state.Text);
                cmd.Parameters.AddWithValue("@country", country.Text);
                cmd.Parameters.AddWithValue("@zip", zipcode.Text);

                cmd.Parameters.AddWithValue("@IsShip", isship);

                cmd.Parameters.AddWithValue("@sfirstname", SFirstname.Text);
                cmd.Parameters.AddWithValue("@slastname", SLastname.Text);
                cmd.Parameters.AddWithValue("@smobile", SPhone.Text);
                cmd.Parameters.AddWithValue("@saddress1", SAddress1.Text);
                cmd.Parameters.AddWithValue("@saddress2", SAddress2.Text);
                cmd.Parameters.AddWithValue("@scity", SCity.Text);
                cmd.Parameters.AddWithValue("@sstate", SState.Text);
                cmd.Parameters.AddWithValue("@scountry", SCountry.Text);
                cmd.Parameters.AddWithValue("@szip", SZipcode.Text);






                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("OrderDetail.aspx");
               

            }

            
        }


    }
}