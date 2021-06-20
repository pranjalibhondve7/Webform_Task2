using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.IO;
using System.Web;
using System.Web.UI;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;


namespace Webform_Task2
{
    public partial class Report : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;
        SqlDataAdapter adapt;
        DataTable dt;
        //string fileName, contentType;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(cnfg);
            cmd = new SqlCommand();
            cmd.Connection = con;
            if (!IsPostBack)
            {
                ShowData();
            }
        }
        protected void ShowData()
        {
            dt = new DataTable();
            // con = new SqlConnection(cnfg);
            con.Open();
            //adapt = new SqlDataAdapter("SELECT CONCAT(UCASE(MID(name,1,1)),MID(name,2)) FROM Registraton", con);
            adapt = new SqlDataAdapter("Select * from Registraton", con);
            adapt.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            con.Close();
        }

        protected void btnexcel_Click(object sender, EventArgs e)
        {
            // 1St Code 
            //if (GridView1.Visible)
            //{
            //    Response.AddHeader("content-disposition", "attachment; filename=GridViewToExcel.xls");
            //    Response.ContentType = "application/excel";
            //    StringWriter sWriter = new StringWriter();
            //    HtmlTextWriter hTextWriter = new HtmlTextWriter(sWriter);
            //    GridView1.RenderControl(hTextWriter);
            //    Response.Write(sWriter.ToString());
            //    Response.End();
            //}

            Response.ClearContent();
            Response.AppendHeader("content-disposition", "attachment; filename=GridViewToExcel.xls");
            Response.ContentType = "application/excel";
            System.IO.StringWriter stringWriter = new System.IO.StringWriter();           
            HtmlTextWriter htw = new HtmlTextWriter(stringWriter);
            GridView1.HeaderRow.Style.Add("background-color", "#FFFFFF");
            foreach (TableCell tableCell in GridView1.HeaderRow.Cells)
            {
                tableCell.Style["background-color"] = "#A55129";
            }
            foreach (GridViewRow gridViewRow in GridView1.Rows)
            {
                gridViewRow.BackColor = System.Drawing.Color.White;
                foreach (TableCell gridViewRowTableCell in gridViewRow.Cells)
                {
                    gridViewRowTableCell.Style["background-color"] = "#FFF7E7";
                }
            }

            GridView1.RenderControl(htw);
            Response.Write(stringWriter.ToString());
            Response.End();

        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
               server control at run time. */
        }

        protected void btnpdf_Click(object sender, EventArgs e)
        {
            //Response.ContentType = "application/pdf";
            //Response.AddHeader("content-disposition", "attachment;filename=GridViewData.pdf");
            //Response.Cache.SetCacheability(HttpCacheability.NoCache);
            //StringWriter sw = new StringWriter();
            //HtmlTextWriter hw = new HtmlTextWriter(sw);
            //GridView1.AllowPaging = false;
            //GridView1.DataBind();
            //GridView1.RenderControl(hw);
            //StringReader sr = new StringReader(sw.ToString());
            //Document pdfDocument = new Document(PageSize.A2, 7f, 7f, 7f, 0f);
            //HTMLWorker htmlparser = new HTMLWorker(pdfDocument);
            //PdfWriter.GetInstance(pdfDocument, Response.OutputStream);
            //pdfDocument.Open();
            //htmlparser.Parse(sr);
            //pdfDocument.Close();
            //Response.Write(pdfDocument);
            //Response.End();
        }
    }
}    
