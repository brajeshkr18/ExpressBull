using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

namespace Shippink_Kart
{
    public partial class AddState : System.Web.UI.Page
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
            try
            {
                cn.Open();
                cmd = new SqlCommand("insert into State values(@StateName)", cn);
                cmd.Parameters.AddWithValue("@StateName", txtState.Text);
                int x = cmd.ExecuteNonQuery();
                if (x == 1)
                {
                    Response.Write("<script>alert('State Added SuccessFully');</script>");
                    txtState.Text = "";
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("AdminLogin.aspx");
        }
    }
}