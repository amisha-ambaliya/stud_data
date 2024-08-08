using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Web.Configuration;
public partial class ch : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        String x1 = WebConfigurationManager.ConnectionStrings["mycon"].ConnectionString.ToString();
        con = new OleDbConnection(x1);

        detail();
        Label5.Text = "<h3>" + Request.QueryString["tot"] + "</h3>";
        if (!IsPostBack)
        {
            con.Open();
            String sid = Session["uid"].ToString();
            Session.Timeout = 60;
            String s1 = "select * from ADDTOCART1 where unm='" + sid + "'";
            // SqlDataAdapter da1 = new SqlDataAdapter(s1, con);
            OleDbDataAdapter da1 = new OleDbDataAdapter(s1, con);
            DataTable dt = new DataTable();
            da1.Fill(dt);

            int tot_row = Int32.Parse(dt.Rows.Count.ToString());
            int x = 0;

            while (x < tot_row)
            {
                Literal2.Text = Literal2.Text + "<tr><td>" + dt.Rows[x]["pname"] + "</td><td>" + dt.Rows[x]["qui"] + "</td><td>" + dt.Rows[x]["total"] + "</td></tr>";

                x++;
            }
            con.Close();
        }

    }
   
    protected void delete1()
    {
        con.Open();
        OleDbDataAdapter da = new OleDbDataAdapter("delete from ADDTOCART1", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();

    }
    protected void detail()
    {
        if (Session["uid"] != null)
        {
            con.Open();
            String nm = Session["uid"].ToString();
            String ss = "select * from register_tb where u_name='" + nm + "'";
            OleDbDataAdapter da = new OleDbDataAdapter(ss, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            TextBox1.Text = dt.Rows[0][8].ToString();
            TextBox2.Text = dt.Rows[0][9].ToString();
            TextBox3.Text = dt.Rows[0][7].ToString();
            TextBox4.Text = dt.Rows[0][5].ToString();
            con.Close();
        }
        else
        {
            Response.Redirect("view1.aspx");
        }
    }
    protected void print()
    {
        con.Open();
        OleDbDataAdapter da = new OleDbDataAdapter("select * from Order1", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        String n = dt.Rows[0][0].ToString();
        Response.Write("<script>alert('OrderId :')</script>");
        con.Close();
    }
    /*
    protected void btn1(object sender, EventArgs e)
    {
        String t1=TextBox1.Text;
        String t2=TextBox2.Text;
        String t3=TextBox3.Text;
        String t4=TextBox4.Text;
        int id = 101;
        String sss = Session["uid"].ToString();
        if (sss != null)
        {
            con.Open();
            String dat = DateTime.Now.ToShortDateString().ToString();
            String status = "Pending";
            id++;

            String s = "INSERT INTO Order1 values(" + id + ",'" + t1 + "','" + t2 + "'," + t3 + ",'" + t4 + "','" + Literal2.Text + "','" + lt1 + "','" + status + "','" + dat + "')";
            //String ss = "insert into Order1 values(" + id + ",'" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + ", '" + TextBox4.Text + "','" + Literal2.Text + "', '" + lt1.Text + "','" + status + "','" + dat + "')";
            //String ss = "insert into Order1 values("+id+",'" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + ",'" + TextBox4.Text + "','" + Literal2.Text + "','" +  Literal1.Text + "','"+status+ "','" + dat + "')";

            OleDbDataAdapter da = new OleDbDataAdapter(s, con);

            DataTable dt = new DataTable();
            da.Fill(dt);
            //    cmd = new OleDbCommand("update product set stock='" + qty + "'where id=" +id + "", con);

            // cmd = new OleDbCommand("update ass4 set nm='"+txtnm.Text+"',ge='"+r11+"',std='"+d1.SelectedItem.ToString()+"',ad='"+t3.Text+"',hb='"+ch1.SelectedItem.ToString()+"'where rno="+txtid.Text+"",con);
            //   cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("Home.aspx");
            con.Close();
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
        print();
        delete1();
       
    }*/
   
    protected void btn1(object sender, EventArgs e)
    {
        int id = 101;
        String sss = Session["uid"].ToString();
        if (sss != null)
        {
            con.Open();
            String dat = DateTime.Now.ToShortDateString().ToString();
            String status = "Pending";
            id++;

            String ss = "insert into Order1 values(" + id + ",'" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + ", '" + TextBox4.Text + "','" + Literal2.Text + "', '" + Label5.Text + "','" + status + "','" + dat + "')";
            //String ss = "insert into Order1 values("+id+",'" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + ",'" + TextBox4.Text + "','" + Literal2.Text + "','" +  Literal1.Text + "','"+status+ "','" + dat + "')";

            OleDbDataAdapter da = new OleDbDataAdapter(ss, con);

            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            Response.Redirect("Info.aspx");
            con.Close();
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
        print();
        delete1();
       
    }
}