﻿using System;
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
    public partial class Cart : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("productid");
                dt.Columns.Add("img");
                dt.Columns.Add("img2");
                dt.Columns.Add("pname");
                dt.Columns.Add("price");
                dt.Columns.Add("totalprice");


                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {
                        dr = dt.NewRow();
                        con.Open();
                        SqlCommand cmd = new SqlCommand("select * from Product where ProductId=" + Request.QueryString["id"], con);
                        cmd.ExecuteNonQuery();
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        con.Close();
                        dr["sno"] = 1;
                        dr["productid"] = ds.Tables[0].Rows[0]["ProductId"].ToString();
                        dr["img"] = ds.Tables[0].Rows[0]["Images"].ToString();
                        dr["img2"] = ds.Tables[0].Rows[0]["Images2"].ToString();
                        dr["pname"] = ds.Tables[0].Rows[0]["ProductName"].ToString();

                        //dr["price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                        decimal price = Convert.ToDecimal(ds.Tables[0].Rows[0]["Price"].ToString());
                        decimal value = Math.Round(price, 2);
                        dr["price"] = value;

                        

                        dt.Rows.Add(dr);
                        product.DataSource = dt;
                        product.DataBind();
                        Session["buyitems"] = dt;
                        product.FooterRow.Cells[4].Text = "Total Amount";
                        product.FooterRow.Cells[5].Text = grandtotal().ToString();
                        
                        Response.Redirect("Cart.aspx");
                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;
                        dr = dt.NewRow();
                        con.Open();
                        SqlCommand cmd = new SqlCommand("select * from Product where ProductId=" + Request.QueryString["id"], con);
                        cmd.ExecuteNonQuery();
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        con.Close();
                        dr["sno"] = sr + 1;
                        dr["productid"] = ds.Tables[0].Rows[0]["ProductId"].ToString();
                        dr["img"] = ds.Tables[0].Rows[0]["Images"].ToString();
                        dr["img2"] = ds.Tables[0].Rows[0]["Images2"].ToString();
                        dr["pname"] = ds.Tables[0].Rows[0]["ProductName"].ToString();

                        decimal price = Convert.ToDecimal(ds.Tables[0].Rows[0]["Price"].ToString());
                        decimal value = Math.Round(price, 2);
                        dr["price"] = value;


                        


                        dt.Rows.Add(dr);
                        product.DataSource = dt;
                        product.DataBind();
                        Session["buyitems"] = dt;
                        product.FooterRow.Cells[4].Text = "Total Amount";
                        product.FooterRow.Cells[5].Text = grandtotal().ToString();
                        
                        Response.Redirect("Cart.aspx");
                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    product.DataSource = dt;
                    product.DataBind();
                    if (product.Rows.Count > 0)
                    {
                        product.FooterRow.Cells[4].Text = "Total Amount";
                        product.FooterRow.Cells[5].Text = grandtotal().ToString();
                    }
                }

            }
        }

        public decimal grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            decimal gtotal = 0;
            while (i < nrow)
            {
                gtotal = gtotal + Convert.ToDecimal(dt.Rows[i]["price"].ToString());

                i = i + 1;
            }
            return gtotal;
        }

       

        protected void product_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];

            for (int i = 0; i <= dt.Rows.Count-1 ; i++)
            {
                int sr;
                int sr1;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = product.Rows[e.RowIndex].Cells[0];
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(sr);

                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    break;
                }
            }

            for (int i = 1 ; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i-1]["sno"] = i;
                dt.AcceptChanges();
            }
            Session["buyitems"] = dt;
            Response.Redirect("Cart.aspx");
        }
    }
}