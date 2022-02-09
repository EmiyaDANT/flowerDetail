<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yongshenghua.aspx.cs" Inherits="flowerDetail.yongshenghua" %>

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

        #shangping #h1 {
            margin-bottom:35px;
            width:1200px;
            height:340px;
        
        }

        #shangping #h1 div {
            width:285px;
            float:left;
            margin-left:10px;
            border-radius:4px;
        }
            #shangping #h1 div:hover {
                border:1px solid coral;
                box-shadow: 3px 6px 15px coral;
                box-sizing: border-box;
            
            
            }

        p {
            width:285px;
            text-align:center;
            font-size:10px;
        }


        #shangping #h1 img {
            width:285px;
            height:310px;
            border-radius:4px;
        }

        #header {
            width:1200px;
            height:60px;
            margin:0 auto;
        }

        .nav div{width: 180px;height: 60px;float: left;line-height: 60px;border: 1px solid;text-align: center;color:black;}

        ul{margin: 2px;padding: 2px;}
			ul li{list-style-type: none;height: 34px;text-align: center;border: 1px solid #CCC;line-height:34px;background: #eee;width:180px}
			
			ul li a{color: black;text-decoration: none;color:#333;}
			ul li a:hover{ color:#f00;}

			a {color: black;text-decoration: none;}

        div_ul ul {

        }

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

            

    </style>

    <script>
        function poster(id) {
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
								<a href="xianflower.aspx"><li style="z-index:9999;border:0px solid">鲜花&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li></a>
								<a href="yongshenghua.aspx"><li style="z-index:9999;border:0px solid" id="llli">永生花&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li></a>
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
        <div style="width: 1200px;height: 2000px;margin: 0 auto;font-family:'微软雅黑';background-color:#F7F9FA;margin-top:30px">
            <div id="img">
                <img src="img/ysh-top-banner.jpg" alt="Alternate Text" width='1200px' height='132px';/>
            </div>
            <div id="div_ul" style="margin-left:15px;">
                <ul>
                    <li>综合</li>
                    <li>销量</li>
                    <li>价格</li>
                    <li>最新</li>

                    <!--做查询-->

                </ul>
            </div>
            <br />
            <div id="shangping" style="width:1200px;height:1900px;">
                <!--第一行-->
                <div id="h1">

                    <div onclick="poster(4)">
                        <a href="">
                        <img src="img/9012519.jpg_220x240.jpg" />
                        <p>永生花/爱的礼物-纪梵希N37爱语限量版
                            <br />
                            ¥ 699</p>
                        </a>
                    </div>
                    <div onclick="poster(4)">
                        <a href="">
                        <img src="img/9012493.jpg_220x240.jpg"/>
                        <p>永生花/一鹿(路)有你永生花小夜灯
                            <br />
                            ¥ 298</p>
                        </a>
                    </div>
                    <div onclick="poster(4)">
                        <a>
                        <img src="img/9012177.jpg_220x240.jpg" />
                        <p>经典花盒/我如此爱你-迪奥Dior888元气橘
                            <br />&nbsp;
                            ¥ 639</p>
                        </a>
                    </div>
                    <div onclick="poster(4)">
                        <a href="">
                        <img src="img/1073356.jpg_220x240.jpg" />
                        <p>特色永生花/招财猫永生花水晶球玻璃罩小
                            <br />&nbsp;
                            ¥ 168</p>
                        </a>
                    </div>

                </div>
                

                <!--第二行-->
                <div id="h1">

                    <div onclick="poster(4)">
                        <a href="">
                        <img src="img/1073356.jpg_220x240.jpg" />
                        <p>泰国保鲜花/幸福时光 
                            <br />&nbsp;
                            ¥ 599</p>
                        </a>
                    </div>
                    <div onclick="poster(4)">
                        <a href="">
                        <img src="img/9012467.jpg_220x240.jpg"/>
                        <p>永生花/心形礼盒/永生花巧克力心语150g 
                            <br />&nbsp;
                            ¥ 298</p>
                        </a>
                    </div>
                    <div onclick="poster(4)">
                        <a href="">
                        <img src="img/forever2.jpg" />
                        <p>永生花/Be My Love
                            <br />&nbsp;
                            ¥ 162</p>
                        </a>
                    </div>
                    <div onclick="poster(4)">
                        <a href="">
                        <img src="img/love4.jpg" />
                        <p>永生花/磁悬浮永生花灯蓝牙款/粉色小玫
                            <br />&nbsp;
                            ¥ 329</p>
                        </a>
                    </div>

                </div>
                
                <!--第三行-->
                <div id="h1">

                    <div onclick="poster(4)">
                        <a href="">
                        <img src="img/forever1.jpg" />
                        <p>永生花/花好月圆永生花台灯/送老师长辈 
                            <br />&nbsp;
                            ¥ 139</p>
                        </a>
                    </div>
                    <div onclick="poster(4)">
                        <a href="">
                        <img src="img/forever2.jpg" />
                        <p>永生花/永生花满月艺术台灯/朦胧粉 
                            <br />&nbsp;
                            ¥ 329</p>
                        </a>
                    </div>
                    <div onclick="poster(4)">
                        <a href="">
                        <img src="img/forever3.jpg" />
                        <p>永生花/香槟金色铁艺永生花提篮/少女粉 
                            <br />&nbsp;
                            ¥ 219</p>
                        </a>
                    </div>
                    <div onclick="poster(4)">
                        <a href="">
                        <img src="img/forever4.jpg" />
                        <p>巨型玫瑰/公主的音乐水晶球·红玫瑰
                            <br />&nbsp;
                            ¥ 232</p>
                        </a>
                    </div>

                </div>

                <!--第四行-->
                <div id="h1">

                    <div onclick="poster(4)">
                        <a href="">
                        <img src="img/parent5.jpg" />
                        <p>永生花/爱的礼篮永生花香薰花篮小夜灯 
                            <br />&nbsp;
                            ¥ 449</p>
                        </a>
                    </div>
                    <div onclick="poster(4)">
                        <a href="">
                        <img src="img/parent2.jpg" />
                        <p>永生花/柔情时光-施华洛世奇Remix珠光 
                            <br />&nbsp;
                            ¥ 219</p>
                        </a>
                    </div>
                    <div onclick="poster(4)">
                        <a href="">
                        <img src="img/parent4.jpg" />
                        <p>泰国保鲜花/一生所爱 
                            <br />&nbsp;
                            ¥ 249</p>
                        </a>
                    </div>
                    <div onclick="poster(4)">
                        <a href="">
                        <img src="img/parent1.jpg" />
                        <p>特色永生花/To温暖你心 
                            <br />&nbsp;
                            ¥ 429</p>
                        </a>
                    </div>

                </div>

                <!--第五行-->
                <div id="h1">

                    <div onclick="poster(4)">
                        <a href="">
                        <img src="img/parent3.jpg" />
                        <p>永生花/爱的礼物-汤姆福特经典TF#16口 
                            <br />&nbsp;
                            ¥ 229</p>
                        </a>
                    </div>
                    <div onclick="poster(4)">
                        <a href="">
                        <img src="img/parent8.jpg" />
                        <p>永生花/我如此爱你-施华洛世奇ONE浪漫心形项链
 
                            <br />&nbsp;
                            ¥ 149</p>
                        </a>
                    </div>
                    <div onclick="poster(4)">
                        <a href="">
                        <img src="img/parent7.jpg" />
                        <p>永生花/爱的礼物-祖玛龙/蓝风铃香水30ml 
                            <br />&nbsp;
                            ¥ 329</p>
                        </a>
                    </div>
                    <div onclick="poster(4)">
                        <a href="">
                        <img src="img/forever8.jpg" />
                        <p>永生花/「倾世之爱」奢宠 
                            <br />&nbsp;
                            ¥ 319</p>
                        </a>
                    </div>

                </div>

                
               


            </div>
        </div>
        <br />

            <div id="bottomR" style="position:relative;margin-top:100px;">
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
