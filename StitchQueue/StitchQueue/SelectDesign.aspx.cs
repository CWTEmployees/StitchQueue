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
using System.ComponentModel;

namespace StitchQueue
{
    public partial class SelectDesign : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con.Open();

                var querystring = Request.QueryString["id"];

                SqlCommand frontcmd = new SqlCommand("select * from Design where DesignName = 'Front' and ProductId='"+querystring+"'", con);

                frontcmd.ExecuteNonQuery();
                SqlDataAdapter frontda = new SqlDataAdapter(frontcmd);
                DataTable frontdt = new DataTable();
                frontda.Fill(frontdt);
                FrontData.DataSource = frontdt;
                FrontData.DataBind();

                SqlCommand backcmd = new SqlCommand("select * from Design where DesignName = 'Back' and ProductId='" + querystring + "'", con);

                backcmd.ExecuteNonQuery();
                SqlDataAdapter backda = new SqlDataAdapter(backcmd);
                DataTable backdt = new DataTable();
                backda.Fill(backdt);
                BackData.DataSource = backdt;
                BackData.DataBind();

                SqlCommand sleevecmd = new SqlCommand("select * from Design where DesignName = 'Sleeve' and ProductId='" + querystring + "'", con);
                
                sleevecmd.ExecuteNonQuery();
                SqlDataAdapter sleeveda = new SqlDataAdapter(sleevecmd);
                DataTable sleevedt = new DataTable();
                sleeveda.Fill(sleevedt);
                SleeveData.DataSource = sleevedt;
                SleeveData.DataBind();


                SqlCommand addonToplinecmd = new SqlCommand("select * from Addon where DesignName = 'Lining' and ProductId='" + querystring + "'", con);

                addonToplinecmd.ExecuteNonQuery();
                SqlDataAdapter addonToplineda = new SqlDataAdapter(addonToplinecmd);
                DataTable addonToplinedt = new DataTable();
                addonToplineda.Fill(addonToplinedt);
                addonTlining.DataSource = addonToplinedt;
                addonTlining.DataBind();

                SqlCommand addonclosecmd = new SqlCommand("select * from Addon where DesignName = 'Closing' and ProductId='" + querystring + "'", con);

                addonclosecmd.ExecuteNonQuery();
                SqlDataAdapter addoncloseda = new SqlDataAdapter(addonclosecmd);
                DataTable addonclosedt = new DataTable();
                addoncloseda.Fill(addonclosedt);
                addonclosing.DataSource = addonclosedt;
                addonclosing.DataBind();

                SqlCommand addonothercmd = new SqlCommand("select * from Addon where DesignName = 'Other' and ProductId='" + querystring + "'", con);

                addonothercmd.ExecuteNonQuery();
                SqlDataAdapter addonotherda = new SqlDataAdapter(addonothercmd);
                DataTable addonotherdt = new DataTable();
                addonotherda.Fill(addonotherdt);
                addonOthers.DataSource = addonotherdt;
                addonOthers.DataBind();

                SqlCommand anarklicmd = new SqlCommand("select * from Design where DesignName = 'Dress Model' and ProductId='" + querystring + "'", con);

                anarklicmd.ExecuteNonQuery();
                SqlDataAdapter anarklida = new SqlDataAdapter(anarklicmd);
                DataTable anarklidt = new DataTable();
                anarklida.Fill(anarklidt);
                AnarkliData.DataSource = anarklidt;
                AnarkliData.DataBind();


                con.Close();
            }


        }
    }
}