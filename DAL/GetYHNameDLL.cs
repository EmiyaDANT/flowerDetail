using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL
{
    public static class GetYHNameDLL
    {
        public static string getYHNameDLL(string userID)
        {
            return DBHelper.GetData($"select * from userTable where users_id={userID}").Rows[0]["users_name"].ToString();
        }
    }
}
