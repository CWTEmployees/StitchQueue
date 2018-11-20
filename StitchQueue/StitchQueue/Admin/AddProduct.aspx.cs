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
using System.IO;

namespace StitchQueue.Admin
{
    public partial class AddProduct : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            var status = '1';
            if (addimg.HasFile)
            {
                string _fileext = Path.GetExtension(addimg.FileName);
                if (_fileext.ToLower() == ".png" || _fileext.ToLower() == ".jpg" || _fileext.ToLower() == ".bmp" || _fileext.ToLower() == ".jpeg")
                {

                    string filename = Path.GetFileName(addimg.FileName);
                    addimg.SaveAs(Server.MapPath("~/images/" + filename));

                    SqlCommand cmd = new SqlCommand("insert into Product (ProductId,ProductName,Price,Images,Status) values (@pId,@pName,@pPrice,@proimg,@sts)", con);

                    cmd.Parameters.AddWithValue("@pId", productid.Text);
                    cmd.Parameters.AddWithValue("@pName", pName.Text);
                    cmd.Parameters.AddWithValue("@pPrice", txtprice.Text);
                    //cmd.Parameters.AddWithValue("@imgname", addimg.FileName);
                    cmd.Parameters.AddWithValue("@proimg", "images/" + addimg.FileName);
                    cmd.Parameters.AddWithValue("@sts", status);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    prodlbl.Text = "Product Added Successfully";
                    prodlbl.ForeColor = System.Drawing.Color.ForestGreen;
                    con.Close();
                }
                else
                {
                    prodlbl.Text = "Select Only .png,.jpeg,.jpg<br/>or.bmp Files";
                    prodlbl.ForeColor = System.Drawing.Color.Red;
                }



            }
        }
    }
}