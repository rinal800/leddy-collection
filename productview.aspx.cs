using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using AjaxControlToolkit;

public partial class productview : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        if (!this.IsPostBack)
        {
            //Rating Rating1 = (Rating)FormView1.FindControl("Rating1");
            //Label lblRatingStatus = (Label)FormView1.FindControl("lblRatingStatus");

            DataTable dt = this.GetData("SELECT ISNULL(AVG(Rating), 0) AverageRating, COUNT(Rating) RatingCount FROM UserRatings where pid=" + Request.QueryString["id"]);
            Rating1.CurrentRating = Convert.ToInt32(dt.Rows[0]["AverageRating"]);
            lblRatingStatus.Text = string.Format("{0} Users have rated. Average Rating {1}", dt.Rows[0]["RatingCount"], dt.Rows[0]["AverageRating"]);
        }
    }
    private DataTable GetData(string query)
    {
        DataTable dt = new DataTable();
        string constr = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand(query))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    sda.Fill(dt);
                }
            }
            return dt;
        }
    }
    protected void OnRatingChanged(object sender, RatingEventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("INSERT INTO UserRatings VALUES(@Rating,@pid)"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@Rating", e.Value);
                    cmd.Parameters.AddWithValue("@pid", Request.QueryString["id"]);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }
        Response.Redirect(Request.Url.AbsoluteUri);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from product where id=" + Request.QueryString["id"], cn);
        cn.Open();
        int total = 0, pid = 0, qt = 0, price = 0;
        string img = "", cnm = "";
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            TextBox t1 = (TextBox)FormView1.FindControl("TextBox1");
            total = Convert.ToInt16(dr[3].ToString()) * Convert.ToInt16(t1.Text);
            Response.Write(" <script>alert(" + total + ");</script>");
            pid = Convert.ToInt16(dr[2].ToString());
            img = dr[5].ToString();
            cnm = dr[1].ToString();
            qt = Convert.ToInt16(t1.Text);
            price = Convert.ToInt16(dr[3]);

        }
        cn.Close();

        string qry = "insert into cart1(pid,uname,image,cnm,price,qty,total) values (" + pid + ",'"+Session["user"]+"','" + img + "','" + cnm + "'," + price + "," + qt + "," + total + ")";
        SqlCommand cmd1 = new SqlCommand(qry, cn);
        cn.Open();
        int res = cmd1.ExecuteNonQuery();
       
        if (res > 0)
        {
            Response.Redirect("~\\carts.aspx");
        }
        cn.Close();
    }

}

   