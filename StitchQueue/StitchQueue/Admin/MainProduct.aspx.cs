using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.DataAccess;
using System.Configuration;
using System.IO;

namespace StitchQueue.Admin
{
    public partial class MainProduct : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Call FillGridView Method
                FillGridView();
            }
        }

        public void FillGridView()
        {
           

                SqlCommand cmd = new SqlCommand("select * from Product", con);
                con.Open();
                cmd.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Product.DataSource = dt;
                Product.DataBind();
                con.Close();

                
            
           
        }

        protected void Product_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            
        }

        protected void Product_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void Product_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void Product_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void Product_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       

       
    }
}