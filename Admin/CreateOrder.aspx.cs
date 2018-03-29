using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net;
using System.Net.Mail;
using System.IO;

namespace Shippink_Kart
{
    public partial class CreateOrder : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["expressConnectionString"].ConnectionString);
        SqlCommand cmd;
        string otp = string.Empty;
        string tax = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
            }
            if (!IsPostBack)
            {
                Random rd = new Random();
                int id = rd.Next(0000, 9999);
                txtOrderID.Text = "ORDER_" + id.ToString();

                selectState();

            }// selectcity();
        }

        protected void selectcity()
        {
            try
            {
                string city = string.Empty;
                cn.Open();
                cmd = new SqlCommand("select  distinct CityName from City where StateName='" + drpCustomerState.Text + "'", cn);
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    drpCustomerCity.Items.Clear();
                    drpCustomerCity.Items.Add("--Select City--");
                    while (rdr.Read())
                    {
                        city = rdr[0].ToString();
                        drpCustomerCity.Items.Add(city);
                    }
                }
                rdr.Close();

            }
            catch (Exception ex)
            {
               // Response.Write("<script>alert('ERROR');</script>");
            }
            finally
            {
                cn.Close();
            }
        }
        protected void selectState()
        {
            try
            {
                string state = string.Empty;
                cn.Open();
                cmd = new SqlCommand("select distinct StateName from City", cn);
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    drpCustomerState.Items.Clear();
                    drpCustomerState.Items.Add("--Select State--");

                    while (rdr.Read())
                    {
                        state = rdr[0].ToString();
                        drpCustomerState.Items.Add(state);

                    }
                }
            }
            catch (Exception ex)
            {
               // Response.Write("<script>alert('ERROR');</script>");
            }
            finally
            {
                cn.Close();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Random rd = new Random();
            int i = rd.Next(000, 999);
            int j = rd.Next(000, 999);
            otp = "CON" + i.ToString() + j.ToString();

            if (drpCustomerState.Text == "" || drpCustomerState.Text == null || drpCustomerState.Text == "--Select State--")
            {
                Response.Write("<script>alert('Select State');</script>");
            }
            else if (drpCustomerCity.Text == "" || drpCustomerCity.Text == null || drpCustomerCity.Text == "--Select City--")
            {
                Response.Write("<script>alert('Select City');</script>");
            }
            else
            {
                if (RadioButton1.Checked)
                {
                    tax = "15%";
                }
                if (RadioButton2.Checked)
                {
                    tax = "NA";
                }
                try
                {
                    string sts = "Processing";
                    string orderstatus = "Pending";
                    //string orderstatus = "Confirmed";
                    cn.Open();
                    cmd = new SqlCommand("insert into OrderDetail values(@ID,@OrderDate,@DeliverDate,@CName,@CAddress,@CState,@CCity,@CPhone,@CEmail,@INAme,@IDescription,@IUnitPrice,@IQuantity,@ITotalPrice,@Status,@OTP,@OrderStatus,@tax)", cn);
                    cmd.Parameters.AddWithValue("@ID", txtOrderID.Text);
                    cmd.Parameters.AddWithValue("@OrderDate", txtOrderDate.Text);
                    cmd.Parameters.AddWithValue("@DeliverDate", txtExpDelDate.Text);
                    cmd.Parameters.AddWithValue("@CName", txtCustomerName.Text);
                    cmd.Parameters.AddWithValue("@CAddress", txtCustomerAddress.Text);
                    cmd.Parameters.AddWithValue("@CState", drpCustomerState.Text);
                    cmd.Parameters.AddWithValue("@CCity", drpCustomerCity.Text);
                    cmd.Parameters.AddWithValue("@CPhone", txtCustomerPhone.Text);
                    cmd.Parameters.AddWithValue("@CEmail", txtCustomerEmail.Text);
                    cmd.Parameters.AddWithValue("@INAme", txtItemName.Text);
                    cmd.Parameters.AddWithValue("@IDescription", txtItemDescription.Text);
                    cmd.Parameters.AddWithValue("@IUnitPrice", txtItemUnitPrice.Text);
                    cmd.Parameters.AddWithValue("@IQuantity", txtItemQuantity.Text);
                    cmd.Parameters.AddWithValue("@ITotalPrice", txtItemTotalPrice.Text);
                    cmd.Parameters.AddWithValue("@Status", sts);
                    cmd.Parameters.AddWithValue("@OTP", otp);
                    cmd.Parameters.AddWithValue("@OrderStatus", orderstatus);
                    cmd.Parameters.AddWithValue("@tax", tax);
                    int x = cmd.ExecuteNonQuery();
                    if (x == 1)
                    {
                        SendSMS();
                         Response.Write("<script>alert('Order Placed SuccessFully');</script>");
                       
                    }
                    else
                    {
                        Response.Write("<script>alert('Failed Try Again');</script>");
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
        public void SendSMS()
        {
            string Password = "123456789";
            string Msg = "Dear " + txtCustomerName.Text + " , " +
                     "     Your OTP is    " + otp + "   for Order ID .   " + txtOrderID.Text +
                     " Click  "+ " https://goo.gl/cJ9fot "+ " To Confirm Your Order";


            string OPTINS = "SHIVAM";
            string MobileNumber = txtCustomerPhone.Text.Trim();
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
            Response.Write("Sent");
        }

        public void SendMail()
        {
            try
            {
                SmtpClient clnt = new SmtpClient("smtp.gmail.com", 587);
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("taxsvmarketing@gmail.com");
                // msg.To.Add("shivam1521.ss@gmail.com");
                msg.To.Add(txtCustomerEmail.Text);
                msg.Subject = "Order Summary";
                msg.IsBodyHtml = true;
                msg.Body = "Dear" + txtCustomerName.Text + "," +
                    "<br><br>&nbsp;&nbsp;&nbsp;&nbsp;" + "Your OTP is " + otp + "for <i>Order ID</i> ." + txtOrderID.Text + "<br>" +
                    "Click" + "<a href=" + "http://localhost:64266/Client/OTP.aspx" + ">" + "Here" + "</a>" + "To Confirm Your Order";

                ;
                clnt.UseDefaultCredentials = false;
                clnt.EnableSsl = true;
                clnt.Credentials = new System.Net.NetworkCredential("taxsvmarketing@gmail.com", "seotug1234@#");
                clnt.Send(msg);
                msg = null;
                Response.Write("<script>alert('SuccessFully Send');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Failure Please try again');</script>");
            }

        }





        protected void drpCustomerState_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectcity();
        }

        protected void drpstate_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectcity();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }



        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton2.Checked = false;
            float quy = float.Parse(txtItemQuantity.Text);
            float unpr = float.Parse(txtItemUnitPrice.Text);
            float tax = float.Parse(15.ToString());
            float totpr = (quy * unpr * tax) / 100;
            float totalpr = (quy * unpr) + totpr;
            txtItemTotalPrice.Text = totalpr.ToString();
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton1.Checked = false;
            float quy = float.Parse(txtItemQuantity.Text);
            float unpr = float.Parse(txtItemUnitPrice.Text);

            float totpr = (quy * unpr);
            txtItemTotalPrice.Text = totpr.ToString();
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("AdminLogin.aspx");
        }
    }
}