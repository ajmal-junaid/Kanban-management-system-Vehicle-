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
    public partial class emplogin : System.Web.UI.Page
    {
        SqlConnection con = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=(localdb)\\ProjectModels;Initial Catalog=kanban;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

        }


        protected void Button1_Click0(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand i = new SqlCommand("select * from logindetails  where username='" + txtusr.Text + "' and password='" + txtpas.Text + "'", con);
            SqlDataReader r = i.ExecuteReader();
            if (r.HasRows)
            {
                Response.Redirect("employee.aspx");
            }
            else
            {
                Response.Write("<script language=javascript>alert('username/password incorrect. please try again!') </ script > ");
            }
            con.Close();
        }
    }
}
