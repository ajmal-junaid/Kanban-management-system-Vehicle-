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
    public partial class viewreleased : System.Web.UI.Page
    {
        connectionk c;
      

        
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new connectionk();
            Bind();
        }
        void Bind()
        {
            SqlDataAdapter b = new SqlDataAdapter("select p.productid AS PRODUCTID,pr.name AS PROJECTNAME,t.name AS VEHICLETYPE,p.name AS PRODUCTNAME,r.releasedate as RELEASEDATE,r.remarks as REMARKS,p.status as STATUS FROM product p,project pr,vehicletype t,Release r where p.projectid=pr.projectid and p.vehicletypeid=t.vehicletypeid and r.productid=p.productid", c.open());
            DataSet s = new DataSet();
            b.Fill(s, "ff");

            GridView1.DataSource = s.Tables[0].DefaultView;
            GridView1.DataBind();

            c.close();
        }
    }
}