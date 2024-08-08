using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Web.Configuration;

public partial class Feedback : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataAdapter adp;
    DataTable dt;
    OleDbDataReader dr;
    int id = 0;
    string id1;

    protected void Page_Load(object sender, EventArgs e)
    {
        String x = WebConfigurationManager.ConnectionStrings["mycon"].ConnectionString.ToString();
        con = new OleDbConnection(x);

        if (!IsPostBack)
        {
            t1.Focus();
            cn1.Text = "";
            g1.Text = "";
            ms1.Text = "";
           // d1.Text = "";
        }
        con.Open();
        cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT max(ID)  FROM Feedback";
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            id = dr[0].ToString().Length == 0 ? 0 : int.Parse(dr[0].ToString());
        }
        id = id + 1;
        id1 = id.ToString();
        dr.Dispose();
        con.Close();
    }

    protected void btn_submit(object sender,EventArgs e)
    {
        String gender = "";
        if (rb1.Checked)
        {
            gender = "Male";
        }
        else
        {
            gender = "Female";
        }
        String name = t1.Text;
        String contact = cn1.Text;
        String gmail1 = g1.Text;
        String msg = ms1.Text;
        String sdate = DateTime.Now.ToString();
        String s = "insert into Feedback values(" + id1 + ",'" + name + "','" + gender + "'," + contact + ",'" + gmail1 + "','" + msg + "','" + sdate + "')";
        //String s = "insert into Feedback values(" + id1 + ",'" + name + "','" + gender + "'," + contact + ",'" + email + "','"+msg+"','" + sdate + "')";

        con.Open();
        cmd = new OleDbCommand(s, con);
        int a = cmd.ExecuteNonQuery();
        if (a > 0)
        {
            Response.Write("<script>alert('Thanks for your review...!')</script>");
        }
        else
        {
            Response.Write("<script>alert('Error :- Data is not Inserted...!')</script>");
        }
        t1.Text = "";
        cn1.Text = "";
        g1.Text = "";
        ms1.Text = "";
        rb1.Checked = false;
        rb2.Checked = false;
        con.Close();
    }

    protected void btn_reset(object sender, EventArgs e)
    {
        t1.Text = "";
        cn1.Text = "";
        g1.Text = "";
        ms1.Text = "";
        rb1.Checked = false;
        rb2.Checked = false;
    }
}