<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main2.aspx.cs" Inherits="The_galaxy.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>星花网</title>
		<link rel="stylesheet" href="css/new_file.css" type="text/css"/>
		<script src="js/JavaScript.js"></script>
		<style>
			*{margin: 0;padding: 0;}
			.web{width: 1200px;height: 4230px;margin: 0 auto;font-family:"微软雅黑";}
			.header{width: 1200px;height: 570px;}
			.logo{background: url(../img/logo1.png);background-size: 180px 60px;border-radius:5px;}
			.home{background-image:linear-gradient(to bottom right,orange,red);color: #FFFFFF;border-radius:5px;}

			.nav div{width: 180px;height: 60px;float: left;line-height: 60px;border: 1px solid;text-align: center;border-radius:5px;}
			ul{margin: 2px;padding: 2px;}
			ul li{list-style-type: none;height: 25px;text-align: center;border: 1px solid #CCC;line-height:24px;background: #eee;}
			
			ul li a{color: black;text-decoration: none;color:#333;}
			ul li a:hover{ color:#f00;}

			a {color: black;text-decoration: none;}

			#lunbo_picture{position: relative;width: 1200px;height: 500px;}
			#lunbo_picture img{}
			.search{color:white;position: absolute;top: 400px;margin-left: 400px;border:0 solid;width: 450px;height: 80px;opacity: 0.8;background-color: black;border-radius: 10px;z-index:5}
			.search_radio input{width: 20px;height: 15px;color: white;margin-top: 8px;}
			.search_text{position: absolute;width: 350px;height: 33px;margin-top: 5px;margin-left: 20px;border-radius: 5px;}
			.search_button{width: 50px;height: 39px;margin-left: 380px;border-radius: 5px;background-image: url(../img/111.png);background-repeat: no-repeat;padding: 15px;background-size: 47px 35px;margin-top: 5px;}

			.middle{width: 1200px;height: 50px; background-color: rgb(245,245,247);border-radius:5px; }
			.middle div{float: left;width: 230px;margin-left: 5px;}
			.middle label{font-size: 20px;line-height: 50px;}
			.middle label:hover{color: coral;}

			.btn{width: 1200px;height: 395px;margin-top: 30px;}
			.bnt1{float: left;margin-left: 8px;width: 290px;height: 350px;}
			.btn input{border-radius: 10px;} 
			#tp1{width: 290px;height: 340px;background-image: url(../img/tp1.jpg);}
			#tp2{width: 290px;height: 168px;background-image: url(../img/tp2.jpg);border-radius: 10px;}
			#tp3{width: 290px;height: 168px;background-image: url(../img/tp3.jpg);border-radius: 10px;}
			#tp4{width: 290px;height: 340px;background-image: url(../img/tp4.jpg);}
			.designer1{width: 290px;height: 167px;border-radius: 10px;}
			#tp5{width: 141px;height: 167px;float: left;background-image: url(../img/tp5.jpg);border-radius: 10px;}
			#tp6{width: 141px;height: 167px;float: left;margin-left: 5px; background-image: url(../img/tp7.png);border-radius: 10px;}
			#tp7{width: 290px;height: 167px;margin-top: 5px;background-image: url(../img/tp7.jpg);border-radius: 10px;}

			#font1{font-family: "新宋体";font-size: 22px;color: coral;margin-left: 15px;line-height: 33px;float: left;margin-top: 30px;}
			#font2{font-family: "新宋体";font-size: 16px;line-height: 33px;float: left;margin-top: 30px;}
			#font3{font-family: "新宋体";font-size: 12px;margin-left: 815px;line-height: 33px;float: left;margin-top: 30px;}
			.love_big{width: 260px;height: 600px;background:url(../img/love_big.png);background-size: 260px 600px;margin-left: 15px;float: left;}
			.love_big input{width: 220px;height: 50px;border: 2px dashed coral;color: coral;font-size: 21px;font-family:"黑体";text-align:center;background-color:transparent;margin-top: 500px;margin-left: 20px;}
			.love_detail{width: 920px;height: 600px;float: left;}
			#love_div1{float: left;width: 930px;height: 300px;}
			#love_div1 div{width: 205px;height: 295px;margin-left: 22.5px;background-color:white;float: left;}
			#love_div1 div:hover{color: coral;}
			#love_div2{float: left;width: 930px;height: 300px;}
			#love_div2 div{width: 205px;height: 295px;margin-left: 22.5px;margin-top:3px;background-color:white;float: left;}
			#love_div2 div:hover{color: coral;}

			#font4{font-family: "新宋体";font-size: 12px;margin-left: 794px;line-height: 33px;float: left;margin-top: 30px;}
			.parent_big{width: 260px;height: 600px;background:url(../img/parent_big.png);background-size: 260px 600px;margin-left: 15px;float: left;}
			.parent_big input{width: 220px;height: 50px;border: 2px dashed coral;color: coral;font-size: 21px;font-family:"黑体";text-align:center;background-color:transparent;margin-top: 500px;margin-left: 20px;}

			#font5{font-family: "新宋体";font-size: 12px;margin-left: 896px;line-height: 33px;float: left;margin-top: 30px;}
			.forever_big{width: 260px;height: 600px;background:url(../img/forever_big.jpg);background-size: 260px 600px;margin-left: 15px;float: left;}
			.forever_big input{width: 220px;height: 50px;border: 2px dashed coral;color: coral;font-size: 21px;font-family:"黑体";text-align:center;background-color:transparent;margin-top: 500px;margin-left: 20px;}

			#font6{font-family: "新宋体";font-size: 12px;margin-left: 300px;line-height: 33px;float: left;margin-top: 30px;}
			.cake{width: 585px;height: 662px;float: left;}
			.cake_brand{width: 575px;height: 260px;background-color: white;margin-top: 33px;margin-left: 9px;}
			.cake_brand div{width: 130px;height: 120px;margin-left: 9.5px;margin-top: 5px; float: left;}
			.cake_brand div:hover{color: coral;}
			.cake_brand div img{width: 130px;height: 85px;}
			.cake_brand div p{font-family: "新宋体";font-size: 15px;text-align: center;line-height: 35px;}
			.cake_detail div:hover{color: coral;}
			.cake_detail{width: 585px;height: 320px;margin-top: 15px;}
			#cake1{width: 275px;height: 320px;background-color: white;margin-left: 9.5px;border-radius: 7px;float: left;}
			#cake1 img{width: 240px;height: 230px;margin-left: 17.5px;margin-top: 15px;border-radius: 7px;}
			#cake2{width: 275px;height: 320px;background-color: white;margin-left: 22px;border-radius: 7px;float: left;}
			#cake2 img{width: 240px;height: 230px;margin-left: 17.5px;margin-top: 15px;border-radius: 7px;}
			.gift{width: 585px;height: 662px;float: left;margin-left: 20px;}
			.gift_brand{width: 575px;height: 260px;background-color: white;margin-top: 33px;margin-left: 9px;}
			.gift_brand ol{margin-left: 30px;}
			.gift_brand ol li{margin-top: 7px;list-style-type: disc;color: coral;}
			.gift_brand ol li a:hover{color: coral;}
			.gift_brand a{ font-family: "新宋体";font-size: 16px;}
			#gift1{width: 337px;height: 260px;margin-left: 7px;float: left;}
			#gift1 div{width: 112px;height: 120px;margin-top: 5px;float: left;}
			#gift1 div:hover{color: coral;}
			#gift1 div img{width: 112px;height: 85px;}
			#gift1 div p{font-family: "新宋体";font-size: 15px;text-align: center;line-height: 35px;}

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

			#y{width: 1200px;height: 60px;}
			#y p{text-align: center;font-size: 13px;}
			#z{width: 1200px;height: 45px;text-align: center;}
			#z p{margin-top: 5px;}

			#kuang{
				position: relative;
				top:30px;
				border-radius:12px;
			}
			
			#tu{
				z-index: 1;
				position: absolute;
				width: 6000px;
				border-radius:10px;
			}
				
			
			#tu .T{
				float: left;
				width: 1200px;
				height: 630px;
				border-radius:10px;
			}

			

		    .hoverP:hover {
				cursor:pointer;
				animation-name: xs;
				animation-duration: 0.5s;
				animation-fill-mode: forwards;

			}

			@keyframes xs {
            100% {
                transform: matrix(1.1,0,0,1.1,0,0);
				}
			}

			@keyframes xx {
            100% {
                transform:	matrix(1,0,0,1,0,-10);
				}
			}

		    div {
				border:0px solid;
			}

		    [type='button'] {
				cursor:pointer;
			}


		        [type='button']:hover {
					animation-name:xx;
					animation-duration:0.5s;
					animation-fill-mode:forwards;
				}

				#tp7:hover {
					cursor:pointer;
					animation-name:xx;
					animation-duration:0.5s;
					animation-fill-mode:forwards;
				}

		    .auto-style1 {
                width: 289px;
                height: 168px;
            }

			ul li {
				z-index:9999;
			}
			ul li:hover {
				z-index:9999;
			}
			.T {
				z-index:-1;
			}

			#xia_ul {
				z-index: 88888;
				border-top: none;
				background: #fff;
				overflow: auto;
				background-color: rgb(247,247,247);
				opacity:0.88;
			}
			#xia_ul li {
				margin: 0 20px;
				list-style: none;
				height: 45px;
				line-height: 45px;
				cursor: pointer;
				background: #fff;
				background-color: rgb(247,247,247);
				opacity:0.88;
				border-bottom: 1px solid #b3b3b3;
			}
			#xia_ul li.focus {
				margin: 0;
				padding: 0 20px;
				cursor: pointer;
				background: #3399FF;
				color: #fff;
				opacity: 0.85;
				opacity:0.88;
			}




			.home:hover, .shopdetail ul li:hover,.shopdetail summary:hover, .shopcar:hover, .relate:hover,.dr_zc a:hover  {
				border-radius:1px;
				color:sandybrown;
				opacity: 0.85;
				border-radius:5px;
			
			}

			#top_mi_img img {
				border-radius:4px;
			}
			

		</style>
    <script src="js/dianjidonghua.js"></script>
		<script>
            var imgnum = 1;
            function A(num) { document.getElementById('img1').src = "img/lunbo" + num + ".jpg"; }
            function B(t) {
                if (t == 'l') {
                    if (imgnum == 1) { imgnum = 5; }
                    imgnum--;
                }
                else {
                    if (imgnum == 4) { imgnum = 0; }
                    imgnum++;
                }
                A(imgnum);
            }
			window.onload = function () { setInterval("B('r')", 3000); }

			function toFlowerSay() {
                window.open("flowersays.aspx");
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
		<!--置顶按钮-->
		<div class="web">
			<div class="header">
				<div class="nav"  style="position:relative;z-index:9999;">
					<div class="logo" style="border:0px;cursor:pointer" onclick="toFlowerSay()"></div>
					<div class="home" style="border:0px;margin-left:50px">首页</div>
					<div class="shopdetail" style="cursor:pointer;border:0px" >
						<details style="z-index:9999;">
							<summary>商品分类</summary>
							<ul id="xia_ul" style="z-index:100;">
								<a href="xianflower.aspx"><li style="z-index:9999;border:0px solid">鲜花&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li></a>
								<a href="yongshenghua.aspx"><li style="z-index:9999;border:0px solid">永生花&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li></a>
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
                    <div class="dr_zc" style="cursor:pointer;border:0px">
						<a href="login.aspx">登录</a>|
						<a href="login.aspx">注册</a>
						<div id="YHnameK" style="background-color:white;position:relative;top:-60px;display:none" runat="server">
							<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"></asp:LinkButton>
						</div>
                    </div>
					
				</div>
				<div id="kuang" style="width: 1200px;height: 420px;box-shadow: 5px 5px 32px 4px black;margin:0 auto;overflow: hidden;z-index:4">
			        <div id="tu" style="left: -2400px;z-index:0">
				        <img src="img/lunbo3.jpg" class="T" style="z-index:1" />
				        <img src="img/lunbo1.jpg" class="T" style="z-index:1"/>
				        <img src="img/lunbo2.jpg" class="T" style="z-index:1"/>
				        <img src="img/lunbo3.jpg" class="T" style="z-index:1"/>
				        <img src="img/lunbo1.jpg" class="T" style="z-index:1"/>
			        </div>
			        <div id="left" onclick="left()" style="opacity: 0.75;height: 128px;width: 80px;position: absolute;left: 10px;top: 142px;z-index: 2;cursor: pointer;border-radius:20px;background-image:url(img/right.png);background-position-x:-25px;background-repeat:no-repeat"></div>
			        <div id="right" onclick="right()" style="opacity: 0.75;height: 128px;width: 80px;position: absolute;right: 10px;top: 142px;z-index: 2;cursor: pointer;border-radius:20px;background-image:url(img/left.png);background-position-x:-25px;background-repeat:no-repeat"></div>
                   <div id="oneBT" onclick="oneCL(1)" style="width:20px;height:15px;position:absolute;bottom:10px;right:300px;background-color:gray;opacity:0.8;z-index:2;cursor:pointer;border-radius:20px"></div>
                   <div id="twoBT" onclick="twoCL(1)" style="width:40px;height:15px;position:absolute;bottom:10px;right:250px;background-color:gray;opacity:0.8;z-index:2;cursor:pointer;border-radius:20px"></div>
                   <div id="threeBT" onclick="threeCL(1)" style="width:20px;height:15px;position:absolute;bottom:10px;right:200px;background-color:gray;opacity:0.8;z-index:2;cursor:pointer;border-radius:20px"></div>
	            </div>
				<div class="search">
					<div class="search_radio">
						&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="1" value="" />全部
						<input type="radio" name="1" value="" />#
						<input type="radio" name="1" value="" />#
						<input type="radio" name="1" value="" />#
						<input type="radio" name="1" value="" />#
					</div>
					<div>
						<input type="text" value="" class="search_text" placeholder="请输入你要搜索的内容"/>
						<input type="button" value="" class="search_button"/>
					</div>
				</div>
			</div>
			
			
			
			
			
			
			
			<div class="middle">
				<div id="top_mi_img">
					<img src="img/icon1.png" width="40px" height="40px"/>
					<label>鲜花电商认证龙头</label>
				</div>
				<div>
					<img src="img/icon4.png" width="40px" height="40px"/>
					<label>三小时全国送花</label>
				</div>
				<div>
					<img src="img/icon2.png" width="40px" height="40px"/>
					<label>200%退赔承诺</label>
				</div>
				<div>
					<img src="img/icon3.png" width="40px" height="40px"/>
					<label>最近1000000条评价</label>
				</div>
				<div>
					<img src="img/112.png" width="230px" height="50px"/>
				</div>
			</div>
			<div class="btn">
				<div class="bnt1">
					<input type="button" id="tp1" style="border: none;"/>
				</div>
				<div class="bnt1">
					<div>
						<input type="button" id="tp2" style="border: none;"/>
					</div>
					<div>
						<input type="button" id="tp3" style="border: none;"/>
					</div>
				</div>
				<div class="bnt1">
					<a href="birthday1.aspx">
					<input type="button" id="tp4" style="border: none;"/>
					</a>
				</div>
				<div class="bnt1">
					<div class="designer1">
						<a href="biaobaiqiuhun.aspx">
						<div class="propose">
							<input type="button" id="tp5" style="border: none;"/>
						</div>
						</a>
						<a href="kaiyeshangwu.aspx">
						<div class="business">
							<input type="button" id="tp6" style="border: none;"/>
						</div>
						</a>
					</div>
					<div class="designer2">
						<a href="designer.aspx">
						<input type="button" id="tp7" style="border: none;" class="auto-style1"/>
						</a>
					</div>
				</div>
			</div>
			<div style="width: 1200px;height: 720px;background-color: #F7F9FA;margin-top: 8px;">
				<div style="height: 33px;">
					<p id="font1"><strong>爱情鲜花</strong></p><p id="font2">|送 &sdot; 让你怦然心动的人</p><p id="font3">更多爱情鲜花&nbsp;&gt;</p>
				</div>
				<div style="height: 610px;width: 1200px;">
					<div class="love_big">
						<input type="button" value="爱情鲜花专区&nbsp;&nbsp;>"/>
					</div>
					<div class="love_detail">
						<div id="love_div1">
							<div class="hoverP" style="border-radius:5px;background-color:rgb(247,246,249);box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" onclick="poster(5)"><img src="img/love1.jpg"/ width="205px" height="230px"/>
								<p style="text-align: center;font-size: 16px;">爱情 &sdot; 韩式系列/诞愿是你</p>
								<p style="text-align: center;font-size: 16px;"><strong>￥278</strong></p>
								<p style="text-align: center;font-size: 10px;">已售&nbsp;14&nbsp;件</p>
							</div>
							<div class="hoverP" style="border-radius:5px;background-color:rgb(247,246,249);box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" onclick="poster(3)"><img src="img/love2.jpg"/ width="205px" height="230px"/>
								<p style="text-align: center;font-size: 16px;">爱情 &sdot; Best for you</p>
								<p style="text-align: center;font-size: 16px;"><strong>￥158</strong></p>
								<p style="text-align: center;font-size: 10px;">已售&nbsp;2.8万&nbsp;件</p>
							</div>
							<div class="hoverP" style="border-radius:5px;background-color:rgb(247,246,249);box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" onclick="poster(2)"><img src="img/love3.jpg"/ width="205px" height="230px"/>
								<p style="text-align: center;font-size: 16px;">爱情 &sdot; 一往情深</p>
								<p style="text-align: center;font-size: 16px;"><strong>￥273</strong></p>
								<p style="text-align: center;font-size: 10px;">已售&nbsp;14.0万&nbsp;件</p>
							</div>
							<div class="hoverP" style="border-radius:5px;background-color:rgb(247,246,249);box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" onclick="poster(7)"><img src="img/love4.jpg"/ width="205px" height="230px"/>
								<p style="text-align: center;font-size: 16px;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;">爱情 &sdot; 韩式系列/你笑起来真好看</p>
								<p style="text-align: center;font-size: 16px;"><strong>￥326</strong></p>
								<p style="text-align: center;font-size: 10px;">已售&nbsp;6086&nbsp;件</p>
							</div>
						</div>
						<div id="love_div2">
							<div class="hoverP" style="border-radius:5px;background-color:rgb(247,246,249);box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" onclick="poster(8)"><img src="img/love5.jpg"/ width="205px" height="230px"/>
								<p style="text-align: center;font-size: 16px;">爱情 &sdot; 你的香气</p>
								<p style="text-align: center;font-size: 16px;"><strong>￥156</strong></p>
								<p style="text-align: center;font-size: 10px;">已售&nbsp;7.0万&nbsp;件</p>
							</div>
							<div class="hoverP" style="border-radius:5px;background-color:rgb(247,246,249);box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" onclick="poster(1)"><img src="img/love6.jpg"/ width="205px" height="230px"/>
								<p style="text-align: center;font-size: 16px;">爱情 &sdot; 不变的承诺</p>
								<p style="text-align: center;font-size: 16px;"><strong>￥639</strong></p>
								<p style="text-align: center;font-size: 10px;">已售&nbsp;7.5万&nbsp;件</p>
							</div>
							<div class="hoverP" style="border-radius:5px;background-color:rgb(247,246,249);box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" onclick="poster(6)"><img src="img/love7.jpg"/ width="205px" height="230px"/>
								<p style="text-align: center;font-size: 16px;">爱情 &sdot; 心中洛神</p>
								<p style="text-align: center;font-size: 16px;"><strong>￥428</strong></p>
								<p style="text-align: center;font-size: 10px;">已售&nbsp;241&nbsp;件</p>
							</div>
							<div class="hoverP" style="border-radius:5px;background-color:rgb(247,246,249);box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" onclick="poster(4)"><img src="img/love8.jpg"/ width="205px" height="230px"/>
								<p style="text-align: center;font-size: 16px;">爱情 &sdot; 恋恋情深</p>
								<p style="text-align: center;font-size: 16px;"><strong>￥218</strong></p>
								<p style="text-align: center;font-size: 10px;">已售&nbsp;8.9万&nbsp;件</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div style="width: 1200px;height: 720px;background-color: #E9ECF0;">
				<div style="height: 33px;">
					<p id="font1"><strong>送长辈鲜花</strong></p><p id="font2">|赠 &sdot; 父母/恩师/长辈</p><p id="font4">更多送长辈鲜花&nbsp;&gt;</p>
				</div>
				<div style="height: 610px;width: 1200px;">
					<div class="parent_big">
						<input type="button" value="送长辈鲜花专区&nbsp;&nbsp;>"/>
					</div>
					<div class="love_detail">
						<div id="love_div1">
							<div class="hoverP" style="border-radius:5px;background-color:rgb(247,246,249);box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" onclick="poster(4)"><img src="img/parent1.jpg"/ width="205px" height="230px"/>
								<p style="text-align: center;font-size: 16px;">送长辈 &sdot; 健康 喜乐</p>
								<p style="text-align: center;font-size: 16px;"><strong>￥269</strong></p>
								<p style="text-align: center;font-size: 10px;">已售&nbsp;3283&nbsp;件</p>
							</div>
							<div class="hoverP" style="border-radius:5px;background-color:rgb(247,246,249);box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" onclick="poster(4)"><img src="img/parent2.jpg"/ width="205px" height="230px"/>
								<p style="text-align: center;font-size: 16px;">送长辈 &sdot; 韩式系列/时光慢点</p>
								<p style="text-align: center;font-size: 16px;"><strong>￥260</strong></p>
								<p style="text-align: center;font-size: 10px;">已售&nbsp;1718&nbsp;件</p>
							</div>
							<div class="hoverP" style="border-radius:5px;background-color:rgb(247,246,249);box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" onclick="poster(4)"><img src="img/parent3.jpg"/ width="205px" height="230px"/>
								<p style="text-align: center;font-size: 16px;">送长辈 &sdot; 韩式系列/温柔以待</p>
								<p style="text-align: center;font-size: 16px;"><strong>￥263</strong></p>
								<p style="text-align: center;font-size: 10px;">已售&nbsp;1.9万&nbsp;件</p>
							</div>
							<div class="hoverP" style="border-radius:5px;background-color:rgb(247,246,249);box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" onclick="poster(4)"><img src="img/parent4.jpg"/ width="205px" height="230px"/>
								<p style="text-align: center;font-size: 16px;">送长辈 &sdot; 韩式系列/牵挂你</p>
								<p style="text-align: center;font-size: 16px;"><strong>￥302</strong></p>
								<p style="text-align: center;font-size: 10px;">已售&nbsp;2082&nbsp;件</p>
							</div>
						</div>
						<div id="love_div2">
							<div class="hoverP" style="border-radius:5px;background-color:rgb(247,246,249);box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" onclick="poster(4)"><img src="img/parent5.jpg"/ width="205px" height="230px"/>
								<p style="text-align: center;font-size: 16px;">送长辈 &sdot; 真挚祝福</p>
								<p style="text-align: center;font-size: 16px;"><strong>￥329</strong></p>
								<p style="text-align: center;font-size: 10px;">已售&nbsp;1188&nbsp;件</p>
							</div>
							<div class="hoverP" style="border-radius:5px;background-color:rgb(247,246,249);box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" onclick="poster(4)"><img src="img/parent6.jpg"/ width="205px" height="230px"/>
								<p style="text-align: center;font-size: 16px;">送长辈 &sdot; 暖暖情意</p>
								<p style="text-align: center;font-size: 16px;"><strong>￥365</strong></p>
								<p style="text-align: center;font-size: 10px;">已售&nbsp;213&nbsp;件</p>
							</div>
							<div class="hoverP" style="border-radius:5px;background-color:rgb(247,246,249);box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" onclick="poster(4)"><img src="img/parent7.jpg"/ width="205px" height="230px"/>
								<p style="text-align: center;font-size: 16px;">送长辈 &sdot; 韩式花篮/阳光使者</p>
								<p style="text-align: center;font-size: 16px;"><strong>￥318</strong></p>
								<p style="text-align: center;font-size: 10px;">已售&nbsp;2901&nbsp;件</p>
							</div>
							<div class="hoverP" style="border-radius:5px;background-color:rgb(247,246,249);box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" onclick="poster(4)"><img src="img/parent8.jpg"/ width="205px" height="230px"/>
								<p style="text-align: center;font-size: 16px;">送长辈 &sdot; 韩式花篮/星河璀璨</p>
								<p style="text-align: center;font-size: 16px;"><strong>￥278</strong></p>
								<p style="text-align: center;font-size: 10px;">已售&nbsp;7561&nbsp;件</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div style="width: 1200px;height: 720px;background-color: #F7F9FA;">
				<div style="height: 33px;">
					<p id="font1"><strong>永生花</strong></p><p id="font2">|许 &sdot; 她一生承诺</p><p id="font5">更多永生花&nbsp;&gt;</p>
				</div>
				<div style="height: 610px;width: 1200px;">
					<div class="forever_big">
						<input type="button" value="永生花专区&nbsp;&nbsp;>"/>
					</div>
					<div class="love_detail">
						<div id="love_div1">
							<div class="hoverP" style="border-radius:5px;background-color:rgb(247,246,249);box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" onclick="poster(22)"><img src="img/forever1.jpg"/ width="205px" height="230px"/>
								<p style="text-align: center;font-size: 16px;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;">爱情 &sdot; 一鹿(路)有你永生花小夜灯</p>
								<p style="text-align: center;font-size: 16px;"><strong>￥298</strong></p>
								<p style="text-align: center;font-size: 10px;">已售&nbsp;2190&nbsp;件</p>
							</div>
							<div class="hoverP" style="border-radius:5px;background-color:rgb(247,246,249);box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" onclick="poster(23)"><img src="img/forever2.jpg"/ width="205px" height="230px"/>
								<p style="text-align: center;font-size: 16px;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;">爱情 &sdot; 我如此爱你-施华洛世奇ONE浪漫心形项链</p>
								<p style="text-align: center;font-size: 16px;"><strong>￥1190</strong></p>
								<p style="text-align: center;font-size: 10px;">已售&nbsp;378&nbsp;件</p>
							</div>
							<div class="hoverP" style="border-radius:5px;background-color:rgb(247,246,249);box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" onclick="poster(28)"><img src="img/forever3.jpg"/ width="205px" height="230px"/>
								<p style="text-align: center;font-size: 16px;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;">爱情 &sdot; 独角兽永生花小夜灯/粉</p>
								<p style="text-align: center;font-size: 16px;"><strong>￥298</strong></p>
								<p style="text-align: center;font-size: 10px;">已售&nbsp;129&nbsp;件</p>
							</div>
							<div class="hoverP" style="border-radius:5px;background-color:rgb(247,246,249);box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" onclick="poster(19)"><img src="img/forever4.jpg"/ width="205px" height="230px"/>
								<p style="text-align: center;font-size: 16px;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;">爱情 &sdot; 招财猫永生花水晶球玻璃罩小夜灯</p>
								<p style="text-align: center;font-size: 16px;"><strong>￥168</strong></p>
								<p style="text-align: center;font-size: 10px;">已售&nbsp;315&nbsp;件</p>
							</div>
						</div>
						<div id="love_div2">
							<div class="hoverP" style="border-radius:5px;background-color:rgb(247,246,249);box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" onclick="poster(20)"><img src="img/forever5.jpg"/ width="205px" height="230px"/>
								<p style="text-align: center;font-size: 16px;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;">爱情 &sdot; 爱的礼物-纪梵希N37爱语限量版口红永生花高定礼盒</p>
								<p style="text-align: center;font-size: 16px;"><strong>￥699</strong></p>
								<p style="text-align: center;font-size: 10px;">已售&nbsp;5&nbsp;件</p>
							</div>
							<div class="hoverP" style="border-radius:5px;background-color:rgb(247,246,249);box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" onclick="poster(16)"><img src="img/forever6.jpg"/ width="205px" height="230px"/>
								<p style="text-align: center;font-size: 16px;">爱情 &sdot; Be My Love</p>
								<p style="text-align: center;font-size: 16px;"><strong>￥278</strong></p>
								<p style="text-align: center;font-size: 10px;">已售&nbsp;14&nbsp;件</p>
							</div>
							<div class="hoverP" style="border-radius:5px;background-color:rgb(247,246,249);box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" onclick="poster(26)"><img src="img/forever7.jpg"/ width="205px" height="230px"/>
								<p style="text-align: center;font-size: 16px;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;">爱情 &sdot; 磁悬浮永生花灯蓝牙款/粉色小玫瑰</p>
								<p style="text-align: center;font-size: 16px;"><strong>￥399</strong></p>
								<p style="text-align: center;font-size: 10px;">已售&nbsp;475&nbsp;件</p>
							</div>
							<div class="hoverP" style="border-radius:5px;background-color:rgb(247,246,249);box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" onclick="poster(17)"><img src="img/forever8.jpg"/ width="205px" height="230px"/>
								<p style="text-align: center;font-size: 16px;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;">爱情 &sdot; 永生花心形圣心盒/炙热红</p>
								<p style="text-align: center;font-size: 16px;"><strong>￥469</strong></p>
								<p style="text-align: center;font-size: 10px;">已售&nbsp;2&nbsp;件</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div style="width: 1200px;height: 720px;background-color: #E9ECF0;">
				<div class="cake">
					<div style="height: 33px;">
						<p id="font1"><strong>蛋糕</strong></p><p id="font2">|一起品味 &sdot; 甜蜜时光</p><p id="font6">更多蛋糕&nbsp;</p>
					</div>
					<div class="cake_brand">
						<div><img src="img/cake-1.png"/><p>巴黎贝甜蛋糕</p></div>
						<div><img src="img/cake0.png"/><p>全国蛋糕</p></div>
						<div><img src="img/cake1.png"/><p>幸福西饼蛋糕</p></div>
						<div><img src="img/cake2.png"/><p>cakeboss蛋糕</p></div>
						<div><img src="img/cake3.png"/><p>哈根达斯蛋糕</p></div>
						<div><img src="img/cake4.png"/><p>米卡米卡蛋糕</p></div>
						<div><img src="img/cake5.png"/><p>Mcake蛋糕</p></div>
						<div><p>更多蛋糕品牌&nbsp;&gt;</p></div>
					</div>
					<div class="cake_detail">
						<div id="cake1">
							<img src="img/cake6.jpg"/>
							<p style="text-align: center;font-size: 16px;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;">幸福西饼 &sdot; 四重奏蛋糕(约2磅)</p>
							<p style="text-align: center;font-size: 16px;"><strong>￥238</strong></p>
							<p style="text-align: center;font-size: 10px;">已售&nbsp;6879&nbsp;件</p>
						</div>
						<div id="cake2">
							<img src="img/cake7.jpg" width="210px" height="230px"/>
							<p style="text-align: center;font-size: 16px;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;">cakeboss蛋糕 &sdot; 小天鹅（4寸）</p>
							<p style="text-align: center;font-size: 16px;"><strong>￥199</strong></p>
							<p style="text-align: center;font-size: 10px;">已售&nbsp;896&nbsp;件</p>
						</div>
					</div>
				</div>
				<div class="gift">
					<div style="height: 33px;">
						<p id="font1"><strong>礼品</strong></p><p id="font2">|给 &sdot; 她最美好的礼物</p><p id="font6">更多礼品&nbsp;</p>
					</div>
					<div class="gift_brand">
						<div style="width: 230px;float: left;border-right: 1px dashed lightgray;">
							<ol>
								<li><a href="#">水晶内雕/3D激光内雕水晶</a></li>
								<li><a href="#">进口/泰国保险花</a></li>
								<li><a href="#">金箔玫瑰/金箔画</a></li>
								<li><a href="#">精品音乐盒/八音盒</a></li>
								<li><a href="#">生日礼品</a></li>
								<li><a href="#">约会/求爱礼品</a></li>
								<li><a href="#">结婚礼品</a></li>
								<li><a href="#">感谢/祝福礼品</a></li>
								<li><a href="#">拜访/探望礼品</a></li>
							</ol>
						</div>
						<div id="gift1">
							<div><img src="img/gift1.png"/><p>巴黎贝甜蛋糕</p></div>
							<div><img src="img/gift2.png"/><p>全国蛋糕</p></div>
							<div><img src="img/gift3.png"/><p>幸福西饼蛋糕</p></div>
							<div><img src="img/gift4.png"/><p>米卡米卡蛋糕</p></div>
							<div><img src="img/gift5.png"/><p>Mcake蛋糕</p></div>
							<div><p>更多礼物品牌&nbsp;&gt;</p></div>
						</div>
					</div>
					<div class="cake_detail">
						<div id="cake1">
							<img src="img/gift6.jpg"/>
							<p style="text-align: center;font-size: 16px;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;">礼品 &sdot; 麋鹿水晶音乐盒/旋转蓝牙音箱</p>
							<p style="text-align: center;font-size: 16px;"><strong>￥296</strong></p>
							<p style="text-align: center;font-size: 10px;">已售&nbsp;770&nbsp;件</p>
						</div>
						<div id="cake2">
							<img src="img/gift7.jpg" width="210px" height="230px"/>
							<p style="text-align: center;font-size: 16px;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;">礼品 &sdot; 迪奥小姐花漾女士淡香水节日套装</p>
							<p style="text-align: center;font-size: 16px;"><strong>￥988</strong></p>
							<p style="text-align: center;font-size: 10px;">已售&nbsp;13&nbsp;件</p>
						</div>
					</div>
				</div>
			</div>
			<div style="width: 1200px;height: 170px;margin-top:100px">
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
            <div id="y">
            	<p>Copyright©2021, sglytrip.com. All rights reserved. | ICP证：湘B2-20050130 | 湘ICP备08023580号</p>
            	<p>湘公网备31010502002731号</p>
            	<p>违法和不良信息举报电话021-22500846丨全国服务投诉热线12301丨湖南省花艺网站落实诚信建设主体责任承诺书</p>
            </div>
            <div id="z">
            	<p style="color: coral;font-size: 16PX;"><strong>ASP.NET设计——The galaxy小组</strong></p><p><strong>成员:邓滨斌&nbsp;高圣&nbsp;胡威&nbsp;雷鑫&nbsp;杨泽桓&nbsp;谢蓝宇</strong></p>
            </div>
		</div>
	</form>
</body>
<script>
    // 右滑动画
    function right() {
        // 实现滑动动画
        var tu = document.querySelector("#tu");
        var tuposition = tu.style.left;
        // 当滑到最右边时重置位置
        if (tuposition == "0px") {
            tuposition = "-3600px";
            tu.style.left = "-3600px";
        }
        var S = parseInt(tuposition) + 1200 + "px";
        $(function () {
            $("#tu").animate({ left: S }, 500);
            if (document.getElementById("tu").style.left == "-3600px") {
                oneCL(0);
            }
            if (document.getElementById("tu").style.left == "-2400px") {
                twoCL(0);
            }
            if (document.getElementById("tu").style.left == "-1200px") {
                threeCL(0);
            }
        });
        // 解决暴力点击bug
        document.querySelector("#right").onclick = null;
        setTimeout(function () {
            document.querySelector("#right").onclick = function () { right() };
        }, 500)
    }

    // 同上
    function left() {
        var tu = document.querySelector("#tu");
        var tuposition = tu.style.left;
        if (tuposition == "-4800px") {
            tuposition = "-1200px";
            tu.style.left = "-1200px";
        }
        var S = parseInt(tuposition) - 1200 + "px";
        $(function () {
            $("#tu").animate({ left: S }, 500);
            if (document.getElementById("tu").style.left == "-3600px") {
                oneCL(0);
            }
            if (document.getElementById("tu").style.left == "-2400px") {
                twoCL(0);
            }
            if (document.getElementById("tu").style.left == "-1200px") {
                threeCL(0);
            }
        });
        // 解决暴力点击bug
        document.querySelector("#left").onclick = null;
        setTimeout(function () {
            document.querySelector("#left").onclick = function () { left() };
        }, 500)
    }

    // 第一个按钮被按下时
    function oneCL(flag) {
        $(function () {
            $("#oneBT").animate({ width: "40px", backgroundColor: " white" }, 500);
            $("#twoBT").animate({ width: "20px" }, 500);
            $("#threeBT").animate({ width: "20px" }, 500);
        });
        if (flag == 1) {
            $(function () {
                $("#tu").animate({ left: "-3600px" }, 500);
            });
        }
    }

    // 第二个按钮被按下时
    function twoCL(flag) {
        $(function () {
            $("#oneBT").animate({ width: "20px" }, 500);
            $("#twoBT").animate({ width: "40px", backgroundColor: "white" }, 500);
            $("#threeBT").animate({ width: "20px" }, 500);
        });
        if (flag == 1) {
            $(function () {
                $("#tu").animate({ left: "-2400px" }, 500);
            });
        }
    }

    // 第三个按钮被按下时
    function threeCL(flag) {
        $(function () {
            $("#oneBT").animate({ width: "20px" }, 500);
            $("#twoBT").animate({ width: "20px" }, 500);
            $("#threeBT").animate({ width: "40px", backgroundColor: "white" }, 500);
        });
        if (flag == 1) {
            $(function () {
                $("#tu").animate({ left: "-4800px" }, 500);
            });
        }
    }

    // 设置定时器每隔一秒调用滑动事件
    var l = setInterval("right()", 3000);

    // 设置事件启用滑动定时器
    function start() {
        l = setInterval("right()", 3000);
    }

    // 设置事件停止滑动定时器
    function stop() {
        clearInterval(l);
    }

    // 为显示界面的覆盖事件设置stop()和start()
    $(function () {
        $("#kuang").mouseenter(function () {
            stop();
        });
        $("#kuang").mouseleave(function () {
            start();
        });
	})

	function poster(id) {
		window.open("flowerDetail.aspx" + "?id=" + id);
	}

</script>
</html>
