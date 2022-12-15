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
    public partial class login : System.Web.UI.Page
    {
        connectionk c;
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new connectionk();
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string rd = "";
            if (admin.Checked == true)
            {
                rd = "admin".ToString();

            }
            else if (employee.Checked == true)
            {
                rd = "employee".ToString();
            }
            else if (finance.Checked == true)
            {
                rd = "finance".ToString();
            }
                


          
            SqlCommand i = new SqlCommand("select * from logindetails where username='" + txtuser.Text + "' and password='" + txtpass.Text + "' and usertype='"+rd.ToString()+"' and status='Approved'", c.open ());
            SqlDataReader r = i.ExecuteReader();

            if (r.Read())
            {
                 if (r["usertype"].ToString() == "admin")
                {
                    Session["user"] = r["usertype"].ToString();
                    Response.Redirect("adminhome.aspx");
                }
                else if (r["usertype"].ToString() == "employee")
                {
                    Session["user"] = r["usertype"].ToString();
                    Response.Redirect("employee.aspx");
                }
                else if (r["usertype"].ToString() == "Finance")
                {
                    Session["user"] = r["usertype"].ToString();
                    Response.Redirect("financehome.aspx");
                }
                else
                {
                    Response.Write("<script language=javascript>alert('username/password incorrect. please try again!') </ script > ");
                }
                r.Close();
                c.close();
            }


           

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void usertype_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}