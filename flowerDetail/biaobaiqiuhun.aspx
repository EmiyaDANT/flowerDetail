<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="biaobaiqiuhun.aspx.cs" Inherits="flowerDetail.biaobaiqiuhun" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="js/dianjidonghua.js"></script>
    <style>
			*{margin: 0;padding: 0;}
			.header{width: 1200px;height: 900px;margin:auto;}
			.logo{background: url(../img/logo1.png);background-size: 180px 60px;border-radius:5px;}
			.home{border-radius:5px;}
    		.nav {width: 100%;height: 60px;margin-bottom:15px}
			.nav div{width: 180px;height: 60px;float: left;line-height: 60px;border: 1px solid;text-align: center;border-radius:5px;}
			ul{margin: 2px;padding: 2px;}
			ul li{list-style-type: none;text-align: center;border: 1px solid #CCC;width:180px;
				  background: #fff;
				background-color: rgb(247,247,247);
				opacity: 0.88;
				height: 45px;
				line-height: 45px;
			}

			ul li a{color: black;text-decoration: none;color:#333;}
			ul li a:hover{ color:#f00;}
			a {color: black;text-decoration: none;}




    		#topimg {width:95%;height:390px;margin:auto}
    			#topimg img {width:100%;height:390px;border-radius:4px;}

			.home:hover, .shopdetail ul li:hover,.shopdetail summary:hover, .shopcar:hover, .relate:hover,.dr_zc a:hover  {
				border-radius:1px;
				color:sandybrown;
				opacity: 0.82;
				
			}
             p {
            width:285px;
            text-align:center;
            font-size:10px;
        }

        #p1 {
             margin-left:15px;
             font-size:20px;
        }



        #shangping {
            margin-top:25px;

        }

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

        #shangping #h1 img {
            width:285px;
            height:310px;
            border-radius:4px;
        }

    
			


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:100%;">
            
			<div class="header">
				<div class="nav"  style="position:relative;z-index:9999;">
					<div class="logo" style="border:0px;cursor:pointer" onclick="toFlowerSay()"></div>
					<div class="home" style="border:0px;margin-left:50px">首页</div>
					<div class="shopdetail" style="cursor:pointer;border:0px" >
						<details style="z-index:9999;">
							<summary>商品分类</summary>
							<ul id="xia_ul" style="z-index:100;">
								<a href="xianflower.aspx"><li style="z-index:9999;border:0px solid">鲜花&nbsp;&nbsp;&nbsp;</li></a>
								<a href="yongshenghua.aspx"><li style="z-index:9999;border:0px solid">永生花&nbsp;&nbsp;&nbsp;</li></a>
								<a href="javascript:void(0)"><li style="z-index:9999;border:0px solid">蛋糕&nbsp;&nbsp;&nbsp;</li></a>
                                <a href="Present.aspx"><li style="z-index:9999;border:0px solid">礼品&nbsp;&nbsp;&nbsp;</li></a>
							</ul>
						</details>	
					</div>
					<a href="sessioncat2.aspx"><div class="shopcar" style="cursor:pointer;border:0px">购物车</div></a>
					<a href="javascript:void(0)"><div class="relate" style="cursor:pointer;border:0px">联系我们</div></a>
					
					
                    <div class="dr_zc" style="cursor:pointer;border:0px">
						<a href="login.aspx">登录</a>|
						<a href="login.aspx">注册</a>
                        <div id="YHnameK" style="background-color:white;position:relative;top:-60px;display:none" runat="server">
							<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"></asp:LinkButton>
						</div>
                    </div>
					
				</div>
				
				<div id="topimg">
					<img src="img/flower_bannerBiaobai_180409.jpg" alt="Alternate Text"/>
				</div>

				<!--下面内容-->
				<div style="margin:auto;margin-top:8px;background-color:rgb(255,232,237);width:95%;height:24px;line-height:24px;;border-radius:5px;">
                    <p id="p1">表白热销花推荐</p>
				</div>

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
    </form>
</body>
</html>
