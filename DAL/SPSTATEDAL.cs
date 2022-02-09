using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public static class SPSTATEDAL
    {
        public static void hh(string id)
        {
            DBHelper.Execute($"update catTable set state=1 where flowerid={id}");
        }
    }
}
