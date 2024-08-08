using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Web.Configuration;

public partial class view1 : System.Web.UI.Page
{
    OleDbConnection con;
    String tot = "";
    OleDbCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        String x = WebConfigurationManager.ConnectionStrings["mycon"].ConnectionString.ToString();
        con = new OleDbConnection(x);
        con.Open();
        String unm1 = Session["uid"].ToString();
        String str = "select sum(total) from ADDTOCART1 where unm='" + unm1 + "'";
        OleDbDataAdapter da = new OleDbDataAdapter(str, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Label2.Text = "<h3>" + dt.Rows[0][0].ToString() + "</h3>";
        tot = dt.Rows[0][0].ToString();
        con.Close();
     
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("ch.aspx?tot="+tot);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Product.aspx");
    }
}