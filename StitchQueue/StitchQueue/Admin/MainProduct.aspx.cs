﻿using System;
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
            Label Pid = Product.Rows[e.RowIndex].FindControl("lblId") as Label;

            SqlCommand cmd = new SqlCommand("delete from Product where ProductId= @Pid", con);
            cmd.Parameters.AddWithValue("@Pid", Pid.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            Product.EditIndex = -1;
            Product.DataSource = dt;
            Product.DataBind();
            con.Close();


            FillGridView();


        }

        protected void Product_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            Product.EditIndex = -1;
            FillGridView();
        }

        protected void Product_RowEditing(object sender, GridViewEditEventArgs e)
        {

            Product.EditIndex = e.NewEditIndex;
            FillGridView();

        }

        protected void Product_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label Pid = Product.Rows[e.RowIndex].FindControl("lblId") as Label;
            TextBox Pname = Product.Rows[e.RowIndex].FindControl("txtName") as TextBox;
            TextBox Pprice = Product.Rows[e.RowIndex].FindControl("txtPrice") as TextBox;
            FileUpload fuPhoto = Product.Rows[e.RowIndex].FindControl("image") as FileUpload;




            if(fuPhoto.FileName != "")
            {
                SqlCommand cmd = new SqlCommand("Update Product set ProductName=@pname, Images=@img, Price=@price where ProductId=@pid", con);

                cmd.Parameters.AddWithValue("@pid", Pid.Text);
                cmd.Parameters.AddWithValue("@pname", Pname.Text);
                cmd.Parameters.AddWithValue("@price", Pprice.Text);


                fuPhoto.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(fuPhoto.FileName));
                String Image = "../images/" + Path.GetFileName(fuPhoto.FileName);
                cmd.Parameters.AddWithValue("@img", Image);


                con.Open();
                cmd.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                Product.EditIndex = -1;
                Product.DataSource = dt;
                Product.DataBind();
                con.Close();
            }
            else
            {
                SqlCommand cmd = new SqlCommand("Update Product set ProductName=@pname, Price=@price where ProductId=@pid", con);

                cmd.Parameters.AddWithValue("@pid", Pid.Text);
                cmd.Parameters.AddWithValue("@pname", Pname.Text);
                cmd.Parameters.AddWithValue("@price", Pprice.Text);


                con.Open();
                cmd.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                Product.EditIndex = -1;
                Product.DataSource = dt;
                Product.DataBind();
                con.Close();
            }
            
            FillGridView();





        }

        protected void Product_SelectedIndexChanged(object sender, EventArgs e)
        {

        }




    }
}