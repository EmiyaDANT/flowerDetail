using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; 
using System.Timers;
using BLL;

namespace flowerDetail
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack) {
                if (Session["userID"] == null)
                {
                    Response.Write("<script>alert('请先登录')</script>");
                    Response.Write("<script>history.go(-1)</script>");
                }
                else
                {
                    string uid = Session["userID"].ToString();//用户编号

                    //Session["goods"] = "1,2,";

                    //string boolload = load();//接收返回在值
                    ////string sql = "select * from testinfo";
                    ////DataTable dt = BLL.FindpicBLL.select(sql);

                    ////GridView1.DataSource = dt;
                    //if (!(boolload=="")) { GridView1.DataBind(); }

                    load(uid);

                    if (GridView1.Rows.Count <= 0)
                    {
                        Response.Redirect("Main2.aspx?bl=true");
                    }
                    //loadkong();
                    
                }
            }

        }

        public void load(string uid)
        {
            DataTable dt = BLL.FindpicBLL.selectcatBLL(uid);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }


        //public  string load()
        //{
        //    //1,1,1,1,
        //    Session.Timeout = 100;//session过期时间100分钟
        //    string sql = "";
        //    if (Session["goods"].ToString() == "")
        //    {
        //        sql = "select * from testinfo where 1=2";
        //        DataTable dt = BLL.FindpicBLL.select(sql);
        //        if (dt.Rows.Count <= 0) {
        //            int cols = GridView1.Columns.Count;

        //            for (int i = 0; i <= GridView1.Rows.Count -1; i++)
        //            {
        //                GridView1.Rows[i].Cells.Clear();
        //            }

        //            GridView1.Rows[0].Cells.Add(new TableCell());
        //            GridView1.Rows[0].Cells[0].ColumnSpan = cols;
        //            GridView1.Rows[0].Cells[0].Text = "没有加入购物车";
        //            GridView1.Rows[0].Cells[0].Style.Add("text-align", "center");


        //        }

        //        //GridView1.DataBind();


        //        Session.Clear();
        //    }
        //    else {
        //        string[] sArray = Session["goods"].ToString().Split(',');//用逗号分隔开的字符串变成数组

        //        // 待统计的整型数组
        //        //int[] a = { 1, 1, 1, 3, 1, 2, 2, 1, 3, 4, 2, 1, 5, 3, 4 };

        //        // 集合 dic 用于存放统计结果
        //        Dictionary<string, ItemInfo> dic = new Dictionary<string, ItemInfo>();

        //        // 开始统计每个元素重复次数
        //        foreach (string v in sArray)
        //        {
        //            if (dic.ContainsKey(v))
        //            {
        //                // 数组元素再次，出现次数增加 1
        //                dic[v].RepeatNum += 1;
        //            }
        //            else
        //            {
        //                // 数组元素首次出现，向集合中添加一个新项
        //                // 注意 ItemInfo类构造函数中，已经将重复
        //                // 次数设置为 1
        //                dic.Add(v, new ItemInfo(v));
        //            }
        //        }

        //        //string[] arrid = new string[] { };//购物车的商品ID
        //        //int[] arrnum = new int[] { }; //购物车的各商品个数
        //        int k=0;//计数迭代器
        //        string arrsqlcat = "";//sql语句查询购物车
        //        string[] arrid = new string[dic.Values.Count()];
        //        foreach (ItemInfo info in dic.Values)
        //        {
        //            //Console.WriteLine("数组元素 {0} 出现的次数为 {1}",info.Value, info.RepeatNum);

        //            //for (k = 0; k < dic.Values.Count(); k++)
        //            //{

        //                arrid[k] = info.Value;//id
        //                                      //arrnum[k] = info.RepeatNum;//数量
        //                                      //放入数组
        //                                      //}
        //            k++;

        //        }


        //        ArrayList al = new ArrayList();
        //        for (int i = 0; i < arrid.Length; i++)
        //        {
        //            if (al.Contains(arrid[i]) == false)
        //            {//判断要拆分的字符串中是否已经存在于这个ArrayList中   
        //                al.Add(arrid[i]);//不存在则添加进ArrayList   
        //            }
        //        }
        //        //将ArrayList转换为string[]
        //        string[] al2 = new string[al.Count];
        //        for (int i = 0; i < al.Count; i++)
        //        {
        //            al2[i] = al[i].ToString();
        //        }
        //        //将数组中的元素添加到gv
        //        for (int i = 0; i < al2.Length; i++)
        //        {
        //            if (al2[i] != "")//不为空
        //            {
        //                arrsqlcat += " or =" + al2[i] + "";

        //            }
        //        }

        //        dic.Clear();//用完字典清空


        //        //定义查询语句
        //         sql = "select * from table where 1=2";
        //         sql += arrsqlcat;
        //    }

        //    return sql;
        //}

        //public void loadkong() {
            
        //    if (GridView1.Rows.Count <= 0)
        //    {
               
        //        int cols = GridView1.Columns.Count;

        //        for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
        //        {
        //            GridView1.Rows[i].Cells.Clear();
        //        }

        //        GridView1.Rows[0].Cells.Add(new TableCell());
        //        GridView1.Rows[0].Cells[0].ColumnSpan = cols;
        //        GridView1.Rows[0].Cells[0].Text = "没有加入购物车";
        //        GridView1.Rows[0].Cells[0].Style.Add("text-align", "center");


        //    }

        //    //GridView1.DataBind();

        //}


        protected void Unnamed1_Click(object sender, EventArgs e)//清空购物车
        {
            ////Session.Clear();
            //Session["goods"] = "";
            //load();
            string uid = Session["userID"].ToString();
            string sql = $"delete from catTable where userid={uid}";//直接定义字符串传过去
            bool br = BLL.FindpicBLL.catsqlBLL(sql);
            if (br)
            {
                //loadkong();
                load(uid);
                Response.Write("<script>alert('已清空');</script>");
                //清空
                btn2.Style.Value = "display:none";
                btn1.Style.Value = "display:none";
                CheckBox2.Style.Value = "display:none";
                GridView1.Style.Value = "display:none";

                link1.Style.Value = "display:block";




            }
            else {
                Response.Write("<script>alert('清空失败！！！');</script>");
                //清空
            }





        }

        protected void Unnamed2_Click(object sender, EventArgs e)//下单
        {
            string cat = "";
            double catpic = 0;
            //GV中选中的ID 提取出来     拼串
            for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
            {
                CheckBox cbox = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
                string id = GridView1.Rows[i].Cells[1].Text;
                // 将商品状态改为已下单
                SPSTATEBLL.hhh(id);
                string pic = GridView1.Rows[i].Cells[3].Text;
                double cpic=double.Parse(pic);

                if (cbox.Checked == true)
                {
                    cat = cat + id + ",";
                    catpic = catpic + cpic;
                }

                string str = "￥" + catpic;
                lbl_txt.Text = str;
            }
            //lbl.Text = cat;
            //1,2,
            if (cat == "")
            {
                Response.Write("<script>alert('请选择后下单');</script>");
            }
            else
            {

                btn2.Style.Value = "display:none";
                btn1.Style.Value = "display:none";
                CheckBox2.Style.Value = "display:none";
                GridView1.Style.Value = "display:none";

                

                img1.Style.Value = "display:block;margin:auto;";
                Label1.Style.Value = "display:block";
                lbl_txt.Style.Value = "display:block";
                btn3.Style.Value = "display:block;margin:auto;";



                //Response.Redirect("Main2.aspx");//页面跳转




            }
        }



        //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    double catpic = 0;
        //    for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
        //    {
        //        CheckBox cbox = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");

        //        string pic = GridView1.Rows[i].Cells[3].Text;
        //        double cpic = double.Parse(pic);

        //        if (cbox.Checked == true)
        //        {
        //            catpic = catpic + cpic;
        //        }
        //    }
        //    string str = "￥" + catpic;
        //    lbl_txt.Text = str;
        //}



        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            //全选 取消全选
            for (int i = 0 ; i <= GridView1.Rows.Count - 1; i++)
            {
                CheckBox cbox = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
                if (CheckBox2.Checked == true)
                {
                    cbox.Checked = true;
                }
                else
                {
                    cbox.Checked = false;
                }
            }
        }

        protected void Unnamed2_Click1(object sender, EventArgs e)
        {
            //Response.Write("<srcipt>alert('付款成功');</srcipt>");
            Response.Redirect("Main2.aspx");//页面跳转

        }

        //double catpic = 0;
        //for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
        //{
        //    CheckBox cbox = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");

        //    string pic = GridView1.Rows[i].Cells[3].Text;
        //    double cpic = double.Parse(pic);

        //    if (cbox.Checked == true)
        //    {
        //        catpic = catpic + cpic;
        //    }
        //}
        //string str = "￥" + catpic;
        //lbl_txt.Text = str;





    }

    //工具类
    class ItemInfo
    {
        /// <summary>
        /// ItemInfo 类记录数组元素重复次数
        /// </summary>
        /// <param name="value">数组元素值</param>
        public ItemInfo(string value)
        {
            Value = value;
            RepeatNum = 1;
        }
        /// <summary>
        /// 数组元素的值
        /// </summary>
        public string Value { get; set; }
        /// <summary>
        /// 数组元素重复的次数
        /// </summary>
        public int RepeatNum { get; set; }
    }


}

