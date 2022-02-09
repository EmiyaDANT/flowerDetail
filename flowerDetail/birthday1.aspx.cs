using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace birthday
{
    public partial class birthday1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadYHname();
            }
        }

        public void LoadYHname()
        {
            if (Session["userID"] != null)
            {
                // 从数据库查找用户名
                string YHname = GetYHNameBLL.getYHNameBLL(Session["userID"].ToString());
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