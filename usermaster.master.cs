using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class usermaster : System.Web.UI.MasterPage
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {

        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        if (Session["user"] == null)
        {
            Label1.Text = "welcome,guest";
            LinkButton1.Visible = true;
            LinkButton2.Visible = false;
            //Literal2.Text = "0";
        }
        else
        {
            Label1.Text = "welcome:"+ Session["name"];
            LinkButton2.Visible = true;
            LinkButton1.Visible = false;


            string qr = "select count(*) from cart1 where uname='" + Session["user"] + "'";
            SqlCommand cmd = new SqlCommand(qr, cn);
            cn.Open();
            int res = Convert.ToInt16(cmd.ExecuteScalar());
            Literal2.Text = res.ToString();
            cn.Close();
        }
    }
}
