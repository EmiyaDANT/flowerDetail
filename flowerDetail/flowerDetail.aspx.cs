using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using BLL;

namespace flowerDetail
{
    public partial class flowerDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadYHname();
                picLoad();
                detailLoad();
                if (Request.Url.Query != ""&&Request.QueryString["b1"]!=null)
                {
                    string jx = Request.QueryString["bl"].ToString();
                    if (jx == "true")
                    {
                        Response.Write("<script>alert('请将商品加入购物车')</script>");
                    }
                }
            }
        }

        public void LoadYHname()
        {
            if (Session["userID"] != null)
            {
                // 从数据库查找用户名
                string YHname = BLL.GetYHNameBLL.getYHNameBLL(Session["userID"].ToString());
                LinkButton1.Text = YHname;
                YHnameK.Style["display"] = "block";
            }
        }

        //图片绑定
        public void picLoad()
        {
            string id = Request.QueryString["id"].ToString();
            //从数据库取出包含该花的图片的相对文件路径
            DataTable dt1 = FindpicBLL.findpicBLL(id);
            string flowerpicFill = dt1.Rows[0]["flower_img"].ToString();

            //将每一张图片遍历并放到虚拟数据表中
            DataTable dt2 = new DataTable();
            DirectoryInfo di = new DirectoryInfo(Server.MapPath(flowerpicFill));
            DataColumn dc = new DataColumn("pic");
            dt2.Columns.Add(dc);
            foreach (FileInfo item in di.GetFiles())
            {
                DataRow dr = dt2.NewRow();
                dr[0] = flowerpicFill + "\\" + item;
                dt2.Rows.Add(dr);
            }
            //datalist绑定存放图片的虚拟表
            Image1.ImageUrl = dt2.Rows[0]["pic"].ToString();
            DataList1.DataSource = dt2;
            DataList1.DataBind();
        }

        //商品购买框绑定
        public void detailLoad()
        {
            string id = Request.QueryString["id"].ToString();
            DataTable dt1 = FindpicBLL.findpicBLL(id);
            DataList2.DataSource = dt1;
            DataList2.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string a = Request.QueryString["id"].ToString();
            Response.Write("<script>alert("+a+");</script>");
        }

        private void joinsessin(string id)
        {
            Session["goods"] += id + ",";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string id="1";
            //string sql = "innsert into catTable values(1,1,1)";
            //         select* catTable from where userid = 1 and flowerid = 1 不为空
            //update catTable set num = num + 1 where userid = 1 and flowerid = 1
            //joinsessin(id);
            if (Session["userID"] == null)
            {
                Response.Write("<script>alert('请先登录并且填写收货地址')</script>");
            }
            else {
                if (Session["userAddress"] !=null)
                {
                    string uid = Session["userID"].ToString();//用户ID
                    string fid = Request.QueryString["id"].ToString();//花ID
                    bool br = BLL.FindpicBLL.joincatBLL(uid, fid);
                    if (br)
                    {
                        Response.Write("<script>alert('添加购物车成功。');</script>");
                        //添加成功
                    }
                    else
                    {
                        Response.Write("<script>alert('添加购物车失败！！！');</script>");
                        //添加失败
                    }
                }
                else
                {
                    Response.Write("<script>alert('请填写收货地址')</script>");
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userInterface.aspx");
        }
    }
}