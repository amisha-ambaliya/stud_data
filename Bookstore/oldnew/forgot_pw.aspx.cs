using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Data;
using System.Web.Configuration;

public partial class forgot_pw : System.Web.UI.Page
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
        string unm, pw;
        unm = t1.Text;
        pw = t2.Text;

        String s = "select * from register_tb where u_name='" + unm + "' ";
        OleDbDataAdapter da = new OleDbDataAdapter(s, cn);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count.Equals(1))
        {
                Session["uid"] = t1.Text;
                OleDbCommand cmd1 = new OleDbCommand("update  register_tb set pass='" + t2.Text + "',c_pass='"+TextBox1.Text+"' where u_name='" + t1.Text + "'", cn);
                cmd1.ExecuteNonQuery();
                Response.Redirect("Login.aspx");
              
        }
        else
        {
            l3.Visible = true;
            l3.Text = "plz enter correct information";
            t1.Text = "";
            t2.Text = "";
            TextBox1.Text = "";
        }
    
    }
   
    protected void btn_reset(object sender, EventArgs e)
    {
        t1.Text = "";
        t2.Text = "";
        TextBox1.Text = "";
    }
}