using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace StitchQueue.Admin
{
    public partial class Category : System.Web.UI.Page
    {
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
                    SubModeldt.Rows.Add(5, 2, "Front");
                    SubModeldt.Rows.Add(6, 2, "Back");
                    SubModeldt.Rows.Add(7, 2, "Sleeve");
                }

                if (drpModel.SelectedValue == "4")
                {
                    SubModeldt.Rows.Add(8, 2, "Bottoms");

                }

                if (drpModel.SelectedValue == "5")
                {
                    SubModeldt.Rows.Add(9, 2, "Front");
                    SubModeldt.Rows.Add(10, 2, "Back");
                    SubModeldt.Rows.Add(11, 2, "Sleeve");
                    SubModeldt.Rows.Add(12, 2, "Bottoms");
                }

                if (drpModel.SelectedValue == "6")
                {
                    SubModeldt.Rows.Add(13, 2, "Dress Model");

                }
                drpSubModel.DataSource = SubModeldt;
                drpSubModel.DataTextField = "SubModelName";
                drpSubModel.DataValueField = "SubModelId";
                drpSubModel.DataBind();
            }

        }

      

    

       
    }
}