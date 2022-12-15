using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace COPY
{
    public partial class register : System.Web.UI.Page
    {
        connectionk cc;
        protected void Page_Load(object sender, EventArgs e)
        {
            cc = new connectionk();

                  }

        protected void Button1_Click(object sender, EventArgs e)
        {


        }

        protected void Txtuser_TextChanged()
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlCommand i = new SqlCommand("insert into logindetails values('" + Txtuser.Text + "','" + Txtpass.Text + "','"+DropDownList1.SelectedValue+"','Pending')", cc.open ());
            int k = i.ExecuteNonQuery();
            cc.close();
            SqlCommand j = new SqlCommand("insert into register values('" + txtmail.Text + "','" + Txtuser.Text + "')", cc.open());
            int p = j.ExecuteNonQuery();
            if (p > 0 && k > 0)
            {
                Response.Write("<script language=javascript>alert('registered succesfully')</script>");
            }
            else
            {
                Response.Write("<script language=javascript>alert('unsuccesfull attempt')</script>");
            }
            cc.close();


        }
    }
}