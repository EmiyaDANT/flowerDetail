using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace flowerDetail
{
    public partial class userInterface : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataColumn dc1 = new DataColumn("name");
            DataColumn dc2 = new DataColumn("phone");
            DataColumn dc3 = new DataColumn("address");
            
            dt.Columns.Add(dc1);
            dt.Columns.Add(dc2);
            dt.Columns.Add(dc3);
            DataRow dr = dt.NewRow();
            dr[0] = txtname.Text;
            dr[1] = txtphone.Text;
            dr[2] = txtaddress.Text;
            Session["userAddress"] = txtaddress.Text;
            Session["address"] = txtaddress.Text;
            dt.Rows.Add(dr);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            if (Session["userID"]!=null)
            {
                Session["userID"] = null;
                Session["userAddress"] = null;
                Response.Redirect("Main2.aspx");
            }
        }
    }
}