<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="birthday4.aspx.cs" Inherits="birthday.birthday" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
	<link href="img/icon.ico" rel="icon" />
	<script src="js/dianjidonghua.js"></script>
	<script>
    </script>
    <style>
        *{margin: 0;padding: 0;}
        .web{width: 1200px;height: 8150px;margin: 0 auto;}
        .header{width: 1200px;height: 100px;border: 0px solid;}

        #img1{position: relative;left: 50%;margin-left: -960px;margin-right: 960px;}
        #font1{cursor: pointer;background: #EDD5D8;color: #A4555D;float: left;text-align: center;line-height: 50px;font-size: 24px; height: 50px;width: 300px;}
        input{width: 130px;height: 36px; border: 1px solid #DECEE0;font-size: 16px; background: #DECEE0;color: #724978;}
        #div1 div{margin-left: 40px;}
        #font2{text-align: center;margin-top: 5px;font-size: 18px;font-weight: bold;}
        #font3{text-align: center;margin-top: 10px;font-size: 18px;}
        #font4{margin-left: 45px;margin-top: 50px;font-size: 18px;font-weight: bold;}
        #font5{margin-left: 45px;margin-top: 15px;font-size: 16px;}
        #font6{margin-left: 45px;margin-top: 26px;font-size: 18px;}

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

        #y{height: 60px;}
        #y p{text-align: center;font-size: 13px;}
        #z{height: 45px;text-align: center;}
        #z p{margin-top: 5px;}

		.nav div{width: 180px;height: 60px;float: left;line-height: 60px;border: 1px solid;text-align: center;color:black;}

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

        .logo{background: url(../img/logo1.png);background-size: 180px 60px;}

        #llli {
            background-image:linear-gradient(to bottom right,orange,red);
            color:white;
        }

		.home:hover, .shopdetail ul li:hover,.shopdetail summary:hover, .shopcar:hover, .relate:hover,.dr_zc a:hover  {
				border-radius:1px;
				color:sandybrown;
				opacity: 0.85;
			
			}


    	div {
    		border-radius:5px;
		}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="web">
			<div class="header">
				<div class="nav"  style="position:relative;z-index:9999;">
					<div class="logo" style="border:0px"></div>
					<a href="Main2.aspx"><div class="home" style="border:0px;margin-left:50px;cursor:pointer;">首页</div></a>
					<div class="shopdetail" style="cursor:pointer;border:0px;background-image:linear-gradient(to bottom right,orange,red);position:relative">
						<details style="z-index:9999;">
							<summary>商品分类</summary>
							<ul style="z-index:100;position:relative;left:-5px" id="xia_ul">
								<a href="javascript:void(0)"><li style="z-index:9999;border:0px solid">鲜花&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li></a>
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
			<div style="height: 7750px;">
				<div><img src="img/birthday_lunbo4.png" id="img1" /></div>
				<div>
					<a href="birthday1.aspx"><div id="font1" style="background: #EDD5D8;color: #A4555D;">送恋人</div></a>
					<a href="birthday2.aspx"><div id="font1" style="background: #CFE1E6;color: #487687;">送长辈</div></a>
					<a href="birthday3.aspx"><div id="font1" style="background: #CFD6E6;color: #485887;">送男性</div></a>
					<a href="birthday4.aspx"><div id="font1" style="background: #DECEE0;color: #724978;">送闺蜜</div></a>
				</div>
				<div style="height: 188px;"><img src="img/card.png" width="1200px"/></div>
				
				<!--鲜花-->
				<div>
					<div style="height: 195px;"><img src="img/birthdayhua.png" id="img1"/></div>
					<div style="height: 750px;">
						<div style="width: 620px;height: 685px;position: relative;float: left;">
							<div style="background: #DECEE0;width: 580px;height: 595px;"></div>
							<div><img src="img/birthday1.jpg" style="width: 540px;height: 635px;position: absolute;top: 40px;left: 80px;"/></div>
						</div>
						<div style="width: 580px;height: 685px;float: left;">
							<div id="div1" style="height: 400px;">
								<div style="float: left;">
									<img src="img/birthday2.jpg" style="width: 249px;height: 270px;"/>
									<p id="font2">满天星-浅粉</p>
									<p id="font3">¥218</p>
									<input type="button" value="立即购买" style="float: left;margin-top: 5px;margin-left: 60px;"/>
								</div>
								<div style="float: left;">
									<img src="img/birthday3.jpg" width="249px" height="270px"/>
									<p id="font2">韩式系列/一路向阳</p>
									<p id="font3">¥326</p>
									<input type="button" value="立即购买" style="float: left;margin-top: 5px;margin-left: 60px;"/>
								</div>
							</div>
							<div style="height: 280px;position: relative;">
								<img src="img/backgroundhua.png" style="height: 280px;"/>
								<div style="position: absolute;top: 0%;left: 0%;">
									<p id="font4">韩式系列/公主的假日</p>
									<p id="font5">戴安娜玫瑰11枝、白色洋桔梗5枝、大叶尤加利10枝</p>
									<p id="font6" style="float: left;">¥241</p>
									<input type="button" value="立即购买" style="float: left;margin-top: 20px;margin-left: 15px;"/>
								</div>
							</div>
						</div>
					</div>
					<div style="height: 910px;">
						<div style="width: 579px;height: 840px;float: left;">
							<div style="height: 385px;margin-top: 40px;">
								<div style="float: left;">
									<img src="img/birthday2.jpg" style="width: 249px;height: 270px;"/>
									<p id="font2">可爱女人</p>
									<p id="font3">¥273</p>
									<input type="button" value="立即购买" style="float: left;margin-top: 5px;margin-left: 60px;"/>
								</div>
								<div style="float: left;margin-left: 37px;">
									<img src="img/birthday3.jpg" width="249px" height="270px"/>
									<p id="font2">韩式系列/绽放</p>
									<p id="font3">¥196</p>
									<input type="button" value="立即购买" style="float: left;margin-top: 5px;margin-left: 60px;"/>
								</div>
							</div>
							<div>
								<div style="width: 1000px;height: 160px;background: #CFD6E5;position: relative;left: 50%;margin-left: -500px;margin-right: 960px;margin-top: 50px;">
								<div style="float: left;position: absolute;left: 21%;top: -30px;">
									<img src="img/birthday2.jpg" style="width: 249px;height: 270px;"/>
									<p id="font2">爱丽丝-仙女纱款</p>
									<p id="font3">¥373</p>
									<input type="button" value="立即购买" style="float: left;margin-top: 5px;margin-left: 60px;"/>
								</div>
								<div style="float: left;position: absolute;right: 25%;top: -30px; margin-left: 37px;">
									<img src="img/birthday3.jpg" width="249px" height="270px"/>
									<p id="font2">韩式系列/一见如初</p>
									<p id="font3">¥505</p>
									<input type="button" value="立即购买" style="float: left;margin-top: 5px;margin-left: 60px;"/>
								</div>
								</div>
							</div>
						</div>
						<div style="width: 620px;height: 840px;position: relative;float: left;">
							<div style="background: #DECEE0;width: 580px;height: 595px;"></div>
							<div><img src="img/birthday8.jpg" style="width: 540px;height: 635px;position: absolute;top: 40px;left: 80px;"/></div>
							<div style="margin-top: 120px;margin-left: 77px;">
								<fieldset style="height: 100px;border-style: none;border-top: 5px solid #CFD6E5;">
									<legend style="font-size: 18px;font-weight: bold;">韩式系列/着迷&nbsp;&nbsp;&nbsp;</legend>
									<p style="width: 400px; word-wrap: break-word;margin-top: 26px;font-size: 16px;float: left;">紫霞仙子玫瑰11枝、白色洋桔梗10枝、尤加利5枝、浅紫色紫罗兰3枝。</p>
									<div style="width: 135px; float: left;">
										<p style="font-size: 18px;margin-left: 95px;margin-top: 8px;">¥307</p>
										<input type="button" value="立即购买" style="margin-top: 8px;margin-left: 10px;"/>
									</div>
								</fieldset>
							</div>
						</div>
					</div>
				</div>
				
				<!--蛋糕 -->
				<div>
					<div style="height: 195px;"><img src="img/birthdaycake.png" id="img1"/></div>
					<div style="height: 690px;">
						<div style="width: 590px;height: 690px;float: left;">
							<img src="img/birthday9.jpg" style="width: 590px;height: 590px;"/>
							<div style="width: 460px;margin-top: 10px; float: left;">
								<p style="font-size: 18px;font-weight: bold;">四重奏蛋糕(约2磅)</p>
								<p style="font-size: 18px;margin-top: 5px;">¥238</p>
							</div>
							<input type="button" value="立即购买" style="margin-top: 20px; float: left;"/>
						</div>
						<div style="width: 595px;height: 690px;float: left;margin-left: 15px;">
							<div style="height: 340px;">
								<div style="float: left;">
									<img src="img/birthday10.jpg" style="width: 285px;height: 285px;"/>
								</div>
								<div style="width: 298px;height: 285px;margin-left: 10px;background: url(img/download.png); float: left;">
									<p style="text-align: center;margin-top: 75px; font-size: 18px;font-weight: bold;">榴芒双拼(约2磅)</p>
									<p style="text-align: center;margin-top: 15px; font-size: 16px;">双拼蛋糕</p>
									<p style="text-align: center;margin-top: 40px; font-size: 18px;">¥228</p>
									<input type="button" value="立即购买" style="margin-left: 85px;margin-top: 10px;"/>
								</div>
							</div>
							<div style="height: 340px;">
								<div style="width: 298px;height: 285px;background: url(img/download.png) 0 0 no-repeat; transform: rotate(180deg); float: left;">
									<div style="transform: rotate(180deg);">
										<p style="text-align: center;margin-top: 40px; font-size: 18px;font-weight: bold;">芒果奶油蛋糕(2磅)+方形蜡烛</p>
										<p style="text-align: center;margin-top: 15px; font-size: 16px;">乳脂奶油蛋糕</p>
										<p style="text-align: center;margin-top: 40px; font-size: 18px;">¥206</p>
										<input type="button" value="立即购买" style="margin-left: 85px;margin-top: 10px;"/>
									</div>
								</div>
								<div style="float: left;">
									<img src="img/birthday11.jpg" style="width: 285px;height: 285px;margin-left: 10px;"/>
								</div>
							</div>
						</div>
					</div>
					<div style="height: 385px;">
						<div style="width: 285px;height: 385px;float: left;">
							<img src="img/birthday12.jpg" style="width: 285px;height: 285px;"/>
							<p style="font-size: 18px;font-weight: bold;">鲜奶水果(6寸)</p>
							<p style="font-size: 18px;margin-top: 5px;">¥159</p>
							<input type="button" value="立即购买"/>
						</div>
						<div style="width: 285px;height: 385px;margin-left:20px;float: left;">
							<img src="img/birthday13.jpg" style="width: 285px;height: 285px;"/>
							<p style="font-size: 18px;font-weight: bold;">汪来了950g</p>
							<p style="font-size: 18px;margin-top: 5px;">¥329</p>
							<input type="button" value="立即购买"/>
						</div>
						<div style="width: 590px;height: 385px;margin-left:20px;float: left;">
							<div style="width: 590px;height: 285px;"><img src="img/birthday14.jpg" style="object-fit: cover;width: 100%;height: 100%;"/></div>
							<div style="width: 460px;margin-top: 10px; float: left;">
								<p style="font-size: 18px;font-weight: bold;">雪域牛乳芝士蛋糕（5-8人食）</p>
								<p style="font-size: 18px;margin-top: 5px;">¥336</p>
							</div>
							<input type="button" value="立即购买" style="margin-top: 20px; float: left;"/>
						</div>
					</div>
					<div style="height: 395px;">
						<div style="width: 600px;margin-top: 60px;float: left;"><img src="img/backgroundcake.png" style="position: relative;z-index: -1;right: 300px;"/></div>
						<div style="float: left;">
							<div style="width: 285px;height: 360px;float: left;">
								<img src="img/birthday15.jpg" style="width: 285px;height: 285px;"/>
								<div style="width: 155px; float: left;">
									<p style="font-size: 18px;font-weight: bold;">蓝莓甜心（6寸）</p>
									<p style="font-size: 18px;margin-top: 5px;">¥159</p>
								</div>
								<input type="button" value="立即购买" style="margin-top: 15px;float: left;"/>
							</div>
							<div style="width: 285px;height: 360px;margin-left:20px;float: left;">
								<img src="img/birthday16.jpg" style="width: 285px;height: 285px;"/>
								<div style="width: 155px; float: left;">
									<p style="font-size: 18px;font-weight: bold;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;">巧克力椰子无糖（6寸）</p>
									<p style="font-size: 18px;margin-top: 5px;">¥179</p>
								</div>
								<input type="button" value="立即购买" style="margin-top: 15px;float: left;"/>
							</div>
						</div>
					</div>
				</div>
				
				<!--永生花-->
				<div>
					<div style="height: 195px;"><img src="img/birthdayforever.png" id="img1"/></div>
					<div style="height: 910px;">
						<div style="width: 579px;height: 840px;float: left;">
							<div style="height: 385px;margin-top: 40px;">
								<div style="float: left;">
									<img src="img/birthday17.jpg" style="width: 249px;height: 270px;"/>
									<p id="font2">一鹿(路)有你永生花小夜灯</p>
									<p id="font3">¥298</p>
									<input type="button" value="立即购买" style="float: left;margin-top: 5px;margin-left: 60px;"/>
								</div>
								<div style="float: left;margin-left: 37px;">
									<img src="img/birthday18.jpg" width="249px" height="270px"/>
									<p id="font2">永生花带灯+蓝牙音箱/天空蓝</p>
									<p id="font3">¥398</p>
									<input type="button" value="立即购买" style="float: left;margin-top: 5px;margin-left: 60px;"/>
								</div>
							</div>
							<div>
								<div style="width: 1000px;height: 160px;background: #CFD6E5;position: relative;left: 50%;margin-left: -500px;margin-right: 960px;margin-top: 50px;">
								<div style="float: left;position: absolute;left: 21%;top: -30px;">
									<img src="img/birthday19.jpg" style="width: 249px;height: 270px;"/>
									<p id="font2">磁悬浮永生花灯蓝牙款</p>
									<p id="font3">¥399</p>
									<input type="button" value="立即购买" style="float: left;margin-top: 5px;margin-left: 60px;"/>
								</div>
								<div style="float: left;position: absolute;right: 25%;top: -30px; margin-left: 37px;">
									<img src="img/birthday20.jpg" width="249px" height="270px"/>
									<p id="font2">独角兽永生花小夜灯/粉</p>
									<p id="font3">¥298</p>
									<input type="button" value="立即购买" style="float: left;margin-top: 5px;margin-left: 60px;"/>
								</div>
								</div>
							</div>
						</div>
						<div style="width: 620px;height: 840px;position: relative;float: left;">
							<div style="background: #DECEE0;width: 580px;height: 595px;"></div>
							<div><img src="img/birthday21.jpg" style="width: 540px;height: 635px;position: absolute;top: 40px;left: 80px;"/></div>
							<div style="margin-top: 120px;margin-left: 77px;">
								<fieldset style="height: 100px;border-style: none;border-top: 5px solid #CFD6E5;">
									<legend style="font-size: 18px;font-weight: bold;">爱的礼物-迪奥全新口红丝绒999永生花高定礼盒&nbsp;&nbsp;&nbsp;</legend>
									<p style="width: 400px; word-wrap: break-word;margin-top: 26px;font-size: 16px;float: left;">内含烈艳蓝金高订色泽#999丝绒唇膏</p>
									<div style="width: 135px; float: left;">
										<p style="font-size: 18px;margin-left: 95px;margin-top: 8px;">¥698</p>
										<input type="button" value="立即购买" style="margin-top: 8px;margin-left: 10px;"/>
									</div>
								</fieldset>
							</div>
						</div>
					</div>
					<div style="height: 750px;">
						<div style="width: 620px;height: 685px;position: relative;float: left;">
							<div style="background: #DECEE0;width: 580px;height: 595px;"></div>
							<div><img src="img/birthday22.jpg" style="width: 540px;height: 635px;position: absolute;top: 40px;left: 80px;"/></div>
						</div>
						<div style="width: 580px;height: 685px;float: left;">
							<div id="div1" style="height: 400px;">
								<div style="float: left;">
									<img src="img/birthday23.jpg" style="width: 249px;height: 270px;"/>
									<p id="font2">一路上有你</p>
									<p id="font3">¥369</p>
									<input type="button" value="立即购买" style="float: left;margin-top: 5px;margin-left: 60px;"/>
								</div>
								<div style="float: left;">
									<img src="img/birthday24.jpg" width="249px" height="270px"/>
									<p id="font2">给你我的心-美宝莲星钻小灯管</p>
									<p id="font3">¥338</p>
									<input type="button" value="立即购买" style="float: left;margin-top: 5px;margin-left: 60px;"/>
								</div>
							</div>
							<div style="height: 280px;position: relative;">
								<img src="img/backgroundhua.png" style="height: 280px;"/>
								<div style="position: absolute;top: 0%;left: 0%;">
									<p id="font4">T400双C项链女锁骨链镶施华洛世奇锆电镀玫瑰金</p>
									<p id="font5">双C系列新品，永生花礼盒，玫瑰金</p>
									<p id="font6" style="float: left;">¥299</p>
									<input type="button" value="立即购买" style="float: left;margin-top: 20px;margin-left: 15px;"/>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<!--礼品-->
				<div>
					<div style="height: 195px;"><img src="img/birthdaygift.png" id="img1"/></div>
					<div style="height: 385px;">
						<div style="width: 285px;height: 385px;float: left;">
							<img src="img/birthday25.jpg" style="width: 285px;height: 285px;"/>
							<p style="font-size: 18px;font-weight: bold;">公仔创意花束-兔子小姐</p>
							<p style="font-size: 18px;margin-top: 5px;">¥169</p>
							<input type="button" value="立即购买"/>
						</div>
						<div style="width: 285px;height: 385px;margin-left:20px;float: left;">
							<img src="img/birthday26.jpg" style="width: 285px;height: 285px;"/>
							<p style="font-size: 18px;font-weight: bold;">磁悬浮3D打印土星灯</p>
							<p style="font-size: 18px;margin-top: 5px;">¥439</p>
							<input type="button" value="立即购买"/>
						</div>
						<div style="width: 590px;height: 385px;margin-left:20px;float: left;">
							<div style="width: 590px;height: 285px;"><img src="img/birthday27.jpg" style="object-fit: cover;width: 100%;height: 100%;"/></div>
							<div style="width: 460px;margin-top: 10px; float: left;">
								<p style="font-size: 18px;font-weight: bold;">手工卡通棒棒糖</p>
								<p style="font-size: 18px;margin-top: 5px;">¥99</p>
							</div>
							<input type="button" value="立即购买" style="margin-top: 20px; float: left;"/>
						</div>
					</div>
					<div style="height: 395px;">
						<div style="width: 600px;margin-top: 60px;float: left;"><img src="img/backgroundhua.png" style="position: relative;z-index: -1;right: 300px;"/></div>
						<div style="float: left;">
							<div style="width: 285px;height: 360px;float: left;">
								<img src="img/birthday28.jpg" style="width: 285px;height: 285px;"/>
								<div style="width: 155px; float: left;">
									<p style="font-size: 18px;font-weight: bold;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;">山进潘多拉便携式无线蓝牙音箱/迷你低音炮复古收音机</p>
									<p style="font-size: 18px;margin-top: 5px;">¥339</p>
								</div>
								<input type="button" value="立即购买" style="margin-top: 15px;float: left;"/>
							</div>
							<div style="width: 285px;height: 360px;margin-left:20px;float: left;">
								<img src="img/birthday29.jpg" style="width: 285px;height: 285px;"/>
								<div style="width: 155px; float: left;">
									<p style="font-size: 18px;font-weight: bold;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;">Martine Wester镀金珍爱你我珍珠项链礼盒</p>
									<p style="font-size: 18px;margin-top: 5px;">¥189</p>
								</div>
								<input type="button" value="立即购买" style="margin-top: 15px;float: left;"/>
							</div>
						</div>
					</div>
					<div style="height: 660px;">
						<div style="width: 590px;height: 660px;float: left;">
							<img src="img/birthday30.jpg" style="width: 590px;height: 590px;"/>
							<div style="width: 460px;margin-top: 10px; float: left;">
								<p style="font-size: 18px;font-weight: bold;">VOLUSPA-玫瑰/马卡龙香薰礼盒</p>
								<p style="font-size: 18px;margin-top: 5px;">¥298</p>
							</div>
							<input type="button" value="立即购买" style="margin-top: 20px; float: left;"/>
						</div>
						<div style="width: 595px;height: 660px;float: left;margin-left: 15px;">
							<div style="height: 340px;">
								<div style="float: left;">
									<img src="img/birthday31.jpg" style="width: 285px;height: 285px;"/>
								</div>
								<div style="width: 298px;height: 285px;margin-left: 10px;background: url(img/download.png); float: left;">
									<p style="text-align: center;margin-top: 65px; font-size: 18px;font-weight: bold;">施华洛世奇Remix温婉珠韵<br/>手链/红色</p>
									<p style="text-align: center;margin-top: 10px; font-size: 16px;">SWAROVSKI REMIX手链</p>
									<p style="text-align: center;margin-top: 40px; font-size: 18px;">¥799</p>
									<input type="button" value="立即购买" style="margin-left: 85px;margin-top: 10px;"/>
								</div>
							</div>
							<div style="height: 340px;">
								<div style="width: 298px;height: 285px;background: url(img/download.png) 0 0 no-repeat; transform: rotate(180deg); float: left;">
									<div style="transform: rotate(180deg);">
										<p style="text-align: center;margin-top: 35px; font-size: 18px;font-weight: bold;">Glam Ever星星月亮不对称<br/>玫瑰金耳钉</p>
										<p style="text-align: center;margin-top: 10px; font-size: 16px;">魅力星月系列</p>
										<p style="text-align: center;margin-top: 40px; font-size: 18px;">¥189</p>
										<input type="button" value="立即购买" style="margin-left: 85px;margin-top: 10px;"/>
									</div>
								</div>
								<div style="float: left;">
									<img src="img/birthday32.jpg" style="width: 285px;height: 285px;margin-left: 10px;"/>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div style="width: 1200px;height: 170px;margin-top:80px;">
            	<div style="float: left;width: 290px;height: 150px;margin-top: 20px;text-align: left;margin-left: 20px;">
            		<p style="color: coral;font-size: 16px;">为什么选择星花网</p>
            		<div>&nbsp;<img src="img/Q0.jpg" width="220px" height="50px"/></div>
            		<div><img src="img/Q2.png" width="220px" height="45px"/></div>
            	</div>	
            	<div style="float: left;width: 290px;height: 150px;margin-top: 20px;">
            		<p class="CB">花店——星花网</p>
            		<p class="CE">上亿花艺者共同打造的</P><P class="CF">"鲜花神器"</p>
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
            <div id="y">
            	<p>Copyright©2021, sglytrip.com. All rights reserved. | ICP证：湘B2-20050130 | 湘ICP备08023580号</p>
            	<p>湘公网备31010502002731号</p>
            	<p>违法和不良信息举报电话021-22500846丨全国服务投诉热线12301丨湖南省花艺网站落实诚信建设主体责任承诺书</p>
            </div>
            <div id="z">
            	<p style="color: coral;font-size: 16PX;"><strong>ASP.NET设计——The galaxy小组</strong></p><p><strong>成员:邓滨斌&nbsp;高圣&nbsp;胡威&nbsp;雷鑫&nbsp;杨泽桓&nbsp;谢蓝宇</strong></p>
            </div>
            <div style="position:fixed;right:25px;bottom:180px;width:50px;height:50px;background-color:#E9ECF0;text-align:center;border-radius:55%;border:0.1px solid coral;box-shadow: 0.1px 0.1px 10px coral; ">
	            <a href="#">
	                <span style="">
	                    <h1 style="font-size:25px;margin-top:-2px;">▲</h1>
	                    <h1 style="font-size:12px;margin-top:-5px;">置顶</h1>
	                </span>
	            </a>
        	</div>
		</div>
    </form>
</body>
</html>
