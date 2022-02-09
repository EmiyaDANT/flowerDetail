using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;

namespace Login
{
    public partial class yzm : System.Web.UI.Page
    {   
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.ContentType = "image/JPEG";
            Bitmap map = new Bitmap(80,25);//创建一个位图，宽100，高25，就是我所说的第一部分，矩形背景
            Graphics g = Graphics.FromImage(map);//创建画布
            Random ran = new Random();//创建一个随机数生成器对象
            int i = ran.Next(1000, 9999);
            Session["code"] = i;
            g.DrawString(i.ToString(), new Font("宋体", 18), Brushes.Yellow, new Point(0, 0));
            map.Save(Response.OutputStream, ImageFormat.Jpeg);
        }
    }
}