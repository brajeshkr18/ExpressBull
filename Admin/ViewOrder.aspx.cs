using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Net.Mail;

namespace Shippink_Kart
{
    public partial class ViewOrder : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["expressConnectionString"].ConnectionString);
        SqlCommand cmd;
        SqlDataReader rdr;
        StringBuilder htmlTable = new StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
            }
            cn.Open();
           // string st = "Delivered";
            string sts = "Processing";
            cmd = new SqlCommand("select * from OrderDetail where Status='"+sts+"'", cn);
            rdr = cmd.ExecuteReader();
            if (rdr.HasRows)
            {
                while (rdr.Read())
                {
                  
                    //TableRow tr = new TableRow();
                    //TableCell td = new TableCell();
                    //TableCell td1 = new TableCell();
                    //TableCell td2 = new TableCell();
                    //TableCell td3 = new TableCell();
                    //TableCell td4 = new TableCell();
                    //TableCell td5 = new TableCell();
                    //TableCell td6 = new TableCell();
                    //TableCell td7 = new TableCell();
                    //TableCell td8 = new TableCell();
                    //TableCell td9 = new TableCell();
                    //TableCell td10 = new TableCell();
                    //TableCell td11 = new TableCell();
                    //TableCell td12 = new TableCell();
                    //TableCell td13 = new TableCell();
                    //TableCell td14 = new TableCell();

                    //editable_sample.Rows.Add(tr);
                    //td.Text = rdr[0].ToString();
                    //td1.Text = rdr[1].ToString();
                    //td2.Text = rdr[2].ToString();
                    //td3.Text=rdr[3].ToString();
                    //td4.Text = rdr[4].ToString();
                    //td5.Text = rdr[5].ToString();
                    //td6.Text = rdr[6].ToString();
                    //td7.Text = rdr[7].ToString();
                    //td8.Text = rdr[8].ToString();
                    //td9.Text = rdr[9].ToString();
                    //td10.Text = rdr[10].ToString();
                    //td11.Text = rdr[11].ToString();
                    //td12.Text = rdr[12].ToString();
                    //td13.Text = rdr[13].ToString();

                    //LinkButton lkbtn = new LinkButton();
                    //lkbtn.Text = "View";
                    //lkbtn.Click += new EventHandler(lkbtn_Click);
                    //td14.Controls.Add(lkbtn);
                    //tr.Cells.Add(td);
                    //tr.Cells.Add(td1);
                    //tr.Cells.Add(td2);
                    //tr.Cells.Add(td3);
                    //tr.Cells.Add(td4);
                    //tr.Cells.Add(td5);
                    //tr.Cells.Add(td6);
                    //tr.Cells.Add(td7);
                    //tr.Cells.Add(td8);
                    //tr.Cells.Add(td9);
                    //tr.Cells.Add(td10);
                    //tr.Cells.Add(td11);
                    //tr.Cells.Add(td12);
                    //tr.Cells.Add(td13);
                    //tr.Cells.Add(td14);
                    ////td3.Controls.Add(view);
                   
                }
            }
            rdr.Close();
            cn.Close();
        }
        
        

        void lkbtn_Click(object sender, EventArgs e)
        {

            Response.Redirect("EditOrder.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }
      

        protected void drpstate_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
        Label1.Text=row.Cells[0].Text;
    
             string id = string.Empty;
         
                id = Label1.Text;
                Session["ID"] = id;
               Server.Transfer("EditOrder.aspx");
       //  TextBox2.Text = row.Cells[1].Text;
         //TextBox3.Text = row.Cells[7].Text;
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("AdminLogin.aspx");
        }
    }
}
