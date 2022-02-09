<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="birthday3.aspx.cs" Inherits="birthday.birthday3" %>

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
			input{width: 130px;height: 36px; border: 1px solid #CFD6E6;font-size: 16px; background: #CFD6E6;color: #485887;}
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
								<a href="javascript:void(0)"><li style="z-index:9999;border:0px solid">鲜花&nbsp;&nbsp;&nbsp;&nbsp;</li></a>
								<a href="yongshenghua.aspx"><li style="z-index:9999;border:0px solid">永生花&nbsp;&nbsp;&nbsp;&nbsp;</li></a>
								<a href="javascript:void(0)"><li style="z-index:9999;border:0px solid">蛋糕&nbsp;&nbsp;&nbsp;&nbsp;</li></a>
                                <a href="Present.aspx"><li style="z-index:9999;border:0px solid">礼品&nbsp;&nbsp;&nbsp;&nbsp;</li></a>
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
				<div><img src="img/birthday_lunbo3.png" id="img1" /></div>
				<div>
					<a href="birthday1.aspx"><div id="font1" style="background: #EDD5D8;color: #A4555D;">送恋人</div></a>
					<a href="birthday2.aspx"><div id="font1" style="background: #CFE1E6;color: #487687;">送长辈</div></a>
					<a href="birthday3.aspx"><div id="font1" style="background: #CFD6E6;color: #485887;">送男性</div></a>
					<a href="birthday4.aspx"><div id="font1" style="background: #DECEE0;color: #724978;">送闺蜜</div></a>
				</div>
				<div style="height: 188px;"><img src="img/card.png" width="1200px"/></div>
				
				<!--鲜花-->
				<div>
					<div style="height: 195px;"><img src="img/background9.png" id="img1"/></div>
					<div style="height: 750px;">
						<div style="width: 620px;height: 685px;position: relative;float: left;">
							<div style="background: #CFD6E6;width: 580px;height: 595px;"></div>
							<div><img src="img/birthday1_1.jpg" style="width: 540px;height: 635px;position: absolute;top: 40px;left: 80px;"/></div>
						</div>
						<div style="width: 580px;height: 685px;float: left;">
							<div id="div1" style="height: 400px;">
								<div style="float: left;">
									<img src="img/birthday1_2.jpg" style="width: 249px;height: 270px;"/>
									<p id="font2">韩式系列/亲爱的你</p>
									<p id="font3">¥428</p>
									<input type="button" value="立即购买" style="float: left;margin-top: 5px;margin-left: 60px;"/>
								</div>
								<div style="float: left;">
									<img src="img/birthday1_3.jpg" width="249px" height="270px"/>
									<p id="font2">你是唯一</p>
									<p id="font3">¥158</p>
									<input type="button" value="立即购买" style="float: left;margin-top: 5px;margin-left: 60px;"/>
								</div>
							</div>
							<div style="height: 280px;position: relative;">
								<img src="img/background3_1.png" style="height: 280px;"/>
								<div style="position: absolute;top: 0%;left: 0%;">
									<p id="font4">韩式系列/初心不负</p>
									<p id="font5">11支卡罗拉玫瑰，代表我一生一世一心一意&热烈且深情爱着你</p>
									<p id="font6" style="float: left;">¥249</p>
									<input type="button" value="立即购买" style="float: left;margin-top: 20px;margin-left: 15px;"/>
								</div>
							</div>
						</div>
					</div>
					<div style="height: 910px;">
						<div style="width: 579px;height: 840px;float: left;">
							<div style="height: 385px;margin-top: 40px;">
								<div style="float: left;">
									<img src="img/birthday1_4.jpg" style="width: 249px;height: 270px;"/>
									<p id="font2">一往情深</p>
									<p id="font3">¥273</p>
									<input type="button" value="立即购买" style="float: left;margin-top: 5px;margin-left: 60px;"/>
								</div>
								<div style="float: left;margin-left: 37px;">
									<img src="img/birthday1_5.jpg" width="249px" height="270px"/>
									<p id="font2">用心爱你</p>
									<p id="font3">¥639</p>
									<input type="button" value="立即购买" style="float: left;margin-top: 5px;margin-left: 60px;"/>
								</div>
							</div>
							<div>
								<div style="width: 1000px;height: 160px;background: #D0E0E6;position: relative;left: 50%;margin-left: -500px;margin-right: 960px;margin-top: 50px;">
								<div style="float: left;position: absolute;left: 21%;top: -30px;">
									<img src="img/birthday1_6.jpg" style="width: 249px;height: 270px;"/>
									<p id="font2">恋恋情深</p>
									<p id="font3">¥218</p>
									<input type="button" value="立即购买" style="float: left;margin-top: 5px;margin-left: 60px;"/>
								</div>
								<div style="float: left;position: absolute;right: 25%;top: -30px; margin-left: 37px;">
									<img src="img/birthday1_7.jpg" width="249px" height="270px"/>
									<p id="font2">韩式系列/你笑起来真好看</p>
									<p id="font3">¥326</p>
									<input type="button" value="立即购买" style="float: left;margin-top: 5px;margin-left: 60px;"/>
								</div>
								</div>
							</div>
						</div>
						<div style="width: 620px;height: 840px;position: relative;float: left;">
							<div style="background: #CFD6E6;width: 580px;height: 595px;"></div>
							<div><img src="img/birthday1_8.jpg" style="width: 540px;height: 635px;position: absolute;top: 40px;left: 80px;"/></div>
							<div style="margin-top: 120px;margin-left: 77px;">
								<fieldset style="height: 100px;border-style: none;border-top: 5px solid #CFD6E5;">
									<legend style="font-size: 18px;font-weight: bold;">三生三世&nbsp;&nbsp;&nbsp;</legend>
									<p style="width: 400px; word-wrap: break-word;margin-top: 26px;font-size: 16px;float: left;">33朵红玫瑰是此生不渝的爱<br />执子之手，白头偕老</p>
									<div style="width: 135px; float: left;">
										<p style="font-size: 18px;margin-left: 95px;margin-top: 8px;">¥359</p>
										<input type="button" value="立即购买" style="margin-top: 8px;margin-left: 10px;"/>
									</div>
								</fieldset>
							</div>
						</div>
					</div>
				</div>
				
				<!--蛋糕 -->
				<div>
					<div style="height: 195px;"><img src="img/background10.png" id="img1"/></div>
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
								<div style="width: 298px;height: 285px;margin-left: 10px;background: url(img/download3.png); float: left;">
									<p style="text-align: center;margin-top: 75px; font-size: 18px;font-weight: bold;">榴芒双拼(约2磅)</p>
									<p style="text-align: center;margin-top: 15px; font-size: 16px;">双拼蛋糕</p>
									<p style="text-align: center;margin-top: 40px; font-size: 18px;">¥228</p>
									<input type="button" value="立即购买" style="margin-left: 85px;margin-top: 10px;"/>
								</div>
							</div>
							<div style="height: 340px;">
								<div style="width: 298px;height: 285px;background: url(img/download3.png) 0 0 no-repeat; transform: rotate(180deg); float: left;">
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
							<img src="img/birthday1_9.jpg" style="width: 285px;height: 285px;"/>
							<p style="font-size: 18px;font-weight: bold;">请叫我奔放的小野马！（3-5人食）</p>
							<p style="font-size: 18px;margin-top: 5px;">¥257</p>
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
						<div style="width: 600px;margin-top: 60px;float: left;"><img src="img/background3_2.png" style="position: relative;z-index: -1;right: 300px;"/></div>
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
					<div style="height: 195px;"><img src="img/background11.png" id="img1"/></div>
					<div style="height: 910px;">
						<div style="width: 579px;height: 840px;float: left;">
							<div style="height: 385px;margin-top: 40px;">
								<div style="float: left;">
									<img src="img/birthday1_10.jpg" width="249px" height="270px"/>
									<p id="font2">香槟金色铁艺永生花提篮</p>
									<p id="font3">¥199</p>
									<input type="button" value="立即购买" style="float: left;margin-top: 5px;margin-left: 60px;"/>
								</div>
								<div style="float: left;margin-left: 37px;">
									<img src="img/birthday17.jpg" style="width: 249px;height: 270px;"/>
									<p id="font2">一鹿(路)有你永生花小夜灯</p>
									<p id="font3">¥298</p>
									<input type="button" value="立即购买" style="float: left;margin-top: 5px;margin-left: 60px;"/>
								</div>
							</div>
							<div>
								<div style="width: 1000px;height: 160px;background: #D0E0E6;position: relative;left: 50%;margin-left: -500px;margin-right: 960px;margin-top: 50px;">
								<div style="float: left;position: absolute;left: 21%;top: -30px;">
									<img src="img/birthday1_11.jpg" width="249px" height="270px"/>
									<p id="font2">施华洛世奇项链+耳钉套装</p>
									<p id="font3">¥1190</p>
									<input type="button" value="立即购买" style="float: left;margin-top: 5px;margin-left: 60px;"/>
								</div>
								<div style="float: left;position: absolute;right: 25%;top: -30px; margin-left: 37px;">
									<img src="img/birthday19.jpg" style="width: 249px;height: 270px;"/>
									<p id="font2">磁悬浮永生花灯蓝牙款</p>
									<p id="font3">¥399</p>
									<input type="button" value="立即购买" style="float: left;margin-top: 5px;margin-left: 60px;"/>
								</div>
								</div>
							</div>
						</div>
						<div style="width: 620px;height: 840px;position: relative;float: left;">
							<div style="background: #CFD6E6;width: 580px;height: 595px;"></div>
							<div><img src="img/birthday1_12.jpg" style="width: 540px;height: 635px;position: absolute;top: 40px;left: 80px;"/></div>
							<div style="margin-top: 120px;margin-left: 77px;">
								<fieldset style="height: 100px;border-style: none;border-top: 5px solid #CFD6E5;">
									<legend style="font-size: 18px;font-weight: bold;">心形礼盒/迪奥口红520+999+花漾香水30ml&nbsp;&nbsp;&nbsp;</legend>
									<p style="width: 400px; word-wrap: break-word;margin-top: 26px;font-size: 16px;float: left;">礼盒寓意520999（我爱你久久久）<br />我如此爱你，想把所有都给你</p>
									<div style="width: 135px; float: left;">
										<p style="font-size: 18px;margin-left: 95px;margin-top: 8px;">¥1699</p>
										<input type="button" value="立即购买" style="margin-top: 8px;margin-left: 10px;"/>
									</div>
								</fieldset>
							</div>
						</div>
					</div>
					<div style="height: 750px;">
						<div style="width: 620px;height: 685px;position: relative;float: left;">
							<div style="background: #CFD6E6;width: 580px;height: 595px;"></div>
							<div><img src="img/birthday1_13.jpg" style="width: 540px;height: 635px;position: absolute;top: 40px;left: 80px;"/></div>
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
									<img src="img/birthday1_14.jpg" width="249px" height="270px"/>
									<p id="font2">一生一世</p>
									<p id="font3">¥198</p>
									<input type="button" value="立即购买" style="float: left;margin-top: 5px;margin-left: 60px;"/>
								</div>
							</div>
							<div style="height: 280px;position: relative;">
								<img src="img/background3_1.png" style="height: 280px;"/>
								<div style="position: absolute;top: 0%;left: 0%;">
									<p id="font4">花好月圆永生花台灯/红色</p>
									<p id="font5">心中有所期盼，梦中花好月圆！精选永生玫瑰4朵，花头饱满色泽亮丽 开灯之后更具观赏性，光影衬托奥斯汀玫瑰别样美丽</p>
									<p id="font6" style="float: left;">¥298</p>
									<input type="button" value="立即购买" style="float: left;margin-top: 20px;margin-left: 15px;"/>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<!--礼品-->
				<div>
					<div style="height: 195px;"><img src="img/background12.png" id="img1"/></div>
					<div style="height: 385px;">
						<div style="width: 285px;height: 385px;float: left;">
							<img src="img/birthday1_15.jpg" style="width: 285px;height: 285px;"/>
							<p style="font-size: 18px;font-weight: bold;">星期耳钉礼盒</p>
							<p style="font-size: 18px;margin-top: 5px;">¥259</p>
							<input type="button" value="立即购买"/>
						</div>
						<div style="width: 285px;height: 385px;margin-left:20px;float: left;">
							<img src="img/birthday1_16.jpg" style="width: 285px;height: 285px;"/>
							<p style="font-size: 18px;font-weight: bold;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;">迪奥小姐花漾淡香水50ml+花秘瑰萃尊享套装礼盒A款</p>
							<p style="font-size: 18px;margin-top: 5px;">¥1699</p>
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
						<div style="width: 600px;margin-top: 60px;float: left;"><img src="img/background3_1.png" style="position: relative;z-index: -1;right: 300px;"/></div>
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
								<img src="img/birthday1_17.jpg" style="width: 285px;height: 285px;"/>
								<div style="width: 155px; float: left;">
									<p style="font-size: 18px;font-weight: bold;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;">黛风挂脖风扇/冰川白</p>
									<p style="font-size: 18px;margin-top: 5px;">¥158</p>
								</div>
								<input type="button" value="立即购买" style="margin-top: 15px;float: left;"/>
							</div>
						</div>
					</div>
					<div style="height: 660px;">
						<div style="width: 590px;height: 660px;float: left;">
							<img src="img/birthday1_18.jpg" style="width: 590px;height: 590px;"/>
							<div style="width: 460px;margin-top: 10px; float: left;">
								<p style="font-size: 18px;font-weight: bold;">十八音水晶钢琴</p>
								<p style="font-size: 18px;margin-top: 5px;">¥239</p>
							</div>
							<input type="button" value="立即购买" style="margin-top: 20px; float: left;"/>
						</div>
						<div style="width: 595px;height: 660px;float: left;margin-left: 15px;">
							<div style="height: 340px;">
								<div style="float: left;">
									<img src="img/birthday1_19.jpg" style="width: 285px;height: 285px;"/>
								</div>
								<div style="width: 298px;height: 285px;margin-left: 10px;background: url(img/download3.png); float: left;">
									<p style="text-align: center;margin-top: 65px; font-size: 18px;font-weight: bold;">巧克巧蔻定制9粒装手工<br />夹心巧克力</p>
									<p style="text-align: center;margin-top: 10px; font-size: 16px;">手工夹心巧克力</p>
									<p style="text-align: center;margin-top: 40px; font-size: 18px;">¥162</p>
									<input type="button" value="立即购买" style="margin-left: 85px;margin-top: 10px;"/>
								</div>
							</div>
							<div style="height: 340px;">
								<div style="width: 298px;height: 285px;background: url(img/download3.png) 0 0 no-repeat; transform: rotate(180deg); float: left;">
									<div style="transform: rotate(180deg);">
										<p style="text-align: center;margin-top: 35px; font-size: 18px;font-weight: bold;">德国进口LAUENSTEIN巧克力<br />手工松露酒味夹心金装礼盒</p>
										<p style="text-align: center;margin-top: 10px; font-size: 16px;">德国进口酒心黑巧克力20粒</p>
										<p style="text-align: center;margin-top: 40px; font-size: 18px;">¥318</p>
										<input type="button" value="立即购买" style="margin-left: 85px;margin-top: 10px;"/>
									</div>
								</div>
								<div style="float: left;">
									<img src="img/birthday1_20.jpg" style="width: 285px;height: 285px;margin-left: 10px;"/>
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
