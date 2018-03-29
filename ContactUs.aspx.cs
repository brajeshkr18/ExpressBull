using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace Shippink_Kart
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {
                SendMail();
            }
            catch (Exception ex)
            {
                Response.Write("ERROR");
            }
            finally
            {

            }
        }
        public void SendMail()
        {
            try
            {
                SmtpClient clnt = new SmtpClient("smtp.gmail.com", 587);
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress(email_address.Value);
                // msg.To.Add("shivam1521.ss@gmail.com");
                msg.To.Add("infovencore@gmail.com");
                msg.Subject = "Enquiry";
                msg.IsBodyHtml = true;
                msg.Body = "<b>Name : </b>" + contact_name.Value +
                    "<br>" + "<b>Email : </b>" + email_address.Value +
                    "<br>" + "</b>Contact Number : </b>" + website.Value +
                    "<br>" + "<b>Subject : </b>" + subject.Value +
                    "<br>" + "<b>Message : </b>" + comments.Value +
                    "<br>";
                clnt.UseDefaultCredentials = false;
                clnt.EnableSsl = true;
                clnt.Credentials = new System.Net.NetworkCredential("infovencore@gmail.com", "info@vencore");
                clnt.Send(msg);
                msg = null;
                Response.Write("<script>alert('SuccessFully Send');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Failure Please try again');</script>");
            }

        }
    }
}