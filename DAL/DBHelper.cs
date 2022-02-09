using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public static class DBHelper
    {
        private static SqlConnection conn;
        public static void InitConn()
        {
            if (conn==null)
            {
                conn = new SqlConnection("Data Source=.;Initial Catalog=myFlorist;Integrated Security=True");
            }
            if (conn.State==ConnectionState.Closed)
            {
                conn.Open();
            }
        }

        public static bool Execute(string sql)
        {
            try
            {
                InitConn();
                SqlCommand cmd = new SqlCommand(sql,conn);
                int i = cmd.ExecuteNonQuery();
                return i > 0 ? true : false;
            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                conn.Close();
            }
        }

        public static DataTable GetData(string sql)
        {
            try
            {
                InitConn();
                SqlCommand cmd = new SqlCommand(sql, conn);
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                return ds.Tables[0];
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }
    }
}
