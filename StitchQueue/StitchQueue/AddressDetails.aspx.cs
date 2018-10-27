using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StitchQueue
{
    public partial class AddressDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ship_CheckedChanged(object sender, EventArgs e)
        {
            if(ship.Checked)
            {
                firstname.Text = SFirstname.Text;
                lastname.Text = SLastname.Text;
                address1.Text = SAddress1.Text;
                address2.Text = SAddress2.Text;
                city.Text = SCity.Text;
                state.Text = SState.Text;
                zipcode.Text = SZipcode.Text;
                country.Text = SCountry.Text;
                phone.Text = SPhone.Text;
            }
        }
    }
}