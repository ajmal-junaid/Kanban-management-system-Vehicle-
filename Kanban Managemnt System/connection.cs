using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
namespace COPY
{
    public class connectionk
    {
        SqlConnection con;
       public connectionk ()
        {
            con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=kanban;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

        }
        public SqlConnection open()
        {
          
            con.Open();
            return con;
           
        }
        public void close()
        {
            con.Close ();
           
        }

    }
}