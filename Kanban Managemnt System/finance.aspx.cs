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
    public partial class finance : System.Web.UI.Page
    {
        connectionk c;
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new connectionk();
            //  con = new SqlConnection("Data Source=(localdb)\\ProjectModels;Initial Catalog=kanban;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            if (!Page.IsPostBack)
                bindproject();
            
        }
        void bindproduct()
        {
            DropDownList2 .Items.Clear();
            SqlCommand b = new SqlCommand("select p.name from product p,project pr where p.projectid=pr.projectid and pr.name='" + DropDownList1.SelectedValue + "'", c.open());
            SqlDataReader t = b.ExecuteReader();
            while (t.Read())
            {
                DropDownList2 .Items.Add(t[0].ToString());
            }
            t.Close();
            c.close();
        }

        void bindproject()
        {
            DropDownList1 .Items.Clear();
            SqlCommand a = new SqlCommand("select * from project", c.open());
            SqlDataReader r = a.ExecuteReader();
            while (r.Read())
            {
               DropDownList1.Items.Add(r["name"].ToString());
            }
            r.Close();
            c.close();

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            bindproduct();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int vid = 0, pid = 0;
            SqlCommand cc = new SqlCommand("select * from project where name ='" + DropDownList1.SelectedValue + "'", c.open());
            SqlDataReader u = cc.ExecuteReader();

            while (u.Read())
            {
                vid = int.Parse(u["projectid"].ToString());
            }
            u.Close();
            c.close();
            SqlCommand d = new SqlCommand("select * from product where name ='" + DropDownList2.SelectedValue + "'", c.open());
            SqlDataReader w = d.ExecuteReader();
            while (w.Read())
            {
                pid = int.Parse(w["productid"].ToString());
            }
            w.Close();
            c.close();

            SqlCommand i = new SqlCommand("insert into costdetails values(" + vid + "," + pid + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')", c.open());
            int k = i.ExecuteNonQuery();
            c.close();
            if (k > 0)
            {
                Response.Write("<script language=javascript>alert('cost added succesfully')</script>");
            }
         }
        void calc()
        {

            float a = float.Parse(TextBox1.Text);
            float b = float.Parse(TextBox2.Text);
            float c = float.Parse(TextBox3.Text);
               TextBox4.Text = (a+b+c).ToString();
        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
           // calc();
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            //calc();
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
            calc();
        }
    }
}