using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.Web.Configuration;

namespace Shippink_Kart
{
    public partial class Track : System.Web.UI.Page
    {
        //SqlConnection cn = new SqlConnection("Data Source=103.48.51.38,1232;Initial Catalog=express;Persist Security Info=True;User ID=sa;Password=U^yzFZN2YXK6AdHN");
        SqlConnection cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["expressConnectionString"].ConnectionString);
        SqlCommand cmd;
        SqlDataReader rdr;
        StringBuilder htmlTable = new StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cn.Open();
            cmd = new SqlCommand("select OrderID,Date,State,City,Status,Time from OrderStatus where OrderID='" + txtorderid.Text.Trim() + "'", cn);
            SqlDataReader rdr = cmd.ExecuteReader();
            if (rdr.HasRows)
            {
                while (rdr.Read())
                {
                    string dt = rdr["Date"].ToString();
                    DateTime dtime = Convert.ToDateTime(dt);
                    string datd = dtime.Date.Day.ToString();
                    string datm = dtime.Date.Month.ToString();
                    string daty = dtime.Date.Year.ToString();
                    string date = datd + "/" + datm + "/" + daty;

                    string time = rdr["Time"].ToString();
                    DateTime ttime = Convert.ToDateTime(time);
                    string hour = ttime.Hour.ToString();
                    string Minut = ttime.Minute.ToString();
                    string sec = ttime.Second.ToString();
                    string timee = hour + ":" + Minut + ":" + sec;


                    string showdate = date + " ( " + timee + " ) ";


                    TableRow tr = new TableRow();
                    TableCell td = new TableCell();
                    TableCell td1 = new TableCell();
                    TableCell td2 = new TableCell();
                    TableCell td3 = new TableCell();
                    TableCell td4 = new TableCell();

                    editable_sample.Rows.Add(tr);
                    td.Text = rdr[0].ToString();
                    td1.Text = showdate;
                    td2.Text = rdr[2].ToString();
                    td3.Text = rdr[3].ToString();
                    td4.Text = rdr[4].ToString();


                    tr.Cells.Add(td);
                    tr.Cells.Add(td1);
                    tr.Cells.Add(td2);
                    tr.Cells.Add(td3);
                    tr.Cells.Add(td4);
                    //td3.Controls.Add(view);

                }
            }
        }
    }
}