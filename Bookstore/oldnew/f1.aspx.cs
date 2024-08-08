using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.OleDb;


public partial class f1 : System.Web.UI.Page
{
    OleDbConnection cn;
    OleDbCommand cmd;
    OleDbDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        String x = WebConfigurationManager.ConnectionStrings["mycon"].ConnectionString.ToString();
        cn = new OleDbConnection(x);
        if (!IsPostBack)
            t1.Focus();
    }
    protected void btn_login(object sender, EventArgs e)
    {
        cn.Open();
        string sel = "SELECT pass  FROM  register_tb where (u_name = '" + t1.Text + "') AND (ques = '" + que.Text + "') AND (ans = '" + t2.Text + "')";
        cmd = new OleDbCommand(sel, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            Label1.Visible = true;
            t2.Visible = true;
            t2.Text = dr[0].ToString();
            l3.Text = "Your password";
            t1.Text = "";
            t2.Text = "";
            //  OleDbCommand cmd1 = new OleDbCommand("update  register_tb set pass='" + t2.Text + "',c_pass='" + TextBox1.Text + "' where u_name='" + t1.Text + "'", cn);
            Response.Redirect("forgot_pw.aspx");
        }
        else
        {
            // Response.Write("<script>window.alert('plz enter correct information')</script>");
            l3.Visible = true;
            l3.Text = "plz enter correct information";
            t1.Text = "";
            t2.Text = "";
            que.Text = "";

        }
        cn.Close();
    }
    protected void btn_reset(object sender, EventArgs e)
    {
        t1.Text = "";
        t2.Text = "";
        que.Text = "";
    }
}