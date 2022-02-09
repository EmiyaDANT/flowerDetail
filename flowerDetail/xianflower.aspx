<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xianflower.aspx.cs" Inherits="flowerDetail.xianflower1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="img/icon.ico" rel="icon" />
    <script src="js/dianjidonghua.js"></script>
    <style>
        * {
            margin: 0px;
            padding:0px;
            
        }


        ul {
            height:30px;
        }
        ul li{
            height:28px;
            width:70px;
            float:left;
            margin-left:20px;
            text-align:center;
            line-height:28px;
            list-style-type: none;
        }
        a {color: black;text-decoration: none;}

        .pimg {
            width:285px;
            float:left;
            margin-left:10px;
            border-radius:4px;
            margin-top:50px;
            cursor:pointer;
        }
            .pimg:hover {
                border:1px solid coral;
                box-shadow: 3px 6px 15px coral;
                box-sizing: border-box;
            
            
            }

        .fontp {
            font-size:18px;
            font-family:'Microsoft YaHei';
        }

        p {
            width:285px;
            text-align:center;
            font-size:10px;
        }


        #header {
            width:1200px;
            height:60px;
            margin:0 auto;
        }

        .nav div{width: 180px;height: 60px;float: left;line-height: 60px;border: 1px solid;text-align: center;color:black;}

        ul{margin: 2px;padding: 2px;}
			ul li{list-style-type: none;height: 25px;text-align: center;border: 1px solid #CCC;line-height:24px;background: #eee;width:180px}
			
			ul li a{color: black;text-decoration: none;color:#333;}
			ul li a:hover{ color:#f00;}

			a {color: black;text-decoration: none;}

        .logo{background: url(../img/logo1.png);background-size: 180px 60px;}

        #llli {
            background-image:linear-gradient(to bottom right,orange,red);
            color:white;
        }

       .CB{color: coral;font-size: 16px;margin-left: 103px;}
			.CC{float: left;width: 290px;height: 150px;margin-top: 20px;text-align: left;margin-left: 20px;}
			.CD{float: left;width: 290px;height: 150px;margin-top: 20px;}
			.CE{color: coral;font-size: 13px;float: left;margin-left: 75px;}
			.CF{font-size: 12px;float: left;}
			.CG{font-size: 13PX;margin-left: 115px;}
			.CH{font-size: 13PX;margin-left: 140PX;float: left;}
			.CI{font-size: 13PX;margin-left: 30PX;float: left;}
			.CJ{color: coral;font-size: 16px;margin-left: 175px;}
			.CK{color: coral;font-size: 13px;float: left;margin-left: 143px;}
			.CL{color: coral;font-size: 13px;float: left;margin-left: 133px;}

			#y{width: 1200px;height: 60px;text-align:center;margin:0 auto}
			#y p{text-align: center;font-size: 13px;}
			#z{width: 1200px;height: 45px;text-align:center;margin:0 auto}
			#z p{margin-top: 5px;}

        #nextdiv {
            margin-top:20px;
            width:580px;
            margin-left:630px;
        }

        #nextdiv .btn {
            background-color:white;
            border:.5px solid;
            height:30px;
            border-color:gray;
            cursor:pointer;
            color:gray;
        }

            #nextdiv .btn:hover {
                background-color:coral;
                color:white;
            }

        #nextdiv .dirbtn {
            width:35px
        }

        #nextdiv .tiaobtn {
            width:100px
        }

        

    </style>

    <script>
        function poster(self) {
            var id = self.id;
            window.open("flowerDetail.aspx" + "?id=" + id);
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div style="position:fixed;right:25px;bottom:180px;width:50px;height:50px;background-color:#E9ECF0;text-align:center;border-radius:55%;border:0.1px solid coral;box-shadow: 0.1px 0.1px 10px coral; ">
            <a href="#">
                <span style="">
                    <h1 style="font-size:25px;margin-top:-2px;">▲</h1>
                    <h1 style="font-size:12px;margin-top:-5px;">置顶</h1>
                </span>
            </a>
        </div>

        <div id="header">
            <div class="nav"  style="position:relative;z-index:9999;">
					<div class="logo" style="border:0px"></div>
					<a href="Main2.aspx"><div class="home" style="border:0px;margin-left:50px;cursor:pointer;">首页</div></a>
					<div class="shopdetail" style="cursor:pointer;border:0px;background-image:linear-gradient(to bottom right,orange,red);position:relative">
						<details style="z-index:9999;">
							<summary>商品分类</summary>
							<ul style="z-index:100;position:relative;left:-22px" id="xia_ul">
								<a href="javascript:void(0)"><li style="z-index:9999;border:0px solid" id="llli">鲜花&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li></a>
								<a href="yongshenghua.aspx"><li style="z-index:9999;border:0px solid">永生花&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li></a>
								<a href="javascript:void(0)"><li style="z-index:9999;border:0px solid">蛋糕&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li></a>
                                <a href="Present.aspx"><li style="z-index:9999;border:0px solid">礼品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li></a>
							</ul>
						</details>	
					</div>
					<a href="sessioncat2.aspx"><div class="shopcar" style="cursor:pointer;border:0px">购物车</div></a>
					<a href="javascript:void(0)"><div class="relate" style="cursor:pointer;border:0px">联系我们</div></a>
					
					<!--
                		<a href="login.aspx"><div class="load" style="cursor:pointer;border:0px">登录</div></a>
					-->
                    <div style="cursor:pointer;border:0px">
						<a href="login.aspx">登录</a>|
						<a href="register.aspx">注册</a>
                        <div id="YHnameK" style="background-color:white;position:relative;top:-60px;display:none" runat="server">
							<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"></asp:LinkButton>
						</div>
                    </div>
					
				</div>
        </div>
        
        <%--  --%>
        <div style="width:1200px;margin:0 auto">

        <div id="img" style="width: 1200px;height: 132px;margin: 0 auto;font-family:'微软雅黑';background-color:#F7F9FA;margin-top:30px">
            <image src="img/ysh-top-banner.jpg"></image>
        </div>
        <div style="margin-left:180px">
            <ul>
                <li style="cursor:pointer">综合</li>
                <li style="cursor:pointer">销量</li>
                <li style="cursor:pointer">价格</li>
                <li style="cursor:pointer">最新</li>




                <!--查询-->



            </ul>
        </div>
            <br />
        
        <asp:DataList ID="DataList1" SkinID="shangping" runat="server" RepeatColumns="4" RepeatDirection="Horizontal">
            <ItemTemplate>
                <div onclick="poster(this)" id='<%# Eval("flower_id")%>' class="pimg">
                    <img src='<%# Eval("top_src")%>' style="border-radius:4px;" height="310" width="285"/>
                    <p class="fontp"><%# Eval("flower_name")%>
                        <br />
                        ¥ <%# Eval("flower_Now_price")%></p>
                    </a>
                </div>
            </ItemTemplate>
        </asp:DataList>
        
        <hr />

        <div id="nextdiv">
            <asp:Button ID="ButtonDown" runat="server" Text="上一页" CssClass="btn tiaobtn"/>
            <asp:Button ID="Button1" runat="server" Text="1" CssClass="btn dirbtn" OnClick="Button1_Click"/>
            <asp:Button ID="Button2" runat="server" Text="2" CssClass="btn dirbtn" OnClick="Button2_Click"/>
            <asp:Button ID="Button3" runat="server" Text="3" CssClass="btn dirbtn" OnClick="Button3_Click"/>
            <asp:Button ID="Button4" runat="server" Text="4" CssClass="btn dirbtn" OnClick="Button4_Click"/>
            <asp:Button ID="Button5" runat="server" Text="5" CssClass="btn dirbtn" OnClick="Button5_Click"/>
            <asp:Button ID="Button6" runat="server" Text="6" CssClass="btn dirbtn" OnClick="Button6_Click"/>
            <asp:Button ID="Button7" runat="server" Text="7" CssClass="btn dirbtn" OnClick="Button7_Click"/>
            <asp:Button ID="Button8" runat="server" Text="8" CssClass="btn dirbtn" OnClick="Button8_Click"/>
            <asp:Button ID="Button9" runat="server" Text="9" CssClass="btn dirbtn" OnClick="Button9_Click"/>
            <asp:Button ID="ButtonUp" runat="server" Text="下一页" CssClass="btn tiaobtn"/>
        </div>
        </div>


        <%--<div id="shangping" style="width:1200px;height:1900px;">
            <!--第一行-->
            <div id="h1">

                <div onclick="poster(4)">
                    <a href="">
                    <img src="img/xianhua/1.jpg" />
                    <p>韩式系列/诞愿是你
                        <br />
                        ¥ 278</p>
                    </a>
                </div>
                <div onclick="poster(4)">
                    <a href="">
                    <img src="img/xianhua/2.jpg"/>
                    <p>梦幻仙女/圣诞限定
                        <br />
                        ¥ 278</p>
                    </a>
                </div>
                <div onclick="poster(4)">
                    <a>
                    <img src="img/xianhua/3.jpg" />
                    <p>心中洛神
                        <br />&nbsp;
                        ¥ 428</p>
                    </a>
                </div>
                <div onclick="poster(4)">
                    <a href="">
                    <img src="img/xianhua/4.jpg" />
                    <p>韩式系列/你笑起来真好看
                        <br />&nbsp;
                        ¥ 326</p>
                    </a>
                </div>

            </div>
                

            <!--第二行-->
            <div id="h1">

                <div onclick="poster(4)">
                    <a href="">
                    <img src="img/xianhua/5.jpg" />
                    <p>韩式系列/一路向阳 
                        <br />&nbsp;
                        ¥ 326</p>
                    </a>
                </div>
                <div onclick="poster(4)">
                    <a href="">
                    <img src="img/xianhua/6.jpg"/>
                    <p>挚爱一生
                        <br />&nbsp;
                        ¥ 273</p>
                    </a>
                </div>
                <div onclick="poster(4)">
                    <a href="">
                    <img src="img/xianhua/7.jpg" />
                    <p>留住好时光
                        <br />&nbsp;
                        ¥ 270</p>
                    </a>
                </div>
                <div onclick="poster(4)">
                    <a href="">
                    <img src="img/xianhua/8.jpg" />
                    <p>你是唯一
                        <br />&nbsp;
                        ¥ 158</p>
                    </a>
                </div>

            </div>
                
            <!--第三行-->
            <div id="h1">

                <div onclick="poster(4)">
                    <a href="">
                    <img src="img/xianhua/9.jpg" />
                    <p>恋恋情深 
                        <br />&nbsp;
                        ¥ 218</p>
                    </a>
                </div>
                <div onclick="poster(4)">
                    <a href="">
                    <img src="img/xianhua/10.jpg" />
                    <p>韩式花篮/阳光使者 
                        <br />&nbsp;
                        ¥ 318</p>
                    </a>
                </div>
                <div onclick="poster(4)">
                    <a href="">
                    <img src="img/xianhua/11.jpg" />
                    <p>你最珍贵
                        <br />&nbsp;
                        ¥ 273</p>
                    </a>
                </div>
                <div onclick="poster(4)">
                    <a href="">
                    <img src="img/xianhua/12.jpg" />
                    <p>爱莎公主99
                        <br />&nbsp;
                        ¥ 659</p>
                    </a>
                </div>

            </div>

            <!--第四行-->
            <div id="h1">

                <div onclick="poster(4)">
                    <a href="">
                    <img src="img/xianhua/13.jpg" />
                    <p>不变的承诺 
                        <br />&nbsp;
                        ¥ 639</p>
                    </a>
                </div>
                <div onclick="poster(4)">
                    <a href="">
                    <img src="img/xianhua/14.jpg" />
                    <p>韩式系列/初心不负 
                        <br />&nbsp;
                        ¥ 249</p>
                    </a>
                </div>
                <div onclick="poster(4)">
                    <a href="">
                    <img src="img/xianhua/15.jpg" />
                    <p>韩式系列/亲爱的你 
                        <br />&nbsp;
                        ¥ 428</p>
                    </a>
                </div>
                <div onclick="poster(4)">
                    <a href="">
                    <img src="img/xianhua/16.jpg" />
                    <p>月光女神 
                        <br />&nbsp;
                        ¥ 260</p>
                    </a>
                </div>

            </div>

            <!--第五行-->
            <div id="h1">

                <div onclick="poster(4)">
                    <a href="">
                    <img src="img/xianhua/17.jpg" />
                    <p>我只钟情你 
                        <br />&nbsp;
                        ¥ 260</p>
                    </a>
                </div>
                <div onclick="poster(4)">
                    <a href="">
                    <img src="img/xianhua/18.jpg" />
                    <p>韩式系列/绽放
                        <br />&nbsp;
                        ¥ 196</p>
                    </a>
                </div>
                <div onclick="poster(4)">
                    <a href="">
                    <img src="img/xianhua/19.jpg" />
                    <p>真挚祝福
                        <br />&nbsp;
                        ¥ 329</p>
                    </a>
                </div>
                <div onclick="poster(4)">
                    <a href="">
                    <img src="img/xianhua/20.jpg" />
                    <p>忘情巴黎 
                        <br />&nbsp;
                        ¥ 328</p>
                    </a>
                </div>

            </div>
        
                
               


        </div>--%>
        <br />

        <div id="bottomR" style="position:relative;margin-top:80px">
                <div style="width: 1200px;height: 170px;margin-top:100px;float:none;margin:0 auto;">
            	    <div style="float: left;width: 290px;height: 150px;margin-top: 20px;text-align: left;margin-left: 20px;">
            		    <p style="color: coral;font-size: 16px;">为什么选择星花网</p>
            		    <div>&nbsp;<img src="img/Q0.jpg" width="220px" height="50px"/></div>
            		    <div><img src="img/Q2.png" width="220px" height="45px"/></div>
            	    </div>	
            	    <div style="float: left;width: 290px;height: 150px;margin-top: 20px;">
            		    <p class="CB">花店——星花网</p>
            		    <p class="CE">上亿花艺者共同打造的</p><p class="CF">"鲜花神器"</p>
            		    <br/><p class="CE">60，000</p><p class="CF">多个鲜花种类</p>
            		    <br/><p class="CE">600，000</p><p class="CF">个细分鲜花样式</p>
            		    <br/><p class="CE">760，000，000</p><p class="CF">次花语下载</p>
            		    <br/><p class="CE">38，000</p><p class="CF">家花店供应商</p>
            	    </div>
            	    <div style="float: left;width: 290px;height: 150px;margin-top: 20px;">
            		    <p style="color: coral;font-size: 16px;margin-left: 138px;">关于我们</p>
            		    <p class="CG">关于星花网&nbsp;联系我们</p>
            		    <p class="CG">隐私政策&nbsp;商标声明</p>
            		    <p class="CG">服务协议</p>
            		    <p class="CG">网络信息侵权通知指引</p>
            		    <p class="CG">网站地图</p>
            		    <p class="CL">加入星花网</p>
            	    </div>
            	    <div style="float: left;width: 290px;height: 150px;margin-top: 20px;">
            		    <p class="CJ">花艺服务</p>
            		    <p class="CH">鲜花花语</p><p class="CI">######</p>
            		    <br/><p class="CH">鲜花特价</p><p class="CI">######</p>
            		    <br/><p class="CH">花艺问答</p><p class="CI">######</p>
            		    <br/><p class="CH">鲜花指南</p><p class="CI">######</p>
            		    <br/><p class="CK">鲜花商城全球商家入驻</p>
            	    </div>
                </div>

            
                

                <div style="width:1200px;height:120px;margin:0 auto;margin-top:50px">
                    <div id="y">
            	        Copyright©2021, sglytrip.com. All rights reserved. | ICP证：湘B2-20050130 | 湘ICP备08023580号
                        <br />
            	        湘公网备31010502002731号
                        <br />
            	        违法和不良信息举报电话021-22500846丨全国服务投诉热线12301丨湖南省花艺网站落实诚信建设主体责任承诺书
                    </div>

                    <div id="z" style="margin-top:10px">
            	        <strong style="font-size:16px;color:coral">ASP.NET设计——The galaxy小组</strong>
                        <br />
                        <strong>成员:邓滨斌&nbsp;高圣&nbsp;胡威&nbsp;雷鑫&nbsp;杨泽桓&nbsp;谢蓝宇</strong>
                    </div>
                </div>

            </div>
    </form>
</body>
</html>
