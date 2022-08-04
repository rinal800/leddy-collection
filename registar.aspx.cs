using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class registar : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string q = "select email from register where  email='" + TextBox2.Text + "'";
        SqlCommand c = new SqlCommand(q, cn);
        cn.Open();
        SqlDataReader dr = c.ExecuteReader();
        if (dr.Read())
        {

            Response.Write("<script>alert('email is required');</script>");
            cn.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
        else
        {
            cn.Close();

            string qry = "insert into register(name,email,pass,contact,usertype)values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','user')";
            SqlCommand cmd = new SqlCommand(qry, cn);
            cn.Open();
            int res = cmd.ExecuteNonQuery();
            if (res > 0)
            {
                Session["user"] = TextBox1.Text;
                Session["nm"] =dr[1].ToString();
                Response.Write("<script>alert('sucess');</script>");
                Response.Write("<script> window.location.href='home.aspx'</script>");
                Response.Redirect("~\\login.aspx");

            }
            else
            {
                Response.Write("<script>alert('not sucess');</script>");
              
            }
            cn.Close();
        }
    }
    
}