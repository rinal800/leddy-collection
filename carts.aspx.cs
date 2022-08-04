using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class carts : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        if (Session["user"] == null)
        {
            Response.Redirect("~//login.aspx");

        }
    }



    protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
    {
        TextBox t = (TextBox)e.Item.FindControl("TextBox1");
        HiddenField h1 = (HiddenField)e.Item.FindControl("HiddenField1");
        HiddenField h2 = (HiddenField)e.Item.FindControl("HiddenField2");
        int qty = Convert.ToInt16(t.Text);
        int price = Convert.ToInt16(h2.Value);
        string str = "update cart1 set qty=" + qty + ",total=" + (qty * price) + " where id=" + h1.Value;
        SqlCommand cmd = new SqlCommand(str, cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        DataList1.DataBind();
        
        
    }

    protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        TextBox t = (TextBox)e.Item.FindControl("TextBox1");
        HiddenField h1 = (HiddenField)e.Item.FindControl("HiddenField1");
        string str = "delete from cart1 where id=" + h1.Value;
        SqlCommand cmd = new SqlCommand(str, cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        DataList1.DataBind();
    }
    protected void button_click(object sender, EventArgs e)
    {
        int bn;
      
        string str = "select max(orderno) from cart2";
        SqlCommand cmd1 = new SqlCommand(str, cn);
        cn.Open();
        bn = Convert.ToInt16(cmd1.ExecuteScalar());
        cn.Close();
        bn = bn + 1;
        string qr = "select * from cart1 where uname='" + Session["user"] +"'";
        SqlCommand cmd = new SqlCommand(qr,cn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
       
        String s1, s2, s3, s4, s5, s6, s7;
        foreach(DataRow dr in dt.Rows)
        {
            s1 = dr[1].ToString();
            s2 = dr[2].ToString();
            s3 = dr[3].ToString();
            s4 = dr[4].ToString();
            s5 = dr[5].ToString();
            s6 = dr[6].ToString();
            s7 = dr[7].ToString();
           

            string qr2 = "insert into  cart2(pid,uname,img,cnm,price,qty,total,orderno,orderstatus) values(" + s1+",'"+s2+"','"+s3+"','"+s4+"',"+s5+","+s6+","+s7+","+bn+",0)";
           // Response.Write(qr2);
            SqlCommand cmd2 = new SqlCommand(qr2, cn);
            cn.Open();
            cmd2.ExecuteNonQuery();
           
            string qr3 = "delete from cart1 where uname='" + Session["user"] + "'";
            SqlCommand cmd3 = new SqlCommand(qr3, cn);
            cmd3.ExecuteNonQuery();
            cn.Close();

            Response.Redirect("\\checkout.aspx");

        }
       
    }
}
