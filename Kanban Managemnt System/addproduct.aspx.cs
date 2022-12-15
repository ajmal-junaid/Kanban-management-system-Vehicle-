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
    public partial class adpro : System.Web.UI.Page
    {
         connectionk c;
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new connectionk();
              if(!Page.IsPostBack )
            bindproject();
            bindvehicletype();
        }

        void bindproject()
        {
            drpproject.Items.Clear();
            SqlCommand a = new SqlCommand ("select * from project", c.open());
            SqlDataReader r = a.ExecuteReader();
            while (r.Read())
            {
                drpproject.Items.Add(r["name"].ToString());
            }
            r.Close();
            c.close();

        }
        void bindvehicletype()
        {
            drpvtype.Items.Clear();
            SqlCommand b = new SqlCommand ("select * from vehicletype", c.open());
            SqlDataReader t = b.ExecuteReader();    
            while (t.Read())
            {
                drpvtype.Items.Add(t["name"].ToString());
            }
            t.Close();
            c.close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int vid=0, pid=0,prodid=0,trmid=0;
            SqlCommand cc = new SqlCommand ("select * from project where name ='" + drpproject.SelectedValue + "'", c.open());
             SqlDataReader u = cc.ExecuteReader();
           
            while (u.Read())
            {
                vid = int.Parse(u["projectid"].ToString());
            }
            u.Close();
            c.close();
            SqlCommand d = new SqlCommand("select * from vehicletype where name ='" + drpvtype.SelectedValue + "'", c.open());
            SqlDataReader w = d.ExecuteReader();
            while (w.Read())
            {
               pid = int.Parse(w["vehicletypeid"].ToString());
            }
            w.Close();
            c.close();
            SqlCommand q = new SqlCommand ("insert into product values('" + nam.Text + "' ," + pid + "," + vid + ",'Initial')", c.open());
            int k = q.ExecuteNonQuery();
            c.close();
            SqlCommand dd = new SqlCommand("select max(productid) as max from product", c.open());
            SqlDataReader ww = dd.ExecuteReader();
            while (ww.Read())
            {
                prodid = int.Parse(ww["max"].ToString());
            }
            ww.Close();
            c.close();
            SqlCommand qq = new SqlCommand("insert into transactionmaster values(" + prodid + ",'" + DateTime.Today.ToShortDateString () + "','Initial')", c.open());
            qq.ExecuteNonQuery();
            c.close();
            SqlCommand ddd = new SqlCommand("select max(trmid) as max from transactionmaster", c.open());
            SqlDataReader www = ddd.ExecuteReader();
            while (www.Read())
            {
                trmid = int.Parse(www["max"].ToString());
            }
            www.Close();
            c.close();
            SqlCommand qqq = new SqlCommand("insert into transactiondetails values('" + DateTime.Today.ToShortDateString() + "','Initial','Initial',"+trmid+")", c.open());
            qqq.ExecuteNonQuery();
            c.close();
            if (k > 0)
            {
                Response.Write("<script language=javascript>alert('added succesfully')</script>");
            }
            else
            {
                Response.Write("<script language=javascript>alert('unsuccesfull attempt')</script>");
            }
            
        }
    }
}
