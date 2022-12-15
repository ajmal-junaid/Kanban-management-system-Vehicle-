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
    public partial class viewtypes : System.Web.UI.Page
    {
        connectionk c;
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new connectionk();
            Bind();
        }
        void Bind()
        {
            
            SqlDataAdapter a = new SqlDataAdapter("select l.name as VEHICLE TYPE,l.vehicletypeid as TYPEID from vehicletype l", c.open());
            DataSet s = new DataSet();
            a.Fill(s, "ff");
            
            GridView1.DataSource = s.Tables[0].DefaultView;
            GridView1.DataBind();

            c.close();

        }
    }
}