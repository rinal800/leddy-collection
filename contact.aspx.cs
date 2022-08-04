using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class contact : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string qry = "insert into contact(name,email,contact,message) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
        SqlCommand cmd = new SqlCommand(qry, cn);
        cn.Open();
        int res = cmd.ExecuteNonQuery();

        if(res > 0)
        {
            Response.Write("<script>alert('success');</script>");
        }
        else
        {
            Response.Write("<script>alert('not success');</script>");
        }
        cn.Close();
    }

}