using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Data;
using System.Net;
using System.IO;

namespace Shippink_Kart
{
    public partial class OTP : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["expressConnectionString"].ConnectionString);
        SqlCommand cmd;
        SqlDataReader rdr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string email = string.Empty;
        string customer = string.Empty;
        protected void Button1_Click(object sender, EventArgs e)
        {
            string otp1 = "NULL";
            string otp = string.Empty;
            string email = string.Empty;
            try
            {
                cn.Open();
                cmd = new SqlCommand("select * from OrderDetail where OrderID='"+txtorderid.Text+"'",cn);
                rdr = cmd.ExecuteReader();
                if(rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        otp=rdr["OTP"].ToString();
                        Label2.Text = rdr["CustomerEmail"].ToString();
                        Label3.Text=rdr["CustomerPhone"].ToString();
                        customer = rdr["CustomerName"].ToString();
                        if(otp==txtotp.Text)
                        {
                           // SendMail();
                           
                        }
                        else
                        {
                            Label1.Visible = true;
                            
                            Label1.Text = "Enter Correct OTP";
                        }
                    }
                } rdr.Close();
                string con = "Confirmed";
                SqlCommand cmd1 = new SqlCommand("update OrderDetail set OTP='" + otp1 + "',OrderStatus='"+con+"' where OrderID='"+txtorderid.Text+"'", cn);
                int x=cmd1.ExecuteNonQuery();
                if(x==1)
                {
                    SendSMS();
                    Response.Write("<script>alert('Order Confirmed');</script>");
                   // Response.Redirect("Index.aspx");
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
        public void SendMail()
        {
            try
            {
                SmtpClient clnt = new SmtpClient("smtp.gmail.com", 587);
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("infovencore@gmail.com");
                // msg.To.Add("shivam1521.ss@gmail.com");
                msg.To.Add(Label2.Text);
                msg.Subject = "Order Summary";
                msg.IsBodyHtml = true;
                msg.Body = "Dear" + customer + "," +
                    "<br><br>&nbsp;&nbsp;&nbsp;&nbsp;" + "Your Order  is  Successfully Placed " +"<br>Please Remember Order ID for Future.<br>"+ "<i>Order ID</i> - " + txtorderid.Text+ "<br>";
                clnt.UseDefaultCredentials = false;
                clnt.EnableSsl = true;
                clnt.Credentials = new System.Net.NetworkCredential("infovencore@gmail.com", "info@vencore");
                clnt.Send(msg);
                msg = null;
               // Response.Write("<script>alert('SuccessFully Send');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Failure Please try again');</script>");
            }

        }
        public void SendSMS()
        {
            string Password = "123456789";
            string Msg = "Your Order has been Successfully Placed" + "\n" + "Your Order ID is " + " ( " + txtorderid.Text + " ) ";
            string OPTINS = "SHIVAM";
            string MobileNumber = Label3.Text.Trim();
            string type = "3";
            string strUrl = "http://login.bulksmsgateway.in/sendmessage.php?" + "user=" + "manish520" + " &password=" + Password + "&message=" + Msg + "&sender=" + OPTINS + "&mobile=" + MobileNumber + "&type=" + 3;
            System.Net.WebRequest request = System.Net.WebRequest.Create(strUrl);
            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            Stream s = (Stream)response.GetResponseStream();
            StreamReader readStream = new StreamReader(s);
            string dataString = readStream.ReadToEnd();
            response.Close();
            s.Close();
            readStream.Close();
           // Response.Write("Sent");
        }
    }
}