using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace flowersays
{
    public partial class flowersays : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
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

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userInterface.aspx");
        }
    }
}