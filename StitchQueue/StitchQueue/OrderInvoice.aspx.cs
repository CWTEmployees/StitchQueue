using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
using System.Text;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;

namespace StitchQueue
{
    public partial class OrderInvoice : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            String pass = "abcdefghijklmnopqrstuvwxyz123456789";
            Random r = new Random();
            char[] mypass = new char[10];
            for (int i = 0; i < 10; i++)
            {
                mypass[i] = pass[(int)(35 * r.NextDouble())];

            }
            String orderid;
            orderid = "Order" + new string(mypass);

            lblOrderId.Text = orderid;


            lblOrderDate.Text = DateTime.Now.ToShortDateString();


            if (Session["fittingitems"] == null)
            {

                DataTable dt = new DataTable();
                dt = (DataTable)Session["buyitems"];
                GridInvoice.DataSource = dt;
                GridInvoice.DataBind();
                GridInvoice.FooterRow.Cells[0].Text = "Total Amount";
                GridInvoice.FooterRow.Cells[1].Text = cartgrandtotal().ToString();
                con.Close();
            }
            else
            {
                DataTable dt1 = new DataTable();
                dt1 = (DataTable)Session["fittingitems"];
                FittingInvoice.DataSource = dt1;
                FittingInvoice.DataBind();
                FittingInvoice.FooterRow.Cells[0].Text = "Total Amount";
                FittingInvoice.FooterRow.Cells[1].Text = grandtotal().ToString();
                con.Close();
            }



            if (Session["buyitems"] == null)
            {
                DataTable dt1 = new DataTable();
                dt1 = (DataTable)Session["fittingitems"];
                FittingInvoice.DataSource = dt1;
                FittingInvoice.DataBind();
                FittingInvoice.FooterRow.Cells[0].Text = "Total Amount";
                FittingInvoice.FooterRow.Cells[1].Text = grandtotal().ToString();
                con.Close();
            }
            else
            {
                DataTable dt = new DataTable();
                dt = (DataTable)Session["buyitems"];
                GridInvoice.DataSource = dt;
                GridInvoice.DataBind();
                GridInvoice.FooterRow.Cells[0].Text = "Total Amount";
                GridInvoice.FooterRow.Cells[1].Text = cartgrandtotal().ToString();
                con.Close();
            }
         


        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            //base.VerifyRenderingInServerForm(control);
        }
        protected void DownloadInvoice_Click(object sender, EventArgs e)
        {
            exportpdf();
        }
        private void exportpdf()
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=OrderInvoice.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            InvoicePanel.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();

        }

        public decimal cartgrandtotal()
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


        public decimal grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["fittingitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            decimal gtotal = 0;
            while (i < nrow)
            {
                gtotal = gtotal + Convert.ToDecimal(dt.Rows[i]["totalprice"].ToString());

                i = i + 1;
            }
            return gtotal;
        }
    }
}