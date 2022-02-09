using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;
using System.IO;

namespace flowerDetail
{
    public partial class introduction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                picLoad();
            }
        }

        public void picLoad()
        {
            string id = Request.QueryString["id"].ToString();
            //从数据库取出包含该花的图片的相对文件路径
            DataTable dt1 = FindpicBLL.findpicBLL(id);
            string flowerpicFill = dt1.Rows[0]["flower_img"].ToString()+"\\"+"introduce";

            //将每一张图片遍历并放到虚拟数据表中
            DataTable dt2 = new DataTable();
            DirectoryInfo di = new DirectoryInfo(Server.MapPath(flowerpicFill));
            DataColumn dc1 = new DataColumn("pic1");
            DataColumn dc2 = new DataColumn("pic2");
            dt2.Columns.Add(dc1);
            dt2.Columns.Add(dc2);
            int i = 1;
            foreach (FileInfo item in di.GetFiles())
            {
                if (i%2!=0)
                {
                    DataRow dr = dt2.NewRow();
                    dr[0] = flowerpicFill + "\\" + item;
                    dt2.Rows.Add(dr);
                }
                else
                {
                    dt2.Rows[(i/2)-1][1]= flowerpicFill + "\\" + item;
                }
                i++;
            }
            //datalist绑定存放图片的虚拟表
            dlpdintroimg.DataSource = dt2;
            dlpdintroimg.DataBind();
        }
    }
}