using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.IO;

namespace Shippink_Kart.Admin
{
    public partial class Invoice : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["expressConnectionString"].ConnectionString);
        SqlCommand cmd;
        SqlDataReader rdr;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
            }
            if (!IsPostBack)
            {
                string id = string.Empty;
                try
                {
                    cn.Open();
                    cmd = new SqlCommand("select OrderID from OrderDetail ", cn);
                    rdr = cmd.ExecuteReader();
                    if (rdr.HasRows)
                    {
                        drporderid.Items.Clear();
                        drporderid.Items.Add("--Select Order ID--");
                        while (rdr.Read())
                        {
                            id = rdr["OrderID"].ToString();
                            drporderid.Items.Add(id);
                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('ERROR');</script>");
                }
                finally
                {
                    cn.Close();
                }
            }
        }

        protected void GrandTotal()
        {
            Label14.Text=Label13.Text;
        }

        protected void drporderid_SelectedIndexChanged1(object sender, EventArgs e)
        {
          //  generateinvoice();
        }
        protected void generateinvoice()
        {
            try
            {
                cn.Open();
                cmd = new SqlCommand("select * from OrderDetail where OrderID='" + drporderid.Text + "'", cn);
                rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        Label2.Text = rdr["CustomerName"].ToString();
                        Label3.Text = rdr["CustomerAddress"].ToString();
                        Label4.Text = rdr["CustomerState"].ToString() + " , " + rdr["CustomerCity"].ToString();
                        Label5.Text = rdr["CustomerPhone"].ToString();
                        Label6.Text = rdr["OrderID"].ToString();
                        Label7.Text = rdr["OrderDate"].ToString();
                        Label8.Text = rdr["ExpectedDeliveryDate"].ToString();
                        Label9.Text = rdr["ItemName"].ToString();
                        Label10.Text = rdr["ItemDescription"].ToString();
                        Label11.Text = rdr["ItemUnitPrice"].ToString();
                        Label12.Text = rdr["ItemQuantity"].ToString();
                       
                        float total = float.Parse(Label12.Text) * float.Parse(Label11.Text);
                        Label13.Text = total.ToString();
                        Label14.Text = rdr["ItemTotalPrice"].ToString();
                        Label15.Text = rdr["Tax"].ToString();
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('ERROR');</script>");
            }
            finally
            {
                cn.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            generateinvoice();
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            generatepdf();
        }
        protected void generatepdf()
        {
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            pdfDoc.Add(new Paragraph("InVoice"));
            pdfDoc.Add(new Paragraph("Order ID : "+drporderid.Text));
            pdfDoc.Add(new Paragraph("INVOICE BODY " ));

            pdfDoc.Close();
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;" +
                                           "filename=sample.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Write(pdfDoc);
            Response.End();


           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("AdminLogin.aspx");
        }
    }
}