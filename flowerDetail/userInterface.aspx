<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userInterface.aspx.cs" Inherits="flowerDetail.userInterface" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
	<link href="img/icon.ico" rel="icon" />
	<script src="js/dianjidonghua.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/JavaScript.js"></script>
	<style>
		/*头部美化*/
		.web{width: 1200px;height: 1000px;margin: 0 auto;font-family:"微软雅黑";box-sizing:border-box}
		.logo{background: url(../img/logo1.png);background-size: 180px 60px;border-radius:5px;}
		.header{height: 100px;width: 1200px;border: 0px solid;}
		.nav div{z-index:1;width: 180px;height: 60px;float: left;line-height: 60px;border: 1px solid;text-align: center;border-radius:5px;margin-left:1px; background-image:linear-gradient(to bottom right,orange,red);color:white}
        ul{margin: 2px;padding: 2px;}
			ul li{list-style-type: none;height: 25px;text-align: center;border: 1px solid #CCC;line-height:24px;background: #eee;}
			
			ul li a{color: black;text-decoration: none;color:#333;}
			ul li a:hover{ color:#f00;}

			a {color: black;text-decoration: none;}

            #xia_ul {
				z-index: 99;
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

		/*左侧导航栏*/
	    .leftnav {
			box-sizing:border-box;
			border:0px solid;
			width:200px;
			height:500px;
			float:left;
		}

	        .leftnav span:hover {
				color:coral;
				cursor:pointer;
			}

		/*右侧具体内容*/
	    .rightNR {
			box-sizing:border-box;
			float:left;
			width:996px;
			height:900px;
			border-left:1px dotted;
			border-color:gray;
			position:relative;
		}

		/*黑色透明背景*/
	    #grayback {
			width:100%;
			height:100%;
			position:absolute;
			background-color:black;
			z-index:100;
			opacity:0.5;
			display:none;
		}

	    #tck {
			width:530px;
			height:360px;
			position:fixed;
			top:240px;
			border-radius:20px;
			left:750px;
			z-index:101;
			display:none;
			background-color:white;
		}
	    .kk {
			width:100%;
			background-color:whitesmoke;
			border:0px solid;
			color:gray;
			height:30px;
		}

		.home:hover, .shopdetail ul li:hover,.shopdetail summary:hover, .shopcar:hover, .relate:hover,.dr_zc a:hover  {
				border-radius:1px;
				color:sandybrown;
				opacity: 0.85;
				border-radius:5px;
			
			}

	</style>
</head>
<body>
	<form id="form1" runat="server">
	<div id="grayback"></div>

	<div id="tck">
		<table style="width:450px;height:300px;margin-left:50px;margin-top:25px;text-align:center">
			<tr>
				<td colspan="2">
					<b>新增收获地址</b>
				</td>
			</tr>
			<tr>
				<td style="width:25%">
					收货人
				</td>
				<td>
                    <asp:TextBox ID="txtname" placeholder="请输入收货人姓名" runat="server" CssClass="kk"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td>
					手机号码
				</td>
				<td>
					<asp:TextBox ID="txtphone" placeholder="请输入收货人手机号码" runat="server" CssClass="kk"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td>
					所在地区
				</td>
				<td>
					<asp:TextBox ID="txtaddress" placeholder="请输入收货人地址" runat="server" CssClass="kk"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="保存地址"  style="width:132px;height:36px;border-radius:132px;cursor:pointer;background-color:coral;color:white;border:1px solid" OnClick="Button1_Click"/>
					<asp:Button ID="Button2" runat="server" Text="取消" style="width:132px;height:36px;border-radius:132px;cursor:pointer;background-color:white;color:black;border:0.1px solid;"/>
				</td>
			</tr>
		</table>
	</div>
    
		<%--网站主体--%>
        <div class="web" style="position:relative">
		
			<%--头部--%>
             <div class="header">
				<div class="nav"  style="position:relative;z-index:99;">
						<div class="logo" style="background-size: 180px 60px;border-radius:5px;border:0px;cursor:pointer;background: url(../img/logo1.png);" onclick="toFlowerSay()">
						</div>
						<a href="Main2.aspx"><div class="home" style="border:0px;margin-left:50px;cursor:pointer">首页</div></a>
						<div class="shopdetail" style="cursor:pointer;border:0px" >
							<details style="z-index:9999;">
								<summary>商品分类</summary>
								<ul id="xia_ul" style="z-index:99;">
									<a href="xianflower.aspx"><li style="z-index:99;border:0px solid">鲜花&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li></a>
									<a href="yongshenghua.aspx"><li style="z-index:99;border:0px solid">永生花&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li></a>
									<a href="javascript:void(0)"><li style="z-index:99;border:0px solid">蛋糕&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li></a>
									<a href="Present.aspx"><li style="z-index:99;border:0px solid">礼品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li></a>
								</ul>
							</details>	
						</div>
						<a href="sessioncat2.aspx"><div class="shopcar" style="cursor:pointer;border:0px">购物车</div></a>
						<a href="javascript:void(0)"><div class="relate" style="cursor:pointer;border:0px">联系我们</div></a>
					
						<!--
                			<a href="login.aspx"><div class="load" style="cursor:pointer;border:0px">登录</div></a>
						-->
						
					
					</div>	
			</div>

			<%--左测导航栏--%>
			<div class="leftnav">
				<span style="font-size:20px;color:coral">账号管理</span>

				<br />
				<br />
				<span style="font-size:18px;">个人资料</span>
				<hr style="width:50%;position:relative;left:-50px"/>
				<br />
				<span style="font-size:18px;">收获地址</span>
				<hr style="width:50%;position:relative;left:-50px"/>
				<br />
				<span style="font-size:18px;">我的订单</span>
				<hr style="width:50%;position:relative;left:-50px"/>
				<br />
				<span style="font-size:18px;">安全设置</span>
				<hr style="width:50%;position:relative;left:-50px"/>
				<br />
				<span style="font-size:18px;">支付宝绑定</span>
				<hr style="width:50%;position:relative;left:-50px"/>
				<br />
				<span style="font-size:18px;"><asp:LinkButton runat="server" OnClick="Unnamed_Click" OnClientClick="return confirm('是否退出登录')">退出登录</asp:LinkButton></span>
				<br />
			</div>
			<div class="rightNR">
				<div id="shdz" style="width:100%;height:100%;position:absolute;top:0px;left:0px;display:block">
                    <div style="width:100%;height:80px;line-height:80px;background-color:whitesmoke">
						<input type="button" onclick="txxx()" value="新增收货地址" style="width:150px;height:40px;border-radius:120px;margin-left:50px;border:0px solid;cursor:pointer;background-color:orangered;color:white;"/>
                       
                     
                        <asp:GridView ID="GridView1" runat="server" Width="993px" AutoGenerateColumns="false">
							<Columns>
								<asp:TemplateField HeaderText="收货人">
									<ItemTemplate>
										<%# Eval("name") %>
									</ItemTemplate>
								</asp:TemplateField>
								<asp:TemplateField HeaderText="收货地址">
									<ItemTemplate>
										<%# Eval("address") %>
									</ItemTemplate>
								</asp:TemplateField>
								<asp:TemplateField HeaderText="	联系电话">
									<ItemTemplate>
										<%# Eval("phone") %>
									</ItemTemplate>
								</asp:TemplateField>
								<asp:TemplateField HeaderText="操作">
									<ItemTemplate>
                                        <asp:Button ID="Button3" runat="server" Text="修改" />
										<asp:Button ID="Button4" runat="server" Text="删除" />
									</ItemTemplate>
								</asp:TemplateField>
							</Columns>
                        </asp:GridView>
                    </div>

				</div>
				<div id="wddd"  style="width:100%;height:100%;position:absolute;top:0px;left:0px;display:none">

				</div>
			</div>
        </div>
    </form>
</body>
<script>
	function txxx() {
		document.getElementById("grayback").style.display="block";
        $("#tck").toggle("explode");
	}
</script>
</html>
