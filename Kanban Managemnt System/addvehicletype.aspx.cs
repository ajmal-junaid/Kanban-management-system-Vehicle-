using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace COPY
{
    public partial class addvehicletype : System.Web.UI.Page
    {
        connectionk c;
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new connectionk();

       

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand i = new SqlCommand("insert into vehicletype values('" + vname.Text + "')", c.open());
            int k = i.ExecuteNonQuery();
            
            if (k > 0)
            {
                Response.Write("<script language=javascript>alert('added succesfully')</script>");
            }
            else
            {
                Response.Write("<script language=javascript>alert('failed')</script>");
            }
            
            c.close();
        }
        
        //Response.Redirect(Request.Url.AbsoluteUri);
    }
}