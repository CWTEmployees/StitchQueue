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

            if (!IsPostBack)
            {
                GetModel();
            }
        }

        private void GetModel()
        {
            //con.Open();
            //SqlCommand cmd = new SqlCommand("select * from Product", con);
            //cmd.CommandType = CommandType.Text;
            //drpModel.DataSource = cmd.ExecuteReader();
            //drpModel.DataTextField = "ProductName";
            //drpModel.DataValueField = "ProductId";
            //drpModel.DataBind();
            //drpModel.Items.Insert(0, new ListItem("--Selet Model--", "0"));





            DataTable Modeldt = new DataTable();
            Modeldt.Columns.Add("ModelId", typeof(int));
            Modeldt.Columns.Add("ModelName");
            Modeldt.Rows.Add(0, "Select Model");
            Modeldt.Rows.Add(1, "Blouse");
            Modeldt.Rows.Add(2, "Anarkli");
            Modeldt.Rows.Add(3, "Kurti");
            Modeldt.Rows.Add(4, "Bottom");
            Modeldt.Rows.Add(5, "Salwar");
            Modeldt.Rows.Add(6, "Embroidery");

            drpModel.DataSource = Modeldt;
            drpModel.DataTextField = "ModelName";
            drpModel.DataValueField = "ModelId";
            drpModel.DataBind();
        }

        protected void drpModel_SelectedIndexChanged(object sender, EventArgs e)
        {
            //int drpModelId = Convert.ToInt32(drpModel.SelectedValue);
            //con.Open();
            //SqlCommand cmd = new SqlCommand("select DISTINCT DesignName  from Design where ProductId =" + drpModelId, con);
            //cmd.CommandType = CommandType.Text;
            //drpSubModel.DataSource = cmd.ExecuteReader();
            //drpSubModel.DataTextField = "DesignName";
            ////drpSubModel.DataValueField = "DesignId";
            //drpSubModel.DataBind();
            //drpSubModel.Items.Insert(0, new ListItem("--Select Submodel--", "0"));


            if (int.Parse(drpModel.SelectedValue) > 0)
            {
                divSubModel.Visible = true;
                DataTable SubModeldt = new DataTable();
                SubModeldt.Columns.Add("SubModelId", typeof(int));
                SubModeldt.Columns.Add("ModelId", typeof(int));
                SubModeldt.Columns.Add("SubModelName");



                if (drpModel.SelectedValue == "1")
                {

                    SubModeldt.Rows.Add(1, 1, "Front");
                    SubModeldt.Rows.Add(2, 1, "Back");
                    SubModeldt.Rows.Add(3, 1, "Sleeve");
                }

                if (drpModel.SelectedValue == "2")
                {
                    SubModeldt.Rows.Add(4, 2, "Dress Model");

                }

                if (drpModel.SelectedValue == "3")
                {
                    SubModeldt.Rows.Add(5, 3, "Front");
                    SubModeldt.Rows.Add(6, 3, "Back");
                    SubModeldt.Rows.Add(7, 3, "Sleeve");
                }

                if (drpModel.SelectedValue == "4")
                {
                    SubModeldt.Rows.Add(8, 4, "Bottoms");

                }

                if (drpModel.SelectedValue == "5")
                {
                    SubModeldt.Rows.Add(9, 5, "Front");
                    SubModeldt.Rows.Add(10, 5, "Back");
                    SubModeldt.Rows.Add(11, 5, "Sleeve");
                    SubModeldt.Rows.Add(12, 5, "Bottoms");
                }

                if (drpModel.SelectedValue == "6")
                {
                    SubModeldt.Rows.Add(13, 6, "Dress Model");

                }
                drpSubModel.DataSource = SubModeldt;
                drpSubModel.DataTextField = "SubModelName";
                drpSubModel.DataValueField = "SubModelId";
                drpSubModel.DataBind();
            }

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            var status = '1';


            string filename = Path.GetFileName(addimg.FileName);
            addimg.SaveAs(Server.MapPath("~/images/" + filename));

            

            SqlCommand cmd = new SqlCommand("insert into Design (DesignId,DesignName,ProductId,StyleName,Price,Images,Status) values (@DId,@dName,@pId,@stylename,@price,@proimg,@proimg2,@sts)", con);

            cmd.Parameters.AddWithValue("@DId", modelid.Text);
            cmd.Parameters.AddWithValue("@dName", drpSubModel.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@pId", drpModel.SelectedValue);
            cmd.Parameters.AddWithValue("@stylename", txtstylename.Text);
            cmd.Parameters.AddWithValue("@price", txtprice.Text);
            cmd.Parameters.AddWithValue("@proimg", "../images/" + addimg.FileName);
            
            cmd.Parameters.AddWithValue("@sts", status);

            con.Open();
            cmd.ExecuteNonQuery();
            prodlbl.Text = "Product Added Successfully";
            prodlbl.ForeColor = System.Drawing.Color.ForestGreen;
            con.Close();







        }
    }
}