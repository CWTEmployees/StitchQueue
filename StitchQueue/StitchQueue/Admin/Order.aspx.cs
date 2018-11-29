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
    public partial class Order : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        

        protected void OrderGrid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            OrderGrid.EditIndex = -1;
        }

        protected void OrderGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {
            OrderGrid.EditIndex = e.NewEditIndex;
        }

        protected void OrderGrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label Oid = OrderGrid.Rows[e.RowIndex].FindControl("lblOrderId") as Label;
            DropDownList OStatus = OrderGrid.Rows[e.RowIndex].FindControl("StatusDrop") as DropDownList;

            SqlCommand cmd = new SqlCommand("Update Orders set OrderStatus=@status where OrderId=@oid", con);
            //String updatedata = "Update Orders set OrderStatus=@status where OrderId=@oid";
            //SqlCommand cmd = new SqlCommand();
            //cmd.CommandText = updatedata;
            //cmd.Connection = con;

            cmd.Parameters.AddWithValue("@oid", Oid.Text);
            cmd.Parameters.AddWithValue("@status", OStatus.SelectedValue);
            


            

            con.Open();
            cmd.ExecuteNonQuery();
            
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            OrderGrid.EditIndex = -1;
            
            OrderGrid.DataSource = dt;
            OrderGrid.DataBind();
            con.Close();
        }

        protected void OrderGrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnshow_Click(object sender, EventArgs e)
        {
            OrderGrid.Visible = true;
            
        }

        

        


       
    }
}