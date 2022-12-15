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
    public partial class viewproduct : System.Web.UI.Page
    {
        connectionk c;
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new connectionk();

               Bind();
        }
        void Bind()
        {
           
            SqlDataAdapter a = new SqlDataAdapter("select projectid as PROJECTID,name as PROJECTNAME,duration as DURATION from project", c.open ());
            DataSet s = new DataSet();
            a.Fill(s, "ff");

            GridView1.DataSource = s.Tables[0].DefaultView;
            GridView1.DataBind();

            c.close();

        }
    }
}