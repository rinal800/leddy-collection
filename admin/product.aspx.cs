using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_product : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string fn = "";
        if (FileUpload1.HasFile)
        {
            fn = FileUpload1.FileName;

        }
        string qry = "insert into product(cnm,pid,price,stock,image,description)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox5.Text + "','" +fn+ "','" + TextBox4.Text +"')";
       //Response.Write(qry);
       SqlCommand cmd = new SqlCommand(qry, cn);

        cn.Open();
        int res = cmd.ExecuteNonQuery();
        if (res > 0)
        {
            FileUpload1.SaveAs(Server.MapPath("images" + "\\" + fn));
            Response.Write("<script> alert('Sucessfully Add Product...');</script>");
            Response.Write("<script>window.location.href = 'Default1.aspx'</script>");
            // Response.Redirect("~//Admin/Default.aspx");
        }
        else
        {
            Response.Write("<script>alert('Not Sucessfully Add Product...');</script>");
            Response.Write("<script>window.location.href = 'product.aspx'</script>");
        }
        cn.Close();
    }
}