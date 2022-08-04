using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class viewproduct : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
    }



    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox t1 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");
        TextBox t2 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2");
        TextBox t3 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3");
        TextBox t4 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4");
        TextBox t5 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5");
       
        FileUpload f = (FileUpload)GridView1.Rows[e.RowIndex].FindControl("FileUpload1");
        Label l = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
        Image i = (Image)GridView1.Rows[e.RowIndex].FindControl("Image2");
        string fn;
        if(f.HasFile)
        {
            fn = f.FileName;
        }
        else
        {
            fn = l.Text;
        }
        

       string qry = "update product set cnm='"+t1.Text+"',pid="+t2.Text+",price='"+t3.Text+"',stock='"+t4.Text+"',image='"+fn.ToString()+"',description='"+t5.Text+"' where id=" +l.Text;
        SqlCommand cmd = new SqlCommand(qry, cn);
        cn.Open();
         
        int res = cmd.ExecuteNonQuery();
        if(res > 0)
        {
            //  f.SaveAs(Server.MapPath("~\\images" + "\\" + fn));
            GridView1.EditIndex = -1;
            Response.Write("<script>alert('Succesfully Product Updated...');</script>");

        }
        else
        {
            Response.Write("<script>alert(' Not Succesfully Product Updated...');</script>");
        }
        cn.Close();
    }

}