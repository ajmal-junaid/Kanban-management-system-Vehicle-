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
    public partial class viewdesign : System.Web.UI.Page
    {
        connectionk c;
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new connectionk();

            Bind();
        }
        void Bind()
        {
            SqlDataAdapter b = new SqlDataAdapter("select d.designid AS DESIGNID,pr.name AS PROJECTNAME,t.name AS VEHICLETYPE,p.name AS PRODUCTNAME,d.designdate as DESIGNDATE,p.status as STATUS FROM design d,product p,project pr,vehicletype t where d.projectid=pr.projectid and d.productid=p.productid and p.vehicletypeid=t.vehicletypeid", c.open());
            DataSet s = new DataSet();
            b.Fill(s, "ff");

            GridView1.DataSource = s.Tables[0].DefaultView;
            GridView1.DataBind();

            c.close();
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            int index = e.NewSelectedIndex;
            DataKey f = GridView1.DataKeys[index];
            object ob = f.Value;
            string i = ob.ToString();
            string p = "";
            SqlCommand jj = new SqlCommand("select filepath from design where designid =" + int.Parse(i.ToString()) + ";",c.open());
            SqlDataReader rr = jj.ExecuteReader();
            while (rr.Read())
            {
                p = rr[0].ToString();
            }
            rr.Close();
            c.close();
            
            string filepath = Server.MapPath(".\\PDESIGN\\") + p;
            // The file name used to save the file to the client's system..
            string filename = Path.GetFileName(filepath);
            System.IO.Stream stream = null;
            try
            {
                // Open the file into a stream. 
                stream = new FileStream(filepath, System.IO.FileMode.Open, System.IO.FileAccess.Read, System.IO.FileShare.Read);
                // Total bytes to read: 
                long bytesToRead = stream.Length;
                Response.ContentType = "application/octet-stream";
                Response.AddHeader("Content-Disposition", "attachment; filename=" + filename);
                // Read the bytes from the stream in small portions. 
                while (bytesToRead > 0)
                {
                    // Make sure the client is still connected. 
                    if (Response.IsClientConnected)
                    {
                        // Read the data into the buffer and write into the 
                        // output stream. 
                        byte[] buffer = new Byte[10000];
                        int length = stream.Read(buffer, 0, 10000);
                        Response.OutputStream.Write(buffer, 0, length);
                        Response.Flush();
                        // We have already read some bytes.. need to read 
                        // only the remaining. 
                        bytesToRead = bytesToRead - length;

                    }
                    else
                    {
                        // Get out of the loop, if user is not connected anymore.. 
                        bytesToRead = -1;
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
                // An error occurred.. 
            }
            finally
            {
                if (stream != null)
                {
                    stream.Close();
                }
            }
    
    }
    }
}