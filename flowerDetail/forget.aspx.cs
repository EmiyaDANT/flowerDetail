using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login
{
    public partial class forget : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }




        protected void linkbutton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string pwd = txtpassword.Text.ToString().Trim();
            string email = txtemail.Text.ToString().Trim();
            string sname = txtusername.Text.ToString().Trim();
            if (BLL.FindpicBLL.forgetbll(pwd, email, sname)&&yzm.Text==Session["code"].ToString())
            {
                Response.Write("<script>alert('修改成功！')</script>");
            }
            else
            {
                Response.Write("<script>alert('修改失败！')</script>");
            }
        }
    }
}