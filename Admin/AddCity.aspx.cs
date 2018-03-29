using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace Shippink_Kart
{
    public partial class AddCity : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["expressConnectionString"].ConnectionString);
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (drpstate.Text == "")
            {
                Response.Write("<script>alert('Select State');</script>");
            }
            else
            {
                try
                {
                    cn.Open();
                    cmd = new SqlCommand("insert into City values(@CityName,@StateName)", cn);
                    cmd.Parameters.AddWithValue("@StateName", drpstate.Text);
                    cmd.Parameters.AddWithValue("@CityName", txtCity.Text);
                    int x = cmd.ExecuteNonQuery();
                    if (x == 1)
                    {
                        Response.Write("<script>alert('City Added SuccessFully');</script>");
                        txtCity.Text = "";
                        //Response.Redirect("Index.aspx");
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Index.aspx");
        }
    }
}