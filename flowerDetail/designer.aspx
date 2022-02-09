<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="designer.aspx.cs" Inherits="designer.designer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
	<link href="img/icon.ico" rel="icon" />
	<script src="js/dianjidonghua.js"></script>
    <style>
        *{margin: 0;padding: 0;}
        .web{width: 1200px;height: 8410px;margin: 0 auto;}
        .header{width: 1200px;height: 100px;border: 0px solid;}

        .high_end1{width: 1200px;height: 520px;position: relative;}
        #img1{width: 1100px;height: 500px;margin-left: 50px;}
        #font1{font-size: 12px;color: white;margin-left: 10px;margin-top: 13px;}
        #font2{font-size: 16px;color: white;margin-left: 10px;margin-top:8px ;}
        #font3{font-size: 14px;color: white;margin-top: 10px;}
        .rmb{width: 50px;text-align: center;padding: 2px;margin-top: 13px;margin-left: 30px; float: left;background-color: #000000;}
        .high_end2{width: 1200px;height: 1800px;}
        #font4{font-size: 12px;margin-left: 10px;margin-top: 13px;}
        #font5{font-size: 16px;margin-left: 10px;margin-top:8px ;}
        #font6{font-size: 13px;margin-top: 10px;}

        .CB{color: orange;font-size: 16px;margin-left: 103px;}
        .CC{float: left;width: 290px;height: 150px;margin-top: 20px;text-align: left;margin-left: 20px;}
        .CD{float: left;width: 290px;height: 150px;margin-top: 20px;}
        .CE{color: orange;font-size: 13px;float: left;margin-left: 75px;}
        .CF{font-size: 12px;float: left;}
        .CG{font-size: 13PX;margin-left: 115px;}
        .CH{font-size: 13PX;margin-left: 140PX;float: left;}
        .CI{font-size: 13PX;margin-left: 30PX;float: left;}
        .CJ{color: orange;font-size: 16px;margin-left: 175px;}
        .CK{color: orange;font-size: 13px;float: left;margin-left: 143px;}
        .CL{color: orange;font-size: 13px;float: left;margin-left: 133px;}

        #y{width: 1200px;height: 60px;}
        #y p{text-align: center;font-size: 13px;}
        #z{width: 1200px;height: 45px;text-align: center;}
        #z p{margin-top: 5px;}

		.nav div{width: 180px;height: 60px;float: left;line-height: 60px;border: 1px solid;text-align: center;color:black;}

        ul{margin: 2px;padding: 2px;position:relative;left:50px}
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

    	img, div {border-radius:5px;}

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
								<a href="xianflower.aspx"><li style="z-index:9999;border:0px solid">鲜花&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li></a>
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
			<div style="height: 450px;border-radius:0px;"><img src="img/design.png" height="450px" width="100%" style="border-radius:1px;"/></div>
			<div class="main" style="width: 1200px;height: 7550px;">
				<div style="width: 1200px;height: 2430px;background-color: #737373;border-radius:1px;">
					<h2 style="height: 70px;text-align: center;line-height: 70px;color: coral; font-family: "新宋体";">高端花盒系列</h2>
					<div class="high_end1">
						<div><img src="img/designer1.jpg" id="img1"/></div>
						<div style="width: 500px;height: 200px;position: absolute;top: 42%;right: 8%;background-color: darkgrey;">
							<div style="width: 400px;height: 160px;margin-left: 50px;margin-top: 30px;">
								<div style="width: 400px;height: 70px;border-left: 5px solid coral;">
									<div style="width: 300px;float: left;">
										<p id="font1">迷情尼斯</p>
										<p id="font2">糖果玫瑰&nbsp;&nbsp;76cm长礼盒</p>
									</div>
									<div class="rmb"><p style="font-size: 10px;color: white;">RMB</p><p style="font-size: 14px;color: white;">659</p></div>
								</div>
								<p id="font3">花材上选用的是稀有玫瑰品种A级玫瑰，每一朵的花型都要求完美，糖果玫瑰如其名，有着甜美的色彩和香味。为玫瑰定制了专属的礼盒，完美的细节彰显品质。</p>
							</div>
						</div>
					</div>
					<div class="high_end2">
						<div style="width: 523px;height: 880px;margin-left: 50px;margin-top: 20px;position: relative; float: left;">
							<div><img src="img/designer2.jpg" width="523px" height="700px"/></div>
							<div style="width: 460px;height: 200px;position: absolute;top: 76.5%;left: 30px;background-color: darkgrey;">
								<div style="width: 360px;height: 160px;margin-left: 50px;margin-top: 30px;">
									<div style="width: 360px;height: 70px;border-left: 5px solid coral;">
										<div style="width: 260px;float: left;">
											<p id="font1">赤道花园</p>
											<p id="font2">红拂玫瑰&nbsp;&nbsp;76cm长礼盒</p>
										</div>
										<div class="rmb"><p style="font-size: 10px;color: white;">RMB</p><p style="font-size: 14px;color: white;">659</p></div>
									</div>
									<p id="font3">采撷最娇艳的玫瑰，经设计师妙手点拨，将芬芳馥郁的气息融入，轻轻打开，芬芳扑面袭来，玫瑰肆意绽放，为高端鲜花爱好者们营造出了一个静谧与舒适的氛围！</p>
								</div>
							</div>
						</div>
						<div style="width: 523px;height: 880px;margin-left: 50px;margin-top: 20px;position: relative; float: left;">
							<div><img src="img/designer3.jpg" width="523px" height="700px"/></div>
							<div style="width: 460px;height: 180px;position: absolute;top: 76.5%;left: 30px;background-color: darkgrey;">
								<div style="width: 360px;height: 160px;margin-left: 50px;margin-top: 30px;">
									<div style="width: 360px;height: 70px;border-left: 5px solid coral;">
										<div style="width: 260px;float: left;">
											<p id="font1">天使之吻</p>
											<p id="font2">红袖玫瑰&nbsp;&nbsp;76cm长礼盒</p>
										</div>
										<div class="rmb"><p style="font-size: 10px;color: white;">RMB</p><p style="font-size: 14px;color: white;">659</p></div>
									</div>
									<p id="font3">红袖玫瑰有着罕见的双层色彩，渐变的颜色让人迷恋。为玫瑰定制了专属的礼盒，完美的细节彰显品质。</p>
								</div>
							</div>
						</div>
						<div style="width: 523px;height: 880px;margin-left: 50px;margin-top: 20px;position: relative; float: left;">
							<div><img src="img/designer4.jpg" width="523px" height="700px"/></div>
							<div style="width: 460px;height: 180px;position: absolute;top: 76.5%;left: 30px;background-color: darkgrey;">
								<div style="width: 360px;height: 160px;margin-left: 50px;margin-top: 30px;">
									<div style="width: 360px;height: 70px;border-left: 5px solid coral;">
										<div style="width: 260px;float: left;">
											<p id="font1">瓦尔登湖畔</p>
											<p id="font2">小白兔玫瑰&nbsp;&nbsp;76cm长礼盒</p>
										</div>
										<div class="rmb"><p style="font-size: 10px;color: white;">RMB</p><p style="font-size: 14px;color: white;">659</p></div>
									</div>
									<p id="font3">小白兔玫瑰如它的名字一般，透着可爱的气质。为玫瑰定制了专属的礼盒，完美的细节彰显品质。</p>
								</div>
							</div>
						</div>
						<div style="width: 523px;height: 880px;margin-left: 50px;margin-top: 20px;position: relative; float: left;">
							<div><img src="img/designer5.jpg" width="523px" height="700px"/></div>
							<div style="width: 460px;height: 200px;position: absolute;top: 76.5%;left: 30px;background-color: darkgrey;">
								<div style="width: 360px;height: 160px;margin-left: 50px;margin-top: 30px;">
									<div style="width: 360px;height: 70px;border-left: 5px solid coral;">
										<div style="width: 260px;float: left;">
											<p id="font1">邂逅西雅图</p>
											<p id="font2">新娘玫瑰&nbsp;&nbsp;76cm长礼盒</p>
										</div>
										<div class="rmb"><p style="font-size: 10px;color: white;">RMB</p><p style="font-size: 14px;color: white;">659</p></div>
									</div>
									<p id="font3">新娘玫瑰有着偏成熟韵味的色彩，有着厚实的花瓣、笔直的枝条，毫不逊色于其他赤道玫瑰。为玫瑰定制了专属的礼盒，完美的细节彰显品质。</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div>
					<h2 style="height: 70px;text-align: center;line-height: 70px;color:coral;">主题花束系列</h2>
					<div class="high_end1">
						<div><img src="img/designer6.jpg" id="img2"/></div>
						<div style="width: 500px;height: 212px;position: absolute;top: 42%;right: 8%;background-color: #fff;">
							<div style="width: 400px;height: 160px;margin-left: 50px;margin-top: 30px;">
								<div style="width: 400px;height: 70px;border-left: 5px solid coral;">
									<div style="width: 300px;float: left;">
										<p id="font4">火热的爱</p>
										<p id="font5">爱情系列之热情奔放</p>
									</div>
									<div class="rmb"><p style="font-size: 10px;color: white;">RMB</p><p style="font-size: 14px;color: white;">549</p></div>
								</div>
								<p id="font6">饱满圆润的花头，紧促的拥抱在一起，红玫瑰与多头红玫瑰的组合，大大小小的花苞们，像极了轻盈的泡泡，花瓣就像裙裾一样层层叠叠，正是我向往中的那片花海，红玫表达的爱简单直接而炙热，除了爱你还是爱你。此花束适合送给热恋中人。</p>
							</div>
						</div>
					</div>
					<div class="high_end2">
						<div style="width: 523px;height: 880px;margin-left: 50px;margin-top: 20px;position: relative; float: left;">
							<div><img src="img/designer7.jpg" width="523px" height="700px"/></div>
							<div style="width: 460px;height: 200px;position: absolute;top: 76.5%;left: 30px;background-color: whitesmoke;">
								<div style="width: 360px;height: 160px;margin-left: 50px;margin-top: 30px;">
									<div style="width: 360px;height: 70px;border-left: 5px solid coral;">
										<div style="width: 260px;float: left;">
											<p id="font4">Sunflower</p>
											<p id="font5">青春系列之阳光活力</p>
										</div>
										<div class="rmb"><p style="font-size: 10px;color: white;">RMB</p><p style="font-size: 14px;color: white;">549</p></div>
									</div>
									<p id="font6">黄色，是三原色之一，属于暖色系，是所有颜色中最明亮的颜色。给人轻快、辉煌、透明、醒目，充满希望和活力的色彩印象。</p>
								</div>
							</div>
						</div>
						<div style="width: 523px;height: 880px;margin-left: 50px;margin-top: 20px;position: relative; float: left;">
							<div><img src="img/designer8.jpg" width="523px" height="700px"/></div>
							<div style="width: 460px;height: 205px;position: absolute;top: 76.5%;left: 30px;background-color: whitesmoke;">
								<div style="width: 360px;height: 160px;margin-left: 50px;margin-top: 30px;">
									<div style="width: 360px;height: 70px;border-left: 5px solid coral;">
										<div style="width: 260px;float: left;">
											<p id="font4">爱的陪伴</p>
											<p id="font5">母爱系列之梦幻呵护</p>
										</div>
										<div class="rmb"><p style="font-size: 10px;color: white;">RMB</p><p style="font-size: 14px;color: white;">626</p></div>
									</div>
									<p id="font6">幽然的紫色，搭配着深深浅浅的粉，一股恬淡清幽的气息扑面而来。绣球花花瓣紧密，花型大而饱满，姹紫嫣红，宛如一个浪花，当它怒放的时候，一簇簇花开，一片片铺展，为你编织了一个浪漫梦幻的仲夏夜之梦</p>
								</div>
							</div>
						</div>
						<div style="width: 523px;height: 880px;margin-left: 50px;margin-top: 20px;position: relative; float: left;">
							<div><img src="img/designer9.jpg" width="523px" height="700px"/></div>
							<div style="width: 460px;height: 200px;position: absolute;top: 76.5%;left: 30px;background-color: whitesmoke;">
								<div style="width: 360px;height: 160px;margin-left: 50px;margin-top: 30px;">
									<div style="width: 360px;height: 70px;border-left: 5px solid coral;">
										<div style="width: 260px;float: left;">
											<p id="font4">繁星</p>
											<p id="font5">母爱系列之温柔优雅</p>
										</div>
										<div class="rmb"><p style="font-size: 10px;color: white;">RMB</p><p style="font-size: 14px;color: white;">549</p></div>
									</div>
									<p id="font6">蓝色的小飞燕翩翩飞舞，轻盈美好。花语是：清静、轻盈、正义、自由。蓝色小飞燕的点缀，让整个作品的色彩层次一下子丰富起来了，也是整个作品的点睛之笔，如繁星点点。</p>
								</div>
							</div>
						</div>
						<div style="width: 523px;height: 880px;margin-left: 50px;margin-top: 20px;position: relative; float: left;">
							<div><img src="img/designer10.jpg" width="523px" height="700px"/></div>
							<div style="width: 460px;height: 205px;position: absolute;top: 76.5%;left: 30px;background-color: whitesmoke;">
								<div style="width: 360px;height: 160px;margin-left: 50px;margin-top: 30px;">
									<div style="width: 360px;height: 70px;border-left: 5px solid coral;">
										<div style="width: 260px;float: left;">
											<p id="font4">清风徐来</p>
											<p id="font5">品味系列之儒雅精英</p>
										</div>
										<div class="rmb"><p style="font-size: 10px;color: white;">RMB</p><p style="font-size: 14px;color: white;">626</p></div>
									</div>
									<p id="font6">马蹄莲最美的部位是其长长的枝干部分，如芭蕾舞者脖颈的线条一般，娇嫩的花瓣向内弯曲，纯色线条勾勒出极致的空间几何美感，跳舞兰活泼玲珑又充满喜气的形态扑面而来，怎能不让人满心欢喜。</p>
								</div>
							</div>
						</div>
						<div style="width: 523px;height: 880px;margin-left: 50px;margin-top: 20px;position: relative; float: left;">
							<div><img src="img/designer11.jpg" width="523px" height="700px"/></div>
							<div style="width: 460px;height: 200px;position: absolute;top: 76.5%;left: 30px;background-color: whitesmoke;">
								<div style="width: 360px;height: 160px;margin-left: 50px;margin-top: 30px;">
									<div style="width: 360px;height: 70px;border-left: 5px solid coral;">
										<div style="width: 272px;float: left;">
											<p id="font4">Flora Love</p>
											<p id="font5">优雅知性女神范</p>
										</div>
										<div class="rmb"><p style="font-size: 10px;color: white;">RMB</p><p style="font-size: 14px;color: white;">659</p></div>
									</div>
									<p id="font6">马鸢尾叶有着非常美的线条感，搭配白色郁金香与紫罗兰，充满优雅浪漫味道。除此之外荔枝玫瑰的独特花型及香甜的气味也让人着迷。</p>
								</div>
							</div>
						</div>
						<div style="width: 523px;height: 880px;margin-left: 50px;margin-top: 20px;position: relative; float: left;">
							<div><img src="img/designer13.jpg" width="523px" height="700px"/></div>
							<div style="width: 460px;height: 200px;position: absolute;top: 76.5%;left: 30px;background-color: whitesmoke;">
								<div style="width: 360px;height: 160px;margin-left: 50px;margin-top: 30px;">
									<div style="width: 360px;height: 70px;border-left: 5px solid coral;">
										<div style="width: 260px;float: left;">
											<p id="font4">From The Heart</p>
											<p id="font5">甜美可爱少女范</p>
										</div>
										<div class="rmb"><p style="font-size: 10px;color: white;">RMB</p><p style="font-size: 14px;color: white;">769</p></div>
									</div>
									<p id="font6">荔枝玫瑰不仅有着独特的旋涡状花型，还拥有着特别香甜的气味。搭配自由苏展的雪柳和橙色多头玫瑰显得郁郁葱葱充满生命力。</p>
								</div>
							</div>
						</div>
						<div style="width: 523px;height: 880px;margin-left: 50px;margin-top: 20px;position: relative; float: left;">
							<div><img src="img/designer14.jpg" width="523px" height="700px"/></div>
							<div style="width: 460px;height: 200px;position: absolute;top: 76.5%;left: 30px;background-color: whitesmoke;">
								<div style="width: 360px;height: 160px;margin-left: 50px;margin-top: 30px;">
									<div style="width: 360px;height: 70px;border-left: 5px solid coral;">
										<div style="width: 260px;float: left;">
											<p id="font4">魔法潘多拉</p>
											<p id="font5">温婉端庄淑女范</p>
										</div>
										<div class="rmb"><p style="font-size: 10px;color: white;">RMB</p><p style="font-size: 14px;color: white;">659</p></div>
									</div>
									<p id="font6">浅蓝色是一个跟天空海洋相联系的自然色，给人安静平和感觉，市场少见的紫掌增添了尊贵感，白色的纸上印着常春藤的花纹，花束整体形态端庄优雅。</p>
								</div>
							</div>
						</div>
						<div style="width: 523px;height: 880px;margin-left: 50px;margin-top: 20px;position: relative; float: left;">
							<div><img src="img/designer15.jpg" width="523px" height="700px"/></div>
							<div style="width: 460px;height: 200px;position: absolute;top: 76.5%;left: 30px;background-color: whitesmoke;">
								<div style="width: 360px;height: 160px;margin-left: 50px;margin-top: 30px;">
									<div style="width: 360px;height: 70px;border-left: 5px solid coral;">
										<div style="width: 260px;float: left;">
											<p id="font4">枫丹白露</p>
											<p id="font5">恬淡清新文艺范</p>
										</div>
										<div class="rmb"><p style="font-size: 10px;color: white;">RMB</p><p style="font-size: 14px;color: white;">659</p></div>
									</div>
									<p id="font6">马蹄莲最美的部位是其长长的枝干部分，如芭蕾舞者脖颈的线条一般，雪柳是冬季独有的花材，星星点点的小白花如飘落的雪花。</p>
								</div>
							</div>
						</div>
						<div style="width: 523px;height: 880px;margin-left: 50px;margin-top: 20px;position: relative; float: left;">
							<div><img src="img/designer16.jpg" width="523px" height="700px"/></div>
							<div style="width: 460px;height: 200px;position: absolute;top: 76.5%;left: 30px;background-color: whitesmoke;">
								<div style="width: 360px;height: 160px;margin-left: 50px;margin-top: 30px;">
									<div style="width: 360px;height: 70px;border-left: 5px solid coral;">
										<div style="width: 260px;float: left;">
											<p id="font4">如初之光</p>
											<p id="font5">果断霸气御姐范</p>
										</div>
										<div class="rmb"><p style="font-size: 10px;color: white;">RMB</p><p style="font-size: 14px;color: white;">879</p></div>
									</div>
									<p id="font6">花材我选择了极具张力的灯台、现代感十足的红掌、冬季独有的蕙兰、黑马蹄、洋牡丹，不同质感的红色邻近色系花材搭配黑金色的包装，透露着特立独行的个性。</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div style="width: 1200px;height: 170px;">
            	<div style="float: left;width: 290px;height: 150px;margin-top: 20px;text-align: left;margin-left: 20px;">
            		<p style="color: orange;font-size: 16px;">为什么选择星花网</p>
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
            		<p style="color: orange;font-size: 16px;margin-left: 138px;">关于我们</p>
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
            	<p style="color: orange;font-size: 16PX;"><strong>ASP.NET设计——The galaxy小组</strong></p><p><strong>成员:邓滨斌&nbsp;高圣&nbsp;胡威&nbsp;雷鑫&nbsp;杨泽桓&nbsp;谢蓝宇</strong></p>
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
