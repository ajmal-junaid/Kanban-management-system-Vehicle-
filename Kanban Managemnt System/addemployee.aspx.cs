using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace COPY
{
    public partial class addemployee : System.Web.UI.Page
    {
        connectionk c;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new connectionk();
            con = c.open();
                 }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            string sd = "";
            if (male.Checked == true)
            {
                sd = "MALE";
            }
            else if (female.Checked == true)
            {
                sd = "FEMALE";
            }
            else if (transgender.Checked == true)
            {
                sd = "TRANSGENDER";
            }
           
            SqlCommand i = new SqlCommand("insert into employee values('" + empid.Text + "','" + empname.Text + "','" +sd+ "','" + empadr.Text + "','" + empema.Text + "','" + txtusr.Text + "')", con);
           int k = i.ExecuteNonQuery();
            SqlCommand j = new SqlCommand("insert into logindetails values('" + txtusr.Text + "','" + txtpas.Text + "','employee','Pending')", con);
            int p = j.ExecuteNonQuery();

            if (p > 0 && k > 0)
            {
                Response.Write("<script language=javascript>alert('registered succesfully')</script>");
            }
            else
            {
                Response.Write("<script language=javascript>alert('unsuccesfull attempt')</script>");
            }
            con.Close();
            c.close();


        }

        //protected void male_CheckedChanged(object sender, EventArgs e)
        //{
        //    con.Open();
        //    SqlCommand q = new SqlCommand("insert into employee values('" + empgen.Text + "')", con);
        //    int r = q.ExecuteNonQuery();
        //    con.Close();
        //}
    }
}