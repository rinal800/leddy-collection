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
public partial class forgotpass : System.Web.UI.Page
{
    SqlConnection cn;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);

    }

   
       

    protected void Button1_Click(object sender, EventArgs e)
    {
        string qry = "select pass from register where email='" + TextBox3.Text + "'";
        SqlCommand cmd = new SqlCommand(qry, cn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        da.Fill(dt);
        cn.Open();

        string pass = "";
        foreach (DataRow dr in dt.Rows)
        {

            pass = dr[0].ToString();

        }

        string fromaddr = "ruhibhanderi1211@gmail.com";
        string toaddr = TextBox3.Text;
        string password = "jenil@1211";
        MailMessage msg = new MailMessage();
        msg.Subject = "antique";
        msg.From = new MailAddress(fromaddr);



        string textbody = "<table border=" + 1 + ">";
        textbody += "<tr><td>password</td><td>" + pass + "</td></tr>";
        

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
        Response.Write("<script>alert('your password is sent to your register  email address.');</script>");

    }
}




