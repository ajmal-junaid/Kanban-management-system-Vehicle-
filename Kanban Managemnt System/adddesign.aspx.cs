using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;

namespace COPY
{
    public partial class adddesign : System.Web.UI.Page
    {
        connectionk c;
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new connectionk();
            if(!Page.IsPostBack )
            bindproject();
            
        }
        void bindproject()
        {
            drpproject.Items.Clear();
            SqlCommand a = new SqlCommand("select * from project", c.open());
            SqlDataReader r = a.ExecuteReader();
            while (r.Read())
            {
                drpproject.Items.Add(r["name"].ToString());
            }
            r.Close();
            c.close();

        }
        void bindproduct()
        {
            drpvtype.Items.Clear();
            SqlCommand b = new SqlCommand("select p.name from product p,project pr where p.projectid=pr.projectid and pr.name='"+drpproject.SelectedValue+"'", c.open());
            SqlDataReader t = b.ExecuteReader();
            while (t.Read())
            {
                drpvtype.Items.Add(t[0].ToString());
            }
            t.Close();
            c.close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int trmid = 0;
            string filepath = " ";
            if (FileUpload1.HasFile)
            {
                filepath = FileUpload1.PostedFile.FileName;
                string pat = @"\\(?:.+)\\(.+)\.(.+)";
                Regex r = new Regex(pat);
                Match m = r.Match(filepath);
                //        string file_ext = m.Groups[2].Captures[0].ToString();
                //    string filename = m.Groups[1].Captures[0].ToString();
                string file_ext = Path.GetExtension(filepath);
                string filename = Path.GetFileNameWithoutExtension(filepath);

                string file = filename + file_ext;

                FileUpload1.PostedFile.SaveAs(Server.MapPath(".\\PDESIGN\\") + file);
                Label1.Text = file;
                DateTime W = DateTime.Today;
                String E = W.ToString();
                int vid = 0, pid = 0;
                SqlCommand cc = new SqlCommand("select * from project where name ='" + drpproject.SelectedValue + "'", c.open());
                SqlDataReader u = cc.ExecuteReader();

                while (u.Read())
                {
                    vid = int.Parse(u["projectid"].ToString());
                }
                u.Close();
                c.close();
                SqlCommand d = new SqlCommand("select * from product where name ='" + drpvtype.SelectedValue + "'", c.open());
                SqlDataReader w = d.ExecuteReader();
                while (w.Read())
                {
                    pid = int.Parse(w["productid"].ToString());
                }
                w.Close();
                c.close();

                SqlCommand i = new SqlCommand("insert into design values('" + E + "'," + vid + "," + pid + ",'" + Label1.Text + "')", c.open());
                int k = i.ExecuteNonQuery();
                c.close();
                if (k > 0)
                {
                    SqlCommand du = new SqlCommand("update product set status='Designed' where productid =" + pid + "", c.open());
                    du.ExecuteNonQuery();
                    c.close();
                    SqlCommand qq = new SqlCommand("update transactionmaster set trdate='" + DateTime.Today.ToShortDateString() + "',status='Designed' where productid="+pid+"", c.open());
                    qq.ExecuteNonQuery();
                    c.close();
                    SqlCommand ddd = new SqlCommand("select trmid from transactionmaster where productid=" + pid + "", c.open());
                    SqlDataReader www = ddd.ExecuteReader();
                    while (www.Read())
                    {
                        trmid = int.Parse(www["trmid"].ToString());
                    }
                    www.Close();
                    c.close();
                    SqlCommand qqq = new SqlCommand("insert into transactiondetails values('" + DateTime.Today.ToShortDateString() + "','Initial','Designed'," + trmid + ")", c.open());
                    qqq.ExecuteNonQuery();
                    c.close();
                    Response.Write("<script language=javascript>alert('added succesfully')</script>");
                }
                else
                {
                    Response.Write("<script language=javascript>alert('unsuccesfull attempt')</script>");
                }



            }

        }

        protected void drpproject_SelectedIndexChanged(object sender, EventArgs e)
        {
            bindproduct();
        }
    }
}