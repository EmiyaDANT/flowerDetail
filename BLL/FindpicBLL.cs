using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAL;

namespace BLL
{
    public class FindpicBLL
    {
        public static DataTable findpicBLL(string id)
        {
            return FindpicDAL.findpicDAL(id);
        }
        public static bool joincatBLL(string uid, string fid)//传用户ID 和花ID
        {
            return FindpicDAL.joincatDAL(uid, fid);
        }

        public static DataTable selectcatBLL(string uid)
        {
            return DAL.FindpicDAL.selectcatDAL(uid);
        }

        public static bool catsqlBLL(string sql)
        {
            return DAL.FindpicDAL.catsqlDAL(sql);
        }

        public static bool loginBLL(string users_name, string users_pwd)
        {
            DataTable dt = DAL.FindpicDAL.loginDAL(users_name, users_pwd);
            if (dt.Rows.Count > 0 && dt != null)
                return true;
            else
                return false;
        }

        public static string loginBLLGetID(string users_name, string users_pwd)
        {
            DataTable dt = DAL.FindpicDAL.loginDAL(users_name, users_pwd);
            return dt.Rows[0]["users_id"].ToString();
        }
        public static bool registerBLL(string users_name, string users_pwd, string users_email)
        {
            return DAL.FindpicDAL.registerDAL(users_name, users_pwd, users_email);
        }
        public static bool checknameBLL(string users_name)
        {
            DataTable dt = DAL.FindpicDAL.checknameDAL(users_name);
            if (dt.Rows.Count > 0)
                return true;
            else
                return false;
        }

        public static bool forgetbll(string pwd, string email, string sname)
        {
            return DAL.FindpicDAL.forgrtdal(pwd, email, sname);

        }
    }
}
