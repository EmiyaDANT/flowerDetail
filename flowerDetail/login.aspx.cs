using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string users_name = txtusername.Text.ToString().Trim();
            string users_pwd = txtpassword.Text.ToString().Trim();
            if (users_name=="admin"&&users_pwd=="123456")
            {
                Response.Redirect("login1.aspx");
            }
            else
            {
                if (BLL.FindpicBLL.loginBLL(users_name, users_pwd))
                {
                    Response.Write("<script>alert('登陆成功')</script>");
                    Session["userID"] = BLL.FindpicBLL.loginBLLGetID(users_name, users_pwd);
                    // 登陆成功返回上一级
                    Response.Redirect("Main2.aspx");
                }
                else
                {
                    Response.Write("<script>alert('用户名或密码错误')</script>");
                }
            }
        }

        protected void linkbutton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("forget.aspx");
        }

        protected void linkbutton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }
    }
}