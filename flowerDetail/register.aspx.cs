using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Login
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string users_name = txtusername.Text.ToString().Trim();
                string users_pwd = txtpassword.Text.ToString().Trim();
                string users_email = txtemail.Text.ToString().Trim();
                if (Session["code"].ToString() == yzm.Text.ToString())
                {
                    if (BLL.FindpicBLL.registerBLL(users_name, users_pwd, users_email))
                    {
                        Response.Redirect("login.aspx");
                    }
                    else { 
                        Response.Write("<script>alert('注册失败');</script>"); 
                    }
                }
                else { Response.Write("<script>alert('注册失败');</script>"); }
            }
            
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string users_name = args.Value;
            if (BLL.FindpicBLL.checknameBLL(users_name))
            { args.IsValid = false; }
            else
            { args.IsValid = true; }
        }
    }
}