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
    public partial class userlist : System.Web.UI.Page
    {
        connectionk cc;
        protected void Page_Load(object sender, EventArgs e)
        {
            cc = new connectionk();
               Bind();
        }
        void Bind()
        {
           
            SqlDataAdapter a = new SqlDataAdapter("select l.username as USERNAME,s.email as EMAIL,l.usertype as USERTYPE,l.status as STATUS from logindetails l,register s where l.username=s.username",cc.open ());
            DataSet s = new DataSet();
            a.Fill(s, "ff");
            GridView1.DataSource = s.Tables[0].DefaultView;
            GridView1.DataBind();

            cc.close();

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int index = e.RowIndex;
            DataKey f = GridView1.DataKeys[index];
            object ob = f.Value;
            string i = ob.ToString();
            SqlCommand qq = new SqlCommand("update logindetails set status='Approved' where username='" + i + "'", cc.open());
            qq.ExecuteNonQuery();
            cc.close();
            Bind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int index = e.RowIndex;
            DataKey f = GridView1.DataKeys[index];
            object ob = f.Value;
            string i = ob.ToString();
            SqlCommand qq = new SqlCommand("delete from logindetails where username='" + i + "'", cc.open());
            qq.ExecuteNonQuery();
            cc.close();
            SqlCommand qqq = new SqlCommand("delete from register where username='" + i + "'", cc.open());
            qqq.ExecuteNonQuery();
            cc.close();
            Bind();

        }
    }
}