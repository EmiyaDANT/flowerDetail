using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAL;

namespace BLL
{
    public static class GetYHNameBLL
    {
        public static string getYHNameBLL(string userID)
        {
            return GetYHNameDLL.getYHNameDLL(userID);
        }
    }
}
