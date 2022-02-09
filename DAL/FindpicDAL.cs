using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL
{
    public static class FindpicDAL
    {
        public static DataTable findpicDAL(string id)
        {
            return DBHelper.GetData($"select * from flowerTable where flower_id={id}");
        }

        public static bool joincatDAL(string uid, string fid)
        {
            //string sql = "innsert into catTable values(1,1,1)";
            //         select* catTable from where userid = 1 and flowerid = 1 不为空
            //update catTable set num = num + 1 where userid = 1 and flowerid = 1

            string sql = $"select * from catTable  where userid = {uid} and flowerid = {fid} and state=0";
            DataTable dt = DBHelper.GetData(sql);
            if (dt.Rows.Count > 0)
            {
                sql = $"update catTable set num = num + 1 where userid = {uid} and flowerid = {fid}";
            }
            else
            {
                sql = $"insert into catTable(userid,flowerid,num,state,order_date) values({uid},{fid},1,0,'2020-12-12')";//用户编号 花ID 数量
            }
            return DBHelper.Execute(sql);

        }

        public static DataTable selectcatDAL(string uid)
        {
            string sql = $"select a.flower_id,a.flower_name,a.flower_Now_price,a.flower_img,b.num from flowerTable as a inner join catTable as b on a.flower_id=b.flowerid where b.userid = {uid} and b.state=0";
            return DBHelper.GetData(sql);
        }

        public static bool catsqlDAL(string sql)
        {
            return DBHelper.Execute(sql);
        }

        public static DataTable loginDAL(string users_name, string users_pwd)
        {
            string sql = string.Format("select * from userTable where users_name='{0}'and users_pwd='{1}'", users_name, users_pwd);
            return DBHelper.GetData(sql);
        }
        //注册
        public static bool registerDAL(string users_name, string users_pwd, string users_email)
        {
            string sql = string.Format("insert userTable(users_name,users_pwd,users_email) values('{0}','{1}','{2}')", users_name, users_pwd, users_email);
            return DBHelper.Execute(sql);
        }
        //验证用户名存在问题
        public static DataTable checknameDAL(string users_name)
        {
            string sql = string.Format("select * from userTable where users_name='{0}'", users_name);
            return DBHelper.GetData(sql);
        }

        //忘记密码
        public static bool forgrtdal(string pwd, string email, string sname)
        {
            string sql = string.Format("update userTable set users_pwd='{0}' where users_email='{1}'and users_name='{2}'", pwd, email, sname);
            return DBHelper.Execute(sql);
        }
    }
}
