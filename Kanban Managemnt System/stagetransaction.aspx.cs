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
    public partial class stagetransaction : System.Web.UI.Page
    {
        connectionk c;
        int prodid = 0,trmid=0;
        string st = "",name="";

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand qq = new SqlCommand("update transactionmaster set trdate='" + DateTime.Today.ToShortDateString() + "',status='"+DropDownList1.SelectedValue+"' where trmid=" + int.Parse(TextBox2.Text) + "", c.open());
            qq.ExecuteNonQuery();
            c.close();
            SqlCommand qqq = new SqlCommand("insert into transactiondetails values('" + DateTime.Today.ToShortDateString() + "','"+TextBox1.Text+ "','" + DropDownList1.SelectedValue + "'," + int.Parse(TextBox2.Text) + ")", c.open());
            qqq.ExecuteNonQuery();
            c.close();

            SqlCommand du = new SqlCommand("update product set status='" + DropDownList1.SelectedValue + "' where productid =" + int.Parse(Label1.Text) + "", c.open());
            du.ExecuteNonQuery();
            c.close();
            Response.Redirect("viewstagetransaction.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            c= new connectionk();
           
            SqlCommand dd = new SqlCommand("select m.trmid,m.productid,p.name,m.status from transactionmaster m,product p where m.productid=p.productid and m.trmid="+int.Parse(Session["trmid"].ToString())+"", c.open());
            SqlDataReader ww = dd.ExecuteReader();
            while (ww.Read())
            {
                trmid = int.Parse(ww["trmid"].ToString());
                prodid = int.Parse(ww["productid"].ToString());
                st = ww["status"].ToString();
                name = ww["name"].ToString();

            }
            ww.Close();
            c.close();
            TextBox1.Text = st.ToString();
            TextBox2.Text =  trmid.ToString();
            TextBox3.Text = name.ToString();
            Label1.Text = prodid.ToString();
        }
    }
}