using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace StitchQueue.Admin
{
    public partial class Category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void GetmodelCat()
        {
            //DataTable mdt = new DataTable();
            //mdt.Columns.Add("modelId", typeof(int));
            //mdt.Columns.Add("ModelName");
            //mdt.Rows.Add(1, "USA");
            //mdt.Rows.Add(2, "India");
            //drpcountry.DataSource = countrydt;
            //drpcountry.DataTextField = "CountryName";
            //drpcountry.DataValueField = "CountryId";
            //drpcountry.DataBind();
        }

        protected void modelcategory_TextChanged(object sender, EventArgs e)
        {
            //DataTable dt = new DataTable();
            //if (modelcategory.SelectedValue == "Anarkali")
            //{
            //    subcategory.Rows.Add(1, 1, "Alabama");
            //    subcategory.Rows.Add(2, 1, "Arizona");
            //    subcategory.Rows.Add(3, 1, "Alaska");
            //}
        }
    }
}