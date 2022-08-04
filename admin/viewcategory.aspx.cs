using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class viewcategory : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);

    }


    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox t1 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");
        FileUpload f = (FileUpload)GridView1.Rows[e.RowIndex].FindControl("FileUpload1");
        Label l = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
        Image i = (Image)GridView1.Rows[e.RowIndex].FindControl("Image2");
        Literal lt = (Literal)GridView1.Rows[e.RowIndex].FindControl("Literal1");
        string fn;
        if(f.HasFile)
        {
            fn = f.FileName;
        }
        else
        {
            fn = lt.Text;
        }
        string qry = "update category set cnm='" + t1.Text + "',image='" + fn.ToString() + "' where id=" + l.Text;

       // Response.Write(qry);
      SqlCommand cmd = new SqlCommand(qry, cn);

        cn.Open();

        int res = cmd.ExecuteNonQuery();
        if(res > 0)

        {
            f.SaveAs(Server.MapPath("~\\images\\" + fn));
            Response.Write("<script> alert('Succesfully Category Updated...');</script>");
            GridView1.EditIndex = -1;

        }
        else
        {
            Response.Write("<script> alert('Not Succesfully Category Updated...');</script>");
        }
        cn.Close();
    }
}
    
