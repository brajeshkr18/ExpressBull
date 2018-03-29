using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.IO;

namespace Shippink_Kart
{
    public partial class EditOrder : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["expressConnectionString"].ConnectionString);
        SqlCommand cmd;
        SqlDataReader rdr;
       
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["ID"] == null)
            {
                Response.Redirect("ViewOrder.aspx");
            }
            else
            {
                string id = Session["ID"].ToString();
                if (!IsPostBack)
                {
                    selectState();
                    Button2.Visible = false;
                    try
                    {

                        cn.Open();
                        cmd = new SqlCommand("select * from OrderDetail where OrderID='" + id + "'", cn);
                        rdr = cmd.ExecuteReader();
                        if (rdr.HasRows)
                        {
                            while (rdr.Read())
                            {
                                readonlycontroltrue();
                                txtOrderDate.Text = rdr[1].ToString();
                                txtExpDelDate.Text = rdr[2].ToString();
                                txtOrderID.Text = rdr[0].ToString();
                                txtCustomerName.Text = rdr[3].ToString();
                                txtCustomerAddress.Text = rdr[4].ToString();
                                txtCustomerPhone.Text = rdr[7].ToString();
                                txtCustomerEmail.Text = rdr[8].ToString();
                                txtItemName.Text = rdr[9].ToString();
                                txtItemDescription.Text = rdr[10].ToString();
                                txtItemQuantity.Text = rdr[12].ToString();
                                txtItemUnitPrice.Text = rdr[11].ToString();
                                txtItemTotalPrice.Text = rdr[13].ToString();
                                drpCustomerState.Text = rdr["CustomerState"].ToString();
                                drpCustomercity.Text = rdr["CustomerCity"].ToString();
                                drporderid.Text = rdr[0].ToString();
                                drpstate.Text = rdr["CustomerState"].ToString();
                                drpcity.Text = rdr["CustomerCity"].ToString();
                                drporderstatus.Text = rdr["Status"].ToString();
                               
                                if (drporderstatus.Text == "Delivered")
                                {
                                    drpstate.Enabled = false;
                                    drpcity.Enabled = false;
                                    drporderstatus.Enabled = false;
                                    Button3.Enabled = false;
                                }
                            }
                        }
                        rdr.Close();

                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('Error');</script>");
                    }
                    finally
                    {
                        cn.Close();
                    }
                    selectorder();
                    
                }
                selectstatus();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            readonlycontrolfalse();
            if (!IsPostBack)
            {
                selectState();
            }
        }
        protected void readonlycontrolfalse()
        {
            Button2.Visible = true;
            txtOrderDate.ReadOnly = false;
            txtExpDelDate.ReadOnly = false;
            txtCustomerName.ReadOnly = false;
            txtCustomerAddress.ReadOnly = false;
            txtCustomerPhone.ReadOnly = false;
            txtCustomerEmail.ReadOnly = false;
            txtItemName.ReadOnly = false;
            txtItemQuantity.ReadOnly = false;
            txtItemTotalPrice.ReadOnly = false;
            txtItemUnitPrice.ReadOnly = false;
            txtItemDescription.ReadOnly = false;
            drpCustomerState.Enabled = true;
            drpCustomercity.Enabled = true;
        }
        protected void readonlycontroltrue()
        {
            txtOrderID.ReadOnly = true;
            txtOrderDate.ReadOnly = true;
            txtExpDelDate.ReadOnly = true;
            txtCustomerName.ReadOnly = true;
            txtCustomerAddress.ReadOnly = true;
            txtCustomerPhone.ReadOnly = true;
            txtCustomerEmail.ReadOnly = true;
            txtItemName.ReadOnly = true;
            txtItemQuantity.ReadOnly = true;
            txtItemTotalPrice.ReadOnly = true;
            txtItemUnitPrice.ReadOnly = true;
            txtItemDescription.ReadOnly = true;
            drpCustomerState.Enabled = false;
            drpCustomercity.Enabled = false;
        }

        protected void txtItemQuantity_TextChanged(object sender, EventArgs e)
        {
            int quy = int.Parse(txtItemQuantity.Text);
            int unpr = int.Parse(txtItemUnitPrice.Text);
            int totpr = quy * unpr;
            txtItemTotalPrice.Text = totpr.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (drpstate.Text == "" || drpstate.Text == null || drpstate.Text == "--Select State--")
            {
                Response.Write("<script>alert('Select State');</script>");
                Response.Redirect("EditOrder.aspx");
            }
            else if (drpcity.Text == "" || drpcity.Text == null || drpcity.Text == "--Select City--")
            {
                Response.Write("<script>alert('Select City');</script>");
                Response.Redirect("EditOrder.aspx");
            }
            else
            {
                try
                {
                    cn.Open();
                    cmd = new SqlCommand("insert into OrderStatus values(@ID,@CState,@CCity,@Status,@date,@time)", cn);
                    cmd.Parameters.AddWithValue("@ID", drporderid.Text);
                    cmd.Parameters.AddWithValue("@CState", drpstate.Text);
                    cmd.Parameters.AddWithValue("@CCity", drpcity.Text);
                    cmd.Parameters.AddWithValue("@Status", drporderstatus.Text);
                    cmd.Parameters.AddWithValue("@Date", DateTime.Now.Date);
                    cmd.Parameters.AddWithValue("@Time", DateTime.Now.TimeOfDay);
                    int x = cmd.ExecuteNonQuery();
                    if (drporderstatus.Text == "Delivered")
                    {
                        cmd = new SqlCommand("update OrderDetail set Status='" + drporderstatus.Text + "' where OrderID='" + drporderid.Text + "'", cn);
                        cmd.ExecuteNonQuery();
                        //SendSMS();

                    }
                    if (x == 1)
                    {
                        SendSMS();
                       
                        Response.Write("<script>alert('Status Update SuccessFully');</script>");
                        //SendMail();
                        Response.Redirect("EditOrder.aspx");
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
        public void sendmail()
        {
            try
            {
                SmtpClient clnt = new SmtpClient("smtp.gmail.com", 587);
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("infovencore@gmail.com");
                // msg.To.Add("shivam1521.ss@gmail.com");
                msg.To.Add(txtCustomerEmail.Text);
                msg.Subject = "Order Summary";
                msg.IsBodyHtml = true;
                if (drporderstatus.Text == "Delivered")
                {
                    msg.Body = "Dear" + txtCustomerName.Text + "," +
                    "<br><br>&nbsp;&nbsp;&nbsp;&nbsp;" + "Your Order having Ordr ID" + drporderid.Text + " is Successfully Delivered At ." + drpstate.Text + " ( " + drpcity.Text + " ) ";

                }
                else
                {
                    msg.Body = "Dear" + txtCustomerName.Text + "," +
                        "<br><br>&nbsp;&nbsp;&nbsp;&nbsp;" + "Your Order having Ordr ID" + drporderid.Text + " is Successfully Reached At ." + drpstate.Text + " ( " + drpcity.Text + " ) ";
                }
                clnt.UseDefaultCredentials = false;
                clnt.EnableSsl = true;
                clnt.Credentials = new System.Net.NetworkCredential("infovencore@gmail.com", "info@vencore");
                clnt.Send(msg);
                msg = null;
                SendSMS();
                Response.Write("<script>alert('SuccessFully Send');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Failure Sending Mail Please try again');</script>");


            }
        }
        public void SendSMS()
        {
            string Msg = string.Empty;
            string Password = "123456789";
            if (drporderstatus.Text == "Delivered")
            {
                Msg = "Hello," + txtCustomerName.Text + "Your Order having ORDER ID " + drporderid.Text + " is Delivered at " + "\n" + drpstate.Text + " ( " + drpcity.Text + " ) ";
            }
            else
            {
                 Msg = "Hello," + txtCustomerName.Text + "Your Order having ORDER ID " + drporderid.Text + " has been Successfully Reached at " + "\n" + drpstate.Text + " ( " + drpcity.Text + " ) ";
            }
            
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
        protected void selectcity()
        {
            cn.Open();
            string city = string.Empty;
            SqlCommand cmd1 = new SqlCommand("select  distinct CityName from City where StateName='" + drpstate.Text + "'", cn);
            SqlDataReader rdr1 = cmd1.ExecuteReader();
            if (rdr1.HasRows)
            {
                drpcity.Items.Clear();
                drpcity.Items.Add("--Select City--");
                while (rdr1.Read())
                {
                    city = rdr1[0].ToString();
                    drpcity.Items.Add(city);
                }
            } rdr1.Close();
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

                    drpstate.Items.Clear();
                    drpstate.Items.Add("--Select State--");
                    drpCustomerState.Items.Clear();
                    drpCustomerState.Items.Add("--Select State--");
                    while (rdr.Read())
                    {
                        state = rdr[0].ToString();
                        drpCustomerState.Items.Add(state);
                        drpstate.Items.Add(state);
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
        protected void selectorder()
        {
            string id = Session["ID"].ToString();
            try
            {
                string orderid = string.Empty;
                cn.Open();
                cmd = new SqlCommand("select * from OrderDetail where OrderID='"+id+"'", cn);
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        orderid = rdr["OrderID"].ToString();
                        drporderid.Items.Add(orderid);
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

        protected void drpstate_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectcity();
        }
        protected void selectstatus()
        {
            string id = Session["ID"].ToString();
            string status = string.Empty;
            try
            {
                cn.Open();
                cmd = new SqlCommand("select Status,State,City from OrderStatus where OrderID='" +id + "'", cn);
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        status = status + " > " + rdr[0].ToString() + " ( " + rdr[1].ToString() + "-" + rdr[2].ToString() + " ) ";
                    }
                    Label1.Text = status;
                }

                else
                {
                    Label1.Text = "Processing";
                } rdr.Close();
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

        protected void drporderid_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectstatus();
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            if (drpCustomerState.Text == "" || drpCustomerState.Text == null || drpCustomerState.Text == "--Select State--")
            {
                Response.Write("<script>alert('Select State');</script>");

            }
            else if (drpCustomercity.Text == "" || drpCustomercity.Text == null || drpCustomercity.Text == "--Select City--")
            {
                Response.Write("<script>alert('Select City');</script>");
            }
            else
            {
                cn.Open();
                cmd = new SqlCommand("update OrderDetail set OrderDate='" + txtOrderDate.Text + "', ExpectedDeliveryDate='" + txtExpDelDate.Text + "', CustomerName='" + txtCustomerName.Text + "', CustomerAddress='" + txtCustomerAddress.Text + "', CustomerState='" + drpCustomerState.Text + "', CustomerCity='" + drpCustomercity.Text + "', CustomerPhone='" + txtCustomerPhone.Text + "', CustomerEmail='" + txtCustomerEmail.Text + "', ItemName='" + txtItemName.Text + "', ItemDescription='" + txtItemDescription.Text + "', ItemUnitPrice='" + txtItemUnitPrice.Text + "', ItemQuantity='" + txtItemQuantity.Text + "', ItemTotalPrice='" + txtItemTotalPrice.Text + "' where OrderID='" + txtOrderID.Text + "' ", cn);
                cmd.ExecuteNonQuery();
                //SendMail();
                readonlycontroltrue();
                Response.Redirect("EditOrder.aspx");
            }
        }

        protected void drpCustomerState_SelectedIndexChanged(object sender, EventArgs e)
        {
            cn.Open();
            string city = string.Empty;
            SqlCommand cmd1 = new SqlCommand("select  distinct CityName from City where StateName='" + drpCustomerState.Text + "'", cn);
            SqlDataReader rdr1 = cmd1.ExecuteReader();
            if (rdr1.HasRows)
            {
                drpCustomercity.Items.Clear();
                drpCustomercity.Items.Add("--Select City--");
                while (rdr1.Read())
                {
                    city = rdr1[0].ToString();
                    drpCustomercity.Items.Add(city);
                }
            } rdr1.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("AdminLogin.aspx");
        }
    }
}