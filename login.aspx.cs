using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string qry = "select * from register where email='" + TextBox1.Text + "' and pass='" + TextBox2.Text + "'";
        SqlCommand cmd = new SqlCommand(qry, cn);
        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())

        {
            if (dr[5].ToString() == "user")
            {
               
                Response.Write("<script>alert('login success');</script>");
            Session["user"] = TextBox1.Text;
            Session["name"] = dr[1].ToString();
                Response.Redirect("~//default.aspx");

            }
            else
            {
                Session["user"] = TextBox1.Text;
                Session["name"] = dr[1].ToString();
                Response.Redirect("~//admin//Default1.aspx");
            }

        }
        else
        {
            Response.Write("<script> alert('Not Sucessfully'); </script>");
        }

        cn.Close();

    }


}