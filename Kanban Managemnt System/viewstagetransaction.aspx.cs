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
    public partial class viewstagetransaction : System.Web.UI.Page
    {
        connectionk cc;
        protected void Page_Load(object sender, EventArgs e)
        {
            cc = new connectionk();
            if (Session["user"].ToString() == "Finance")
            {
                GridView1.Columns[0].Visible = false;
                GridView1.Columns[1].Visible = true;
                GridView1.Columns[2].Visible = false;
            }
            else
            {

                GridView1.Columns[0].Visible = true;
                GridView1.Columns[1].Visible = true;
                GridView1.Columns[2].Visible = true;

            }
            Bindd();
        }
        void Bindd()
        {
         //   SqlDataAdapter b = new SqlDataAdapter("select trmid AS TRANSID FROM transactionmaster", c.open());

           SqlDataAdapter b = new SqlDataAdapter("select d.trmid as TRMID,pr.name AS PROJECTNAME,t.name AS VEHICLETYPE,p.name AS PRODUCTNAME,d.trdate as DATE,d.status as STATUS FROM transactionmaster d,product p,project pr,vehicletype t where d.productid=p.productid and p.projectid=pr.projectid and p.vehicletypeid=t.vehicletypeid", cc.open());
            DataSet s = new DataSet();
            b.Fill(s, "ff");

            GridView1.DataSource = s.Tables[0].DefaultView;
            GridView1.DataBind();

            cc.close();
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            int index = e.NewSelectedIndex;
            DataKey f = GridView1.DataKeys[index];
            object ob = f.Value;
            string i = ob.ToString();
            string p = "";
            Session["trmid"] = i.ToString();
            Response.Redirect("stagetransaction.aspx");
         
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int index = e.RowIndex ;
            DataKey f = GridView1.DataKeys[index];
            object ob = f.Value;
            string i = ob.ToString();
          
            Session["trmid"] = i.ToString();
            Response.Redirect("stagetransactionlist.aspx");
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int index = e.NewEditIndex ;
            DataKey f = GridView1.DataKeys[index];
            object ob = f.Value;
            string i = ob.ToString();

            Session["trmid"] = i.ToString();
            Response.Redirect("releaseproject.aspx");
        }
    }
}