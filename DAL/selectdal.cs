using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL
{
    public class selectdal
    {
        public static DataTable selectdals()
        {
            string sql = $"select c.id,u.users_name,f.flower_name,c.num,c.order_date  from  catTable as c inner join userTable as u on c.userid=u.users_id  inner   join flowerTable as f on c.flowerid=f.flower_id where c.state=1";
            return DBHelper.GetData(sql);
        }
    }
}
