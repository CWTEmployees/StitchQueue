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
    public partial class Addons : System.Web.UI.Page
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
            if (int.Parse(drpModel.SelectedValue) > 0)
            {
                divSubModel.Visible = true;
                DataTable SubModeldt = new DataTable();
                SubModeldt.Columns.Add("SubModelId", typeof(int));
                SubModeldt.Columns.Add("ModelId", typeof(int));
                SubModeldt.Columns.Add("SubModelName");

                if (drpModel.SelectedValue == "1")
                {

                    SubModeldt.Rows.Add(1, 1, "Closing");
                    SubModeldt.Rows.Add(2, 1, "Lining");
                    SubModeldt.Rows.Add(3, 1, "Other");
                }

                if (drpModel.SelectedValue == "2")
                {
                    SubModeldt.Rows.Add(4, 2, "Bottom Linning");
                    SubModeldt.Rows.Add(5, 2, "Bottom Style");
                    SubModeldt.Rows.Add(6, 2, "Closing");
                    SubModeldt.Rows.Add(7, 2, "Top Linning");
                    SubModeldt.Rows.Add(8, 2, "Others");

                }

                if (drpModel.SelectedValue == "3")
                {
                    SubModeldt.Rows.Add(9, 3, "Bottom Linning");
                    SubModeldt.Rows.Add(10, 3, "Bottom Style");
                    SubModeldt.Rows.Add(11, 3, "Closing");
                    SubModeldt.Rows.Add(12, 3, "Top Linning");
                    SubModeldt.Rows.Add(13, 3, "Others");
                }

                if (drpModel.SelectedValue == "4")
                {
                    SubModeldt.Rows.Add(14, 2, "Bottom Style");
                    SubModeldt.Rows.Add(15, 2, "Others");

                }

                if (drpModel.SelectedValue == "5")
                {
                    SubModeldt.Rows.Add(16, 5, "Bottom Linning");
                    SubModeldt.Rows.Add(17, 5, "Bottom Style");
                    SubModeldt.Rows.Add(18, 5, "Closing");
                    SubModeldt.Rows.Add(19, 5, "Top Linning");
                    SubModeldt.Rows.Add(20, 5, "Others");
                }

                if (drpModel.SelectedValue == "6")
                {
                    SubModeldt.Rows.Add(21, 6, "Others");

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
            if (addimg.HasFile)
            {
                string _fileext = Path.GetExtension(addimg.FileName);
                if (_fileext.ToLower() == ".png" || _fileext.ToLower() == ".jpg" || _fileext.ToLower() == ".bmp" || _fileext.ToLower() == ".jpeg")
                {

                    string filename = Path.GetFileName(addimg.FileName);
                    addimg.SaveAs(Server.MapPath("~/images/" + filename));

                    SqlCommand cmd = new SqlCommand("insert into Addon (AddOnId,DesignName,ProductId,StyleName,Price,Images,Status) values (@DId,@dName,@pId,@stylename,@price,@proimg,@sts)", con);

                    cmd.Parameters.AddWithValue("@DId", modelid.Text);
                    cmd.Parameters.AddWithValue("@dName", drpSubModel.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@pId", drpModel.SelectedValue);
                    cmd.Parameters.AddWithValue("@stylename", txtstylename.Text);
                    cmd.Parameters.AddWithValue("@price", txtprice.Text);
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