using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Web.Configuration;

public partial class Login : System.Web.UI.Page
{
    OleDbConnection cn;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        String x = WebConfigurationManager.ConnectionStrings["mycon"].ConnectionString.ToString();
        cn = new OleDbConnection(x);
    }

    protected void btn_login(object sender, EventArgs e)
    {
        cn.Open();
        string unm, pw;
        unm = t1.Text;
        pw = t2.Text;

        String s = "select * from register_tb where u_name='" + unm + "' and pass='" + pw + "' ";
        OleDbDataAdapter da = new OleDbDataAdapter(s, cn);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count.Equals(1))
        {            
            Session["uid"] = t1.Text;
            Response.Redirect("Home.aspx");                        
            
                
        }
        else
        {
            Response.Write("<script>alert('Error :- Username and Password are wrong.  OR  Registration Now')</script>");
        }
    
    }

    protected void btn_for_pw(object sender, EventArgs e)
    {
       
    }
}