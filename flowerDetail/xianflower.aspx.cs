using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;

namespace flowerDetail
{
    public partial class xianflower1 : System.Web.UI.Page
    {
        PagedDataSource pgd = new PagedDataSource();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadP(0);
                LoadYHname();
                if (Request.Url.Query != "")
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

        public void LoadP(int i) 
        {
            DataTable dt = FindxianBLL.findxianBLL();
            DataView dv = dt.DefaultView;
            pgd.DataSource = dv;
            pgd.AllowPaging = true;
            pgd.PageSize = 20;
            pgd.CurrentPageIndex = i;
            DataList1.DataSource = pgd;
            DataList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button1.Style.Value = "background-color:coral;color:white";
            Button2.Style.Value = "background-color:white";
            Button3.Style.Value = "background-color:white";
            Button4.Style.Value = "background-color:white";
            Button5.Style.Value = "background-color:white";
            Button6.Style.Value = "background-color:white";
            Button7.Style.Value = "background-color:white";
            Button8.Style.Value = "background-color:white";
            Button9.Style.Value = "background-color:white";
            LoadP(0);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button1.Style.Value = "background-color:white";
            Button2.Style.Value = "background-color:coral;color:white";
            Button3.Style.Value = "background-color:white";
            Button4.Style.Value = "background-color:white";
            Button5.Style.Value = "background-color:white";
            Button6.Style.Value = "background-color:white";
            Button7.Style.Value = "background-color:white";
            Button8.Style.Value = "background-color:white";
            Button9.Style.Value = "background-color:white";
            LoadP(1);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Button1.Style.Value = "background-color:white";
            Button2.Style.Value = "background-color:white";
            Button3.Style.Value = "background-color:coral;color:white";
            Button4.Style.Value = "background-color:white";
            Button5.Style.Value = "background-color:white";
            Button6.Style.Value = "background-color:white";
            Button7.Style.Value = "background-color:white";
            Button8.Style.Value = "background-color:white";
            Button9.Style.Value = "background-color:white";
            LoadP(2);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Button1.Style.Value = "background-color:white";
            Button2.Style.Value = "background-color:white";
            Button3.Style.Value = "background-color:white";
            Button4.Style.Value = "background-color:coral;color:white";
            Button5.Style.Value = "background-color:white";
            Button6.Style.Value = "background-color:white";
            Button7.Style.Value = "background-color:white";
            Button8.Style.Value = "background-color:white";
            Button9.Style.Value = "background-color:white";
            LoadP(3);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Button1.Style.Value = "background-color:white";
            Button2.Style.Value = "background-color:white";
            Button3.Style.Value = "background-color:white";
            Button4.Style.Value = "background-color:white";
            Button5.Style.Value = "background-color:coral;color:white";
            Button6.Style.Value = "background-color:white";
            Button7.Style.Value = "background-color:white";
            Button8.Style.Value = "background-color:white";
            Button9.Style.Value = "background-color:white";
            LoadP(4);
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Button1.Style.Value = "background-color:white";
            Button2.Style.Value = "background-color:white";
            Button3.Style.Value = "background-color:white";
            Button4.Style.Value = "background-color:white";
            Button5.Style.Value = "background-color:white";
            Button6.Style.Value = "background-color:coral;color:white";
            Button7.Style.Value = "background-color:white";
            Button8.Style.Value = "background-color:white";
            Button9.Style.Value = "background-color:white";
            LoadP(5);
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Button1.Style.Value = "background-color:white";
            Button2.Style.Value = "background-color:white";
            Button3.Style.Value = "background-color:white";
            Button4.Style.Value = "background-color:white";
            Button5.Style.Value = "background-color:white";
            Button6.Style.Value = "background-color:white";
            Button7.Style.Value = "background-color:coral;color:white";
            Button8.Style.Value = "background-color:white";
            Button9.Style.Value = "background-color:white";
            LoadP(6);
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Button1.Style.Value = "background-color:white";
            Button2.Style.Value = "background-color:white";
            Button3.Style.Value = "background-color:white";
            Button4.Style.Value = "background-color:white";
            Button5.Style.Value = "background-color:white";
            Button6.Style.Value = "background-color:white";
            Button7.Style.Value = "background-color:white";
            Button8.Style.Value = "background-color:coral;color:white";
            Button9.Style.Value = "background-color:white";
            LoadP(7);
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Button1.Style.Value = "background-color:white";
            Button2.Style.Value = "background-color:white";
            Button3.Style.Value = "background-color:white";
            Button4.Style.Value = "background-color:white";
            Button5.Style.Value = "background-color:white";
            Button6.Style.Value = "background-color:white";
            Button7.Style.Value = "background-color:white";
            Button8.Style.Value = "background-color:white";
            Button9.Style.Value = "background-color:coral;color:white";
            LoadP(8);
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userInterface.aspx");
        }
    }
}