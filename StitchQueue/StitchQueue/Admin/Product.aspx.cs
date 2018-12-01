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
    public partial class Product : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetModel();
            }
        }

        public void FillGridView()
        {

            SqlCommand cmd = new SqlCommand("SELECT Design.DesignId,Product.ProductId,Design.DesignName,Design.StyleName,Design.Price,Design.Images FROM Design LEFT JOIN Product ON Design.ProductId = Product.ProductId where Design.DesignName=@DesignName And Product.ProductId=@ProductId", con);



            con.Open();

            cmd.Parameters.AddWithValue("@ProductId", drpModel.SelectedValue);
            cmd.Parameters.AddWithValue("@DesignName", drpSubModel.SelectedValue);

            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DesignGrid.DataSource = dt;
            DesignGrid.DataBind();
            con.Close();
        }

        

        private void GetModel()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Product", con);
            cmd.CommandType = CommandType.Text;
            drpModel.DataSource = cmd.ExecuteReader();
            drpModel.DataTextField = "ProductName";
            drpModel.DataValueField = "ProductId";
            drpModel.DataBind();
            drpModel.Items.Insert(0, new ListItem("--Selet Model--", "0"));





            //DataTable Modeldt = new DataTable();
            //Modeldt.Columns.Add("ModelId", typeof(int));
            //Modeldt.Columns.Add("ModelName");
            //Modeldt.Rows.Add(0, "Select Model");
            //Modeldt.Rows.Add(1, "Blouse");
            //Modeldt.Rows.Add(2, "Anarkli");
            //Modeldt.Rows.Add(3, "Kurti");
            //Modeldt.Rows.Add(4, "Bottom");
            //Modeldt.Rows.Add(5, "Salwar");
            //Modeldt.Rows.Add(6, "Embroidery");

            //drpModel.DataSource = Modeldt;
            //drpModel.DataTextField = "ModelName";
            //drpModel.DataValueField = "ModelId";
            //drpModel.DataBind();
        }

        protected void drpModel_SelectedIndexChanged(object sender, EventArgs e)
        {
            int drpModelId = Convert.ToInt32(drpModel.SelectedValue);
            con.Open();
            SqlCommand cmd = new SqlCommand("select DISTINCT DesignName  from Design where ProductId =" + drpModelId, con);
            cmd.CommandType = CommandType.Text;
            drpSubModel.DataSource = cmd.ExecuteReader();
            drpSubModel.DataTextField = "DesignName";
            //drpSubModel.DataValueField = "DesignId";
            drpSubModel.DataBind();
            drpSubModel.Items.Insert(0, new ListItem("--Select Submodel--", "0"));


            //if (int.Parse(drpModel.SelectedValue) > 0)
            //{
            //    DataTable SubModeldt = new DataTable();
            //    SubModeldt.Columns.Add("SubModelId", typeof(int));
            //    SubModeldt.Columns.Add("ModelId", typeof(int));
            //    SubModeldt.Columns.Add("SubModelName");



            //    if (drpModel.SelectedValue == "1")
            //    {

            //        SubModeldt.Rows.Add(1, 1, "Front");
            //        SubModeldt.Rows.Add(2, 1, "Back");
            //        SubModeldt.Rows.Add(3, 1, "Sleeve");
            //        SubModeldt.Rows.Add(4, 1, "AddOn");
            //    }

            //    if (drpModel.SelectedValue == "2")
            //    {
            //        SubModeldt.Rows.Add(5, 2, "Dress Model");
            //        SubModeldt.Rows.Add(6, 2, "AddOn");

            //    }

            //    if (drpModel.SelectedValue == "3")
            //    {
            //        SubModeldt.Rows.Add(7, 3, "Front");
            //        SubModeldt.Rows.Add(8, 3, "Back");
            //        SubModeldt.Rows.Add(9, 3, "Sleeve");
            //        SubModeldt.Rows.Add(10, 3, "AddOn");
            //    }

            //    if (drpModel.SelectedValue == "4")
            //    {
            //        SubModeldt.Rows.Add(11, 4, "Bottoms");
            //        SubModeldt.Rows.Add(12, 4, "AddOn");
            //    }

            //    if (drpModel.SelectedValue == "5")
            //    {
            //        SubModeldt.Rows.Add(13, 5, "Front");
            //        SubModeldt.Rows.Add(14, 5, "Back");
            //        SubModeldt.Rows.Add(15, 5, "Sleeve");
            //        SubModeldt.Rows.Add(16, 5, "Bottoms");
            //        SubModeldt.Rows.Add(17, 5, "AddOn");
            //    }

            //    if (drpModel.SelectedValue == "6")
            //    {
            //        SubModeldt.Rows.Add(18, 6, "Dress Model");
            //        SubModeldt.Rows.Add(19, 6, "AddOn");

            //    }
            //    drpSubModel.DataSource = SubModeldt;
            //    drpSubModel.DataTextField = "SubModelName";
            //    drpSubModel.DataValueField = "SubModelId";
            //    drpSubModel.DataBind();
            //}
        }

        protected void btnshow_Click(object sender, EventArgs e)
        {
            DesignGrid.Visible = true;
            FillGridView();
        }

        protected void DesignGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label DesignId = DesignGrid.Rows[e.RowIndex].FindControl("lblDesignId") as Label;

            SqlCommand cmd = new SqlCommand("delete from Design where DesignId= @DesignId", con);
            cmd.Parameters.AddWithValue("@DesignId", DesignId.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            DesignGrid.EditIndex = -1;
            DesignGrid.DataSource = dt;
            DesignGrid.DataBind();
            con.Close();

            FillGridView();
        }

        protected void DesignGrid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            DesignGrid.EditIndex = -1;
            FillGridView();
        }

        protected void DesignGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {
            DesignGrid.EditIndex = e.NewEditIndex;
            FillGridView();
        }

        protected void DesignGrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label Did = DesignGrid.Rows[e.RowIndex].FindControl("lblDesignId") as Label;
            Label Dname = DesignGrid.Rows[e.RowIndex].FindControl("lblDesignName") as Label;
            TextBox Dstylename = DesignGrid.Rows[e.RowIndex].FindControl("txtStyleName") as TextBox;
            TextBox Pprice = DesignGrid.Rows[e.RowIndex].FindControl("txtPrice") as TextBox;
            FileUpload fuPhoto = DesignGrid.Rows[e.RowIndex].FindControl("image") as FileUpload;




            if (fuPhoto.FileName != "")
            {
                SqlCommand cmd = new SqlCommand("Update Design set DesignName=@Dname,StyleName=@Dstylename, Images=@img, Price=@price where DesignId=@Did", con);

                cmd.Parameters.AddWithValue("@Did", Did.Text);
                cmd.Parameters.AddWithValue("@Dname", Dname.Text);
                cmd.Parameters.AddWithValue("@Dstylename", Dstylename.Text);
                cmd.Parameters.AddWithValue("@price", Pprice.Text);


                fuPhoto.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(fuPhoto.FileName));
                String Image = "../images/" + Path.GetFileName(fuPhoto.FileName);
                cmd.Parameters.AddWithValue("@img", Image);


                con.Open();
                cmd.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                DesignGrid.EditIndex = -1;
                DesignGrid.DataSource = dt;
                DesignGrid.DataBind();
                con.Close();
            }
            else
            {
                SqlCommand cmd = new SqlCommand("Update Design set DesignName=@Dname,StyleName=@Dstylename, Price=@price where DesignId=@Did", con);

                cmd.Parameters.AddWithValue("@Did", Did.Text);
                cmd.Parameters.AddWithValue("@Dname", Dname.Text);
                cmd.Parameters.AddWithValue("@Dstylename", Dstylename.Text);
                cmd.Parameters.AddWithValue("@price", Pprice.Text);


                con.Open();
                cmd.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                DesignGrid.EditIndex = -1;
                DesignGrid.DataSource = dt;
                DesignGrid.DataBind();
                con.Close();
            }

            FillGridView();
        }

        protected void DesignGrid_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}