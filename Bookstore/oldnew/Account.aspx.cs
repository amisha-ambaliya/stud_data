using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Web.Configuration;


public partial class Account : System.Web.UI.Page
{
    OleDbConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        String x = WebConfigurationManager.ConnectionStrings["mycon"].ConnectionString.ToString();
        con = new OleDbConnection(x);
        if (!IsPostBack)
        {
            if (Session["uid"] != null)
            {
                pnlviewdetail.Visible = true;
                showdata();
            }
            else
            {
                Response.Redirect("Login.aspx");
                pnlviewdetail.Visible = false;
                pnlupdate.Visible = false;
            }

        }
    }

    public void showdata()
    {
        String usernm = Convert.ToString(Session["uid"]);

        string cmd = "Select * from register_tb where u_name='" + usernm + "'";
        OleDbCommand cmd1 = new OleDbCommand(cmd, con);
        OleDbDataAdapter da = new OleDbDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {

           // pnllogin.Visible = false;
            pnlviewdetail.Visible = true;
            pnlupdate.Visible = false;
            Label1.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
            Label2.Text = ds.Tables[0].Rows[0].ItemArray[3].ToString();
            Label3.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();
            Label4.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();
            Label5.Text = ds.Tables[0].Rows[0].ItemArray[6].ToString();
            Label6.Text=ds.Tables[0].Rows[0].ItemArray[1].ToString();
            Label8.Text = ds.Tables[0].Rows[0].ItemArray[7].ToString();
            
            Label10.Text = ds.Tables[0].Rows[0].ItemArray[9].ToString();
            Label9.Text = ds.Tables[0].Rows[0].ItemArray[8].ToString();
            Label7.Text = ds.Tables[0].Rows[0].ItemArray[10].ToString();
            Label11.Text = ds.Tables[0].Rows[0].ItemArray[11].ToString();
            Label12.Text = ds.Tables[0].Rows[0].ItemArray[12].ToString();
            Label13.Text = ds.Tables[0].Rows[0].ItemArray[13].ToString();
            //Label11.Text = ds.Tables[0].Rows[0].ItemArray[11].ToString();
            //Label1.Text = ds.Tables[0].Rows[0].ItemArray[14].ToString();

        }


    }

    protected void Button3_Click(object sender, EventArgs e)
    {
         String s;
        if(RadioButton1.Checked)
        {
            s="Male";
        }
        else
        {
            s="Female";
        }
        String str = "update register_tb set title='"+ d1.Text +"',f_name='" + TextBox1.Text + "',l_name='" + TextBox5.Text + "',gen='" + s + "',addr='" + TextBox4.Text + "',city='" + TextBox9.Text + "',c_no=" + Convert.ToInt32(TextBox3.Text) + ",u_name='" + TextBox2.Text + "',gmail='" + TextBox8.Text + "',pass='"+ TextBox6.Text +"',c_pass='"+ TextBox7.Text +"',ques='"+ que.Text +"',ans='"+ TextBox11.Text +"', where u_name='" + Convert.ToString(Session["uid"]) + "'";
        OleDbCommand c1 = new OleDbCommand(str,con);
        con.Open();
                                                                                                                                                                                                                                                                                                                                                                                               
       c1.ExecuteNonQuery();
        showdata();
        con.Close();
        //showdata();
        pnlviewdetail.Visible = true;
        pnlupdate.Visible = false;
        
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        String usernm = Convert.ToString(Session["uid"]);
        pnlupdate.Visible = true;
        pnlviewdetail.Visible = false;
        String g;
        String cmd = "Select * from register_tb where u_name='" + usernm + "'";
        OleDbCommand cmd1 = new OleDbCommand(cmd, con);
        OleDbDataAdapter da = new OleDbDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            TextBox1.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
            TextBox5.Text = ds.Tables[0].Rows[0].ItemArray[3].ToString();
            g = ds.Tables[0].Rows[0].ItemArray[4].ToString();
            TextBox4.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();
            TextBox9.Text = ds.Tables[0].Rows[0].ItemArray[6].ToString();
            TextBox3.Text = ds.Tables[0].Rows[0].ItemArray[7].ToString();
            TextBox8.Text = ds.Tables[0].Rows[0].ItemArray[9].ToString();
            TextBox2.Text = ds.Tables[0].Rows[0].ItemArray[8].ToString();
            TextBox6.Text = ds.Tables[0].Rows[0].ItemArray[10].ToString();
            TextBox7.Text = ds.Tables[0].Rows[0].ItemArray[11].ToString();
            que.Text = ds.Tables[0].Rows[0].ItemArray[12].ToString();
            TextBox11.Text = ds.Tables[0].Rows[0].ItemArray[13].ToString();

            //TextBox6.Text = ds.Tables[0].Rows[0].ItemArray[11].ToString();
            if (g == "Male")
            {
                RadioButton1.Checked = true;
            }
            else
            {
                RadioButton2.Checked = true;
            }
        }
   
    }
   
}