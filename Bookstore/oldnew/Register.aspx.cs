using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Web.Configuration;


public partial class Register : System.Web.UI.Page
{
    OleDbConnection cn;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataTable dt;
    OleDbDataReader dr;
    int id = 0;
    String id1;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        String x = WebConfigurationManager.ConnectionStrings["mycon"].ConnectionString.ToString();
        cn = new OleDbConnection(x);
        cn.Open();

        if (!IsPostBack)
        {
            t1.Focus();
        }

        cmd = cn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT max(id)  FROM register_tb";



        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            id = dr[0].ToString().Length == 0 ? 0 : int.Parse(dr[0].ToString());

        }
        id = id + 1;
        id1 = id.ToString();
        dr.Dispose();

        cn.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
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
        String tl1 = t1.Text;
        String fname = fnm.Text;
        String lname = lnm.Text;
        String addr1 = add1.Text;
        String city = c1.Text;
        String cn_no = cn1.Text;
        String gmail = g1.Text;
        String username = unm.Text;
        String pw = p1.Text;
        String c_pw = cp1.Text;
        String q1 = que.Text;
        String ans1 = ans.Text;
        String sdate = DateTime.Now.ToString();
        cn.Open();

       
        cmd = new OleDbCommand("Select * From register_tb Where u_name='" + username + "'", cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows == true)
        {
            dr.Close();
            cn.Close();

            Response.Write("<script>alert('User Name Already Exist....!')</script>");
            t1.Focus();
        }
        else
        {
            dr.Close();
            String s = "insert into register_tb values(" + id + ",'" + tl1 + "','" + fname + "','" + lname + "','" + gender + "','" + addr1 + "','" + city + "','" + cn_no + "','" + username + "','" + gmail + "','" + pw + "','" + c_pw + "','"+ q1 +"','"+ ans1 +"')";
            cmd = new OleDbCommand(s, cn);
            cmd.ExecuteNonQuery();
            Response.Redirect("Login.aspx");
            cn.Close();
            
        }
  
        cn.Close();

    }
    
}