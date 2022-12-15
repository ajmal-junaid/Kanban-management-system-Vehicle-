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
    public partial class stagetransactionlist : System.Web.UI.Page
    {
        connectionk c;
        string trmid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new connectionk();
            trmid = Session["trmid"].ToString();
            Bind();
        }
        void Bind()
        {
         //   SqlDataAdapter b = new SqlDataAdapter("select trmid AS TRANSID FROM transactionmaster", c.open());

           SqlDataAdapter b = new SqlDataAdapter("select m.trmid as TRMID,p.name AS PRODUCTNAME,d.trdate as DATE,d.fromstatus as FROM_STATUS,d.tostatus as TO_STATUS FROM transactionmaster m,product p,transactiondetails d where m.productid=p.productid and m.trmid=d.trmid and m.trmid="+int.Parse(trmid)+"", c.open());
            DataSet s = new DataSet();
            b.Fill(s, "ff");

            GridView1.DataSource = s.Tables[0].DefaultView;
            GridView1.DataBind();

            c.close();
        }

    }
}