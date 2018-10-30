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

namespace StitchQueue.UserPanel
{
    public partial class OrderHistory : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               

              
             





                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("date");
                dt.Columns.Add("ordername");
                dt.Columns.Add("price");
                dt.Columns.Add("status");

                dr = dt.NewRow();
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Orders where Email_Id = '" + Session["User"] + "'", con);
                cmd.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                
                dr["sno"] = ds.Tables[0].Rows[0]["OrderId"].ToString(); ;
                dr["ordername"] = ds.Tables[0].Rows[0]["ProductDes"].ToString();
                
                decimal price = Convert.ToDecimal(ds.Tables[0].Rows[0]["TotalAmount"].ToString());
                decimal value = Math.Round(price, 2);
                dr["price"] = value;
                dr["status"] = ds.Tables[0].Rows[0]["OrderStatus"].ToString();

                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    dr["date"] = DateTime.Parse(reader["OrderDate"].ToString()).ToString("dd-MM-yyyy");
                }


                dt.Rows.Add(dr);
                odrHistory.DataSource = dt;
                odrHistory.DataBind();

                con.Close();

            }
        }
    }
}