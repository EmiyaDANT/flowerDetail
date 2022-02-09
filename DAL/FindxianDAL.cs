using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL
{
    public static class FindxianDAL
    {
        public static DataTable findxianDAL()
        {
            return DBHelper.GetData($"select * from flowerTable where flower_typeid=2 and flower_id>28");
        }
    }
}
