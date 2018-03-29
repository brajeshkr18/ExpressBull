using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Shippink_Kart.Admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["expressConnectionString"].ConnectionString);
        SqlCommand cmd;
        SqlDataReader rdr;

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string user = string.Empty;
            try
            {
                cn.Open();
                cmd = new SqlCommand("Select * from Details where Email='"+txtusername.Text+"' and Password='"+txtpassword.Text+"'",cn);
                rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        user = rdr["UserName"].ToString();
                        Session["User"] = user;

                        //Response.Write(Session["User"].ToString());
                        Response.Redirect("~/Admin/Index.aspx", false);
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid UserName or Password ');</script>");
                }
               
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Sorry Try Again');</script>");
            }
            finally
            {
                cn.Close();
            }
        }
    }
}