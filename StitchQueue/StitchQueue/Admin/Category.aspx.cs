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
    public partial class Category : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            //if (!IsPostBack)
            //{
            //    GetModel();
            //}
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (checkemail() == true)
            {

                lblmodel.Text = "Id Already Registered with Us";
                lblmodel.ForeColor = Color.Red;

            }
            else
            {
                if (img1.HasFile && img2.HasFile)
                {
                    con.Open();
                    string filename1 = Path.GetFileName(img1.FileName);
                    img1.SaveAs(Server.MapPath("~/Admin/images/" + filename1));

                    string filename2 = Path.GetFileName(img2.FileName);
                    img2.SaveAs(Server.MapPath("~/Admin/images/" + filename2));

                    int sts = 1;
                    SqlCommand cmd = new SqlCommand("insert into Product (ProductId,ProductName,Images,Images2,Price,Status) values (@pid,@pname,@pimg1,@pimg2,@price,@status)", con);
                    cmd.Parameters.AddWithValue("@pid", modelid.Text);
                    cmd.Parameters.AddWithValue("@pname", modelname.Text);
                    cmd.Parameters.AddWithValue("@pimg1", "images/" + img1.FileName);
                    cmd.Parameters.AddWithValue("@pimg2", "images/" + img2.FileName);
                    cmd.Parameters.AddWithValue("@price", price.Text);
                    cmd.Parameters.AddWithValue("@status", sts);
                    cmd.ExecuteScalar();

                    lblmodel.Text = "Product Add Successfully";
                    lblmodel.ForeColor = Color.Green;

                    con.Close();
                }







            }
        }



        private Boolean checkemail()
        {
            con.Open();
            Boolean idavailable = false;
            SqlCommand cmd = new SqlCommand("Select * from Product where ProductId ='" + modelid.Text + "'", con);
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

        //private void GetModel()
        //{
        //    DataTable Modeldt = new DataTable();
        //    Modeldt.Columns.Add("ModelId", typeof(int));
        //    Modeldt.Columns.Add("ModelName");
        //    Modeldt.Rows.Add(0, "Select Model");
        //    Modeldt.Rows.Add(1, "Blouse");
        //    Modeldt.Rows.Add(2, "Anarkli");
        //    Modeldt.Rows.Add(3, "Kurti");
        //    Modeldt.Rows.Add(4, "Bottom");
        //    Modeldt.Rows.Add(5, "Salwar");
        //    Modeldt.Rows.Add(6, "Embroidery");

        //    drpModel.DataSource = Modeldt;
        //    drpModel.DataTextField = "ModelName";
        //    drpModel.DataValueField = "ModelId";
        //    drpModel.DataBind();
        //}

        //protected void drpModel_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    if (int.Parse(drpModel.SelectedValue) > 0)
        //    {
        //        divSubModel.Visible = true;
        //        DataTable SubModeldt = new DataTable();
        //        SubModeldt.Columns.Add("SubModelId", typeof(int));
        //        SubModeldt.Columns.Add("ModelId", typeof(int));
        //        SubModeldt.Columns.Add("SubModelName");

        //        if (drpModel.SelectedValue == "1")
        //        {

        //            SubModeldt.Rows.Add(1, 1, "Front");
        //            SubModeldt.Rows.Add(2, 1, "Back");
        //            SubModeldt.Rows.Add(3, 1, "Sleeve");
        //        }

        //        if (drpModel.SelectedValue == "2")
        //        {
        //            SubModeldt.Rows.Add(4, 2, "Dress Model");

        //        }

        //        if (drpModel.SelectedValue == "3")
        //        {
        //            SubModeldt.Rows.Add(5, 2, "Front");
        //            SubModeldt.Rows.Add(6, 2, "Back");
        //            SubModeldt.Rows.Add(7, 2, "Sleeve");
        //        }

        //        if (drpModel.SelectedValue == "4")
        //        {
        //            SubModeldt.Rows.Add(8, 2, "Bottoms");

        //        }

        //        if (drpModel.SelectedValue == "5")
        //        {
        //            SubModeldt.Rows.Add(9, 2, "Front");
        //            SubModeldt.Rows.Add(10, 2, "Back");
        //            SubModeldt.Rows.Add(11, 2, "Sleeve");
        //            SubModeldt.Rows.Add(12, 2, "Bottoms");
        //        }

        //        if (drpModel.SelectedValue == "6")
        //        {
        //            SubModeldt.Rows.Add(13, 2, "Dress Model");

        //        }
        //        drpSubModel.DataSource = SubModeldt;
        //        drpSubModel.DataTextField = "SubModelName";
        //        drpSubModel.DataValueField = "SubModelId";
        //        drpSubModel.DataBind();
        //    }

        //}






    }
}