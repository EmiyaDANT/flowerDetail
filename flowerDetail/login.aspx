﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Login.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="imgForDLZC/icon.ico.bmp" rel="icon" />
    <script src="js/dianjidonghua.js"></script>
    <style>
        *{margin: 0;padding: 0;}
        .web{width: 1200px;height: 1000px;margin: 0 auto;font-family:"微软雅黑";}
        .header{height: 100px;width: 1200px;border: 0px solid;}
        .middle{height:600px;width:100%;position:relative;}
        .logo{background: url(../img/logo1.png);background-size: 180px 60px;border-radius:5px;}

        .loginbtn{background-color:coral;color:white;border:0px;font-size:18px;font-weight:bolder;}
        .loginbtn:hover { cursor:pointer;}
        .loginbtn:active {background-color:white;color:coral;}
        .CB{color: orange;font-size: 16px;margin-left: 103px;}
        .CC{float: left;width: 290px;height: 150px;margin-top: 20px;text-align: left;margin-left: 20px;}
        .CD{float: left;width: 290px;height: 150px;margin-top: 20px;}
        .CE{color: orange;font-size: 13px;float: left;margin-left: 75px;}
        .CF{font-size: 12px;float: left;}
        .CG{font-size: 13px;margin-left: 115px;}
        .CH{font-size: 13px;margin-left: 140px;float: left;}
        .CI{font-size: 13px;margin-left: 30px;float: left;}
        .CJ{color: orange;font-size: 16px;margin-left: 175px;}
        .CK{color: orange;font-size: 13px;float: left;margin-left: 143px;}
        .CL{color: orange;font-size: 13px;float: left;margin-left: 133px;}
        #y{width: 1200px;height: 60px;}
        #y p{text-align: center;font-size: 13px;}
        #z{width: 1200px;height: 45px;text-align: center;}
        #z p{margin-top: 5px;}


        .nav div{width: 180px;height: 60px;float: left;line-height: 60px;border: 1px solid;text-align: center;border-radius:5px;}
        ul{margin: 2px;padding: 2px;}
			ul li{list-style-type: none;height: 25px;text-align: center;border: 1px solid #CCC;line-height:24px;background: #eee;}
			
			ul li a{color: black;text-decoration: none;color:#333;}
			ul li a:hover{ color:#f00;}

			a {color: black;text-decoration: none;}

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="web">
		<div class="header">
			<div class="nav"  style="position:relative;z-index:9999;">
					<div class="logo" style="border:0px;cursor:pointer" onclick="toFlowerSay()"></div>
					<a href="Main2.aspx"><div class="home" style="border:0px;margin-left:50px;cursor:pointer">首页</div></a>
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
						<a href="register.aspx">注册</a>
                    </div>
					
				</div>	
		</div>
        <div class="middle">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/imgForDLZC/lunbo2.jpg"  Width="1200px" Height="600px"/>
              <div style="position:absolute;right:150px;top:80px;background-color:white;width:360px;height:450px;border-radius:20px;">
                <div>
                    <img src="imgForDLZC/background_login1.png" width="360px" height="150px" style="border-top-left-radius:20px;border-top-right-radius:20px;"/>
                </div>
                <div style="text-align:center;">
                    <strong style="font-size:18px;">用户登录</strong>
                </div>
                <div style="text-align:center;margin-top:25px;height:40px;">
                    <asp:TextBox ID="txtusername" runat="server" placeholder="请输入您的账号" Height="40px" Width="70%" style="border:1px solid lightgray;background:url('imgForDLZC/user1.png') no-repeat;background-size:20px 20px;background-position:5px 9px; border-radius:5px;padding-left:30px;" ></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="昵称不能为空！" ControlToValidate="txtusername" style="height:10px;margin-left:40px;font-size:12px;color:coral;"></asp:RequiredFieldValidator>
                <div style="text-align:center;height:40px;">
                    <asp:TextBox ID="txtpassword" TextMode="Password" placeholder="请输入您的密码" Height="40px" Width="70%" runat="server" style="border:1px solid lightgray;background:url('imgForDLZC/pwd1.png') no-repeat;background-size:20px 20px;background-position:5px 10px; border-radius:5px;padding-left:32px;"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="密码不能为空！" ControlToValidate="txtpassword" style="height:10px;margin-left:40px;font-size:12px;color:coral;"></asp:RequiredFieldValidator>
                <div style="text-align:center;margin-top:10px;">
                    <asp:Button ID="Button1" CssClass="loginbtn" runat="server" Text="登录" style="height: 40px; width:80%;border-radius:15px" OnClick="Button1_Click"/>
                </div>
                <div style="text-align:center;">
                    <asp:LinkButton ID="linkbutton1" CssClass="register" style="color:black;text-decoration:none;font-size:12px;" Text="忘记密码？" runat="server" OnClick="linkbutton1_Click" CausesValidation="False" />
                </div>
                <div style="text-align:right; margin-right:30px;margin-top:13px;">
                    <asp:LinkButton ID="linkbutton2" CssClass="register" style="color:black;text-decoration:none;font-size:14px;color:coral;" Text="注册账号点击此出处&raquo;" runat="server" OnClick="linkbutton2_Click" CausesValidation="False" />
                </div>
            </div>
        </div>
        <div style="width: 1200px;height: 170px;">
            	<div style="float: left;width: 290px;height: 150px;margin-top: 20px;text-align: left;margin-left: 20px;">
            		<p style="color: orange;font-size: 16px;">为什么选择星花网</p>
            		<div>&nbsp;<img src="imgForDLZC/Q0.jpg" width="220px" height="50px"/></div>
            		<div><img src="imgForDLZC/Q2.png" width="220px" height="45px"/></div>
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
    </div>
    </form>
</body>
</html>
