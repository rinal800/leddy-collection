using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.IO;
public partial class checkout : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    
    {
        if (Session["user"] == null)
        {
            Response.Redirect("~//login.aspx");

        }
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        string str = "select * from register where email='jullybhaliya@gmail.com'";
        SqlCommand cmd1 = new SqlCommand(str, cn);
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataTable dt = new DataTable();
        da.Fill(dt);
        cn.Open();
        foreach (DataRow dr in dt.Rows)
        {

            TextBox5.Text = dr[4].ToString();
            TextBox6.Text = dr[2].ToString();
        }
        cn.Close();


        //String qr2 = "insert into cart2(id,fname,username,img,qty,price,total,billno) values('" + s1 + "','" + s2 + "','" + s3 + "','" + s4 + "'," + s5 + "," + s6 + "," + s7 + "," + btn + ")";
        //SqlCommand cmd2 = new SqlCommand(qr2, cn);
        //cmd2.ExecuteNonQuery();

        
        HiddenField h1 = (HiddenField)FormView1.FindControl("HiddenField1");
        int total = Convert.ToInt32(h1.Value);
        int t = 0;
        if (total < 5000)
        {
            t = 10;
        }
        else if (total >= 5000 && total <= 50000)
        {
            t = 50;
        }
        else if (total >= 50000 && total <= 500000)
        {
            t = 1000;
        }
        Label1.Text = t.ToString();
        int tot = total + t;
        Label2.Text = tot.ToString();
        cn.Close();

        String qry2 = "select * from bill where EmailAddress='" + Session["user"] + "' ";
        SqlCommand cmd = new SqlCommand(qry2, cn);
        cn.Open();
        SqlDataAdapter d1 = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        d1.Fill(ds);
        int r = ds.Tables[0].Rows.Count - 1;

        
        TextBox3.Text = ds.Tables[0].Rows[r]["city"].ToString();
        TextBox7.Text = ds.Tables[0].Rows[r]["country"].ToString();
        TextBox4.Text = ds.Tables[0].Rows[r]["zip"].ToString();
        cn.Close();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        int bn;

       
        string qry = "select max(billno) from bill";
        SqlCommand cmd1 = new SqlCommand(qry, cn);
        cn.Open();
        bn = Convert.ToInt16(cmd1.ExecuteScalar());
        bn = bn + 1;
        cn.Close();

        string t = "";
        string qr = "select orderno from cart2 where uname='test'";
        SqlCommand cmd = new SqlCommand(qr, cn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        cn.Open();
        foreach (DataRow dr in dt.Rows)
        {
            t = t + dr[0].ToString() + ",";
        }
        cn.Close();
        HiddenField h1 = (HiddenField)FormView1.FindControl("HiddenField1");
        HiddenField h2 = (HiddenField)FormView1.FindControl("HiddenField2");
        int total = Convert.ToInt32(h1.Value)+Convert.ToInt32(Label1.Text);
        //Response.Write(total);
        string date = System.DateTime.Now.ToShortDateString();
       
        string qry3 = " update cart2 set orderstatus=1 where uname='" + Session["user"].ToString() + "'";
        SqlCommand cmd3 = new SqlCommand(qry3, cn);
        cn.Open();
        cmd3.ExecuteNonQuery();
        cn.Close();

        string qry2 = "insert into bill(uname,firstname,lastname,country,city,zip,phone,emailaddress,date,total,billno,orderno) values('test','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox7.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + date + "'," + total + "," + bn + ",'" + t + "')";
        SqlCommand cmd2 = new SqlCommand(qry2, cn);
        cn.Open();
        int res = cmd2.ExecuteNonQuery();
        if (res > 0)
        {
            string fromaddr = "collectionleddy@gmail.com";
            string toaddr = TextBox6.Text;
            string password = "leddycollectionleddy";

            MailMessage msg = new MailMessage();
            msg.Subject = "leddy collection";
            msg.From = new MailAddress(fromaddr);

            string textbody = "<table border=" + 1 + ">";
            textbody += "<tr><td>bill.no.</td><td>" + bn + "</td></tr>";
            textbody += "<tr><td>bill.total.</td><td>" + total + "</td></tr>";
            textbody += "<tr><td>bill.date.</td><td>" + date + "</td></tr>";

            textbody += "</table>";
            msg.Body = textbody;
            msg.IsBodyHtml = true;
            msg.To.Add(new MailAddress(toaddr));
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.UseDefaultCredentials = false;
            smtp.EnableSsl = true;
            NetworkCredential nc = new NetworkCredential(fromaddr, password);
            smtp.Credentials = nc;
            smtp.Send(msg);
          
            Response.Write("<script>alert('your bill is sent to your register email address.');</script>");
            Response.Redirect("\\thx.aspx");
        }
        else
        {
            Response.Write("<script>alert('not insert....');</script>");
        }
        cn.Close();
    }
}


       
    
  

    
    
