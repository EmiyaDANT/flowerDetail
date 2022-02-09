<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="flowersays.aspx.cs" Inherits="flowersays.flowersays" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
	<link href="img/icon.ico" rel="icon" />
	<script src="js/dianjidonghua.js"></script>
	<style>
		*{margin: 0;padding: 0;}
		.web{width: 1200px;height: 3200px;margin: 0 auto;font-family:"微软雅黑";}
		.header{height: 60px;width: 1200px;border: 1px solid;}

		.bor_left{width: 200px;height: 2200px;float: left;border: 1px solid lightgray;border-radius: 10px;}
		#font1{width: 200px;height: 30px;line-height: 30px;font-weight: bolder;font-size: 18px;font-family: "新宋体";color: white;background-color: orange;border-top-left-radius: 10px;border-top-right-radius: 10px;}
		dt{margin-left: 15px;margin-top: 5px;font-weight: bold;}
		dd{margin-left: 50px;margin-top: 5px;}
		dt a{color: black;text-decoration: none;font-family: "新宋体";color: orange;}
		dt a:hover{border: 1px dashed orange;}
		dd a{color: black;text-decoration: none;font-family: "新宋体";}
		dd a:hover{color: orange;border-bottom: 1px dashed orange;}

		.bor_right{width: 990px;height: 2840px;float: left;border: 1px solid lightgray;margin-left: 5px;}
		hr{width: 970px;margin-left: 10px;margin-top: 24px; border-style: none none dashed;}
		ul,li{padding: 0; margin: 0;border: 0;list-style: none}
		li a{text-decoration: none;}
		#flower_name li{font-family: "新宋体"; width: 100px;float: left;height: 35px;line-height: 35px;margin-left: 7.5px;margin-top: 7.5px; border: 0.1px solid #d6d6d6;background: #fff;}
		#flower_name li a{display: block;height: 100%;text-align: center; position: relative;color: black;}
		#flower_name li a:hover{background-color: orange;color: white;font-weight: bold;}
		.recommend{width: 450px;height: 150px;float: left;margin-left: 28px;margin-top: 20px;}
		.recommend div img{float: left;}
		.recommend #p1{float: left;width: 250px;margin-left: 20px;}
		#p1 h4{margin-top: 10px;}
		#p1 h4:hover{border-bottom: 1px dashed orange;}
		#p1 a{text-decoration: none;color: lightsalmon;font-size: 14px;}
		#p1 p{font-size: 12px;margin-top: 10px;letter-spacing: 2px;}
		#p1 p:hover{color: orange;}
		.article{margin-left: 20px;margin-top: 20px;}
		.article h4{margin-top: 10px;}
		.article a:hover{color: orange;}
		.article a{text-decoration: none;color: black;font-weight: bold; font-size: 14px;font-family: "新宋体";}
		.article p{font-size: 12px;margin-top: 10px;letter-spacing: 2px;}
		.article p:hover{color: orange;}
		.classify{width: 450px;height: 200px;float: left;margin-left: 28px;margin-top: 20px;border-top: 1px solid;}
		#p2{height: 25px;border-bottom: 1px dashed lightgray;}
		#p2 p{font-size: 16px;font-weight: bold;color: lightsalmon;float: left;}
		#label1{margin-left: 375px;line-height: 22px;font-size: 14px;float: left;}
		#p3 p{font-size: 12px;margin-top: 8px;letter-spacing: 2px;}
		#p3 a{text-decoration: none;color: black;font-size: 13px;font-family: "新宋体";}
		#p3 a:hover{color: orange;border-bottom: 1px dashed orange;}
		#label2{margin-left: 344px;line-height: 22px;font-size: 14px;float: left;}
		#label3{margin-left: 328px;line-height: 22px;font-size: 14px;float: left;}
		#label4{margin-left: 297px;line-height: 22px;font-size: 14px;float: left;}
		#label5{margin-left: 280px;line-height: 22px;font-size: 14px;float: left;}

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

        ul{margin: 2px;padding: 2px;}
			ul li{list-style-type: none;height: 25px;text-align: center;border: 1px solid #CCC;line-height:24px;background: #eee;width:180px}
			
			ul li a{color: black;text-decoration: none;color:#333;}
			ul li a:hover{ color:#f00;}

			a {color: black;text-decoration: none;}

        .logo{background: url(../img/logo1.png);background-size: 180px 60px;}

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
				cursor: default;
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
					<a href="Main2.aspx"><div class="home" style="border:0px;margin-left:50px;cursor:pointer;">首页</div></a>
					<div class="shopdetail" style="cursor:pointer;border:0px" >
						<details style="z-index:9999;">
							<summary>商品分类</summary>
							<ul style="z-index:100;" id="xia_ul">
								<a href="javascript:void(0)"><li style="z-index:9999;border:0px solid">鲜花&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li></a>
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
                    <div style="cursor:pointer;border:0px">
						<a href="login.aspx">登录</a>|
						<a href="register.aspx">注册</a>
						<div id="YHnameK" style="background-color:white;position:relative;top:-60px;display:none" runat="server">
							<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"></asp:LinkButton>
						</div>
                    </div>
					
				</div>
			</div>
			<div class="main" style="width: 1200px;height: 2840px;">
				<div class="bor_left">
					<div id="font1">&nbsp;花语分类导航</div>
					<div>
					    <dl>
					    	<dt><a href="#">送花</a>
				    			<dd><a href="#">结婚送花</a></dd>
				    			<dd><a href="#">送花故事分享</a></dd>
				    			<dd><a href="#">生日送花</a></dd>
				    			<dd><a href="#">送花艺术</a></dd>
				    			<dd><a href="#">鲜花常识</a></dd>
				    			<dd><a href="#">鲜花生活</a></dd>
				    			<dd><a href="#">花卉花艺</a></dd>
				    			<dd><a href="#">花语</a></dd>
				    			<dd><a href="#">商务送花</a></dd>
				    			<dd><a href="#">花店经营</a></dd>
				    			<dd><a href="#">道歉送花</a></dd>
				    			<dd><a href="#">开业送花</a></dd>
				    			<dd><a href="#">乔迁送花</a></dd>
				    			<dd><a href="#">生子送花</a></dd>
				    			<dd><a href="#">探病送花</a></dd>
				    			<dd><a href="#">毕业送花</a></dd>
				    			<dd><a href="#">结婚纪念送花</a></dd>
				    			<dd><a href="#">给女朋友送花</a></dd>
				    			<dd><a href="#">给朋友送花</a></dd>
				    			<dd><a href="#">给领导送花</a></dd>
				    			<dd><a href="#">给孩子送花</a></dd>
				    			<dd><a href="#">给长辈送花</a></dd>
				    			<dd><a href="#">给老师送花</a></dd>
				    			<dd><a href="#">给同事送花</a></dd>
				    			<dd><a href="#">给客户送花</a></dd>
				    			<dd><a href="#">给父母送花</a></dd>
				    			<dd><a href="#">给妻子送花</a></dd>
				    			<dd><a href="#">给亲属送花</a></dd>
				    			<dd><a href="#">异地送花</a></dd>
				    			<dd><a href="#">祝寿送花</a></dd>
				    			<dd><a href="#">求婚送花</a></dd>
				    			<dd><a href="#">求爱表白送花</a></dd>
				    			<dd><a href="#">光棍节送花</a></dd>
				    			<dd><a href="#">感恩节送花</a></dd>
				    			<dd><a href="#">圣诞节送花</a></dd>
				    			<dd><a href="#">春节送花</a></dd>
				    			<dd><a href="#">情人节送花</a></dd>
				    			<dd><a href="#">三八妇女节送花</a></dd>
				    			<dd><a href="#">母亲节送花</a></dd>
				    			<dd><a href="#">父亲节送花</a></dd>
				    			<dd><a href="#">七夕节送花</a></dd>
				    			<dd><a href="#">教师节送花</a></dd>
				    			<dd><a href="#">中秋节送花</a></dd>
				    			<dd><a href="#">护士节送花</a></dd>
				    			<dd><a href="#">端午节送花</a></dd>
				    			<dd><a href="#">重阳节送花</a></dd>
				    			<dd><a href="#">元宵节送花</a></dd>
				    			<dd><a href="#">白色情人节送花</a></dd>
					    	</dt>
					    	<dt><a href="#">蛋糕常识</a></dt>
					    	<dt><a href="#">送礼</a>
				    			<dd><a href="#">送领导生日礼物</a></dd>
				    			<dd><a href="#">送长辈生日礼物</a></dd>
				    			<dd><a href="#">送同事生日礼物</a></dd>
				    			<dd><a href="#">送母亲生日礼物</a></dd>
				    			<dd><a href="#">送女朋友生日礼物</a></dd>
				    			<dd><a href="#">送男朋友生日礼物</a></dd>
				    			<dd><a href="#">送客户生日礼物送</a></dd>
				    			<dd><a href="#">员工生日礼物</a></dd>
				    			<dd><a href="#">送朋友生日礼物</a></dd>
				    			<dd><a href="#">送小孩生日礼物</a></dd>
				    			<dd><a href="#">送父亲生日礼物</a></dd>
				    			<dd><a href="#">送礼艺术</a></dd>
				    			<dd><a href="#">生日礼物指南</a></dd>
				    			<dd><a href="#">节日礼物</a></dd>
				    			<dd><a href="#">送妻子生日礼物</a></dd>
				    			<dd><a href="#">送家人亲属礼物</a></dd>
				    			<dd><a href="#">送老师礼物</a></dd>
					    	</dt>
					    	<dt><a href="#">祝福语大全</a></dt>
					    	<dt><a href="#">公司动态</a></dt>
					    	<dt><a href="#">媒体报道</a></dt>
					    	<dt><a href="#">感动瞬间</a></dt>
					    	<dt><a href="#">养花</a>
				    			<dd><a href="#">鲜花养护</a></dd>
				    			<dd><a href="#">花卉盆栽养护</a></dd>
				    			<dd><a href="#">绿植养护</a></dd>
				    			<dd><a href="#">花卉大全</a></dd>
				    			<dd><a href="#">常用鲜切花专辑</a></dd>
					    	</dt>
					    	<dt><a href="#">图片大全</a>
				    			<dd><a href="#">鲜花图片大全</a></dd>
				    			<dd><a href="#">蛋糕图片大全</a></dd>
					    	</dt>
					    </dl>
					</div>
				</div>
				<div class="bor_right">
					<div style="height: 305px;">
						<header style="height: 80px;">
							<h3 style="margin-left: 20px;margin-top: 20px;color: orange;">花语大全</h3>
							<p style="margin-left: 20px;margin-top: 10px;font-family: '新宋体';">花语是指人们用花来表达人的语言,不同的花、不同的枝数代表不同的含义，不同的花送的对象也不一样，为您收集最新最全的花语大全，包括不同花语传说、花语的起源等信息。包含常见的玫瑰、蓝色妖姬、百合、郁金香、康乃馨等近百种花的花语信息。</p>
						</header>
						<div>
							<ul id="flower_name">
								<li><a href="#">玫瑰</a></li>
								<li><a href="#">风信子</a></li>
								<li><a href="#">蓝色妖姬</a></li>
								<li><a href="#">百合</a></li>
								<li><a href="#">郁金香</a></li>
								<li><a href="#">康乃馨</a></li>
								<li><a href="#">紫罗兰</a></li>
								<li><a href="#">桔梗花</a></li>
								<li><a href="#">马蹄莲</a></li>
								<li><a href="#">勿忘我</a></li>
								<li><a href="#">四叶草</a></li>
								<li><a href="#">满天星</a></li>
								<li><a href="#">曼陀罗</a></li>
								<li><a href="#">鸢尾花</a></li>
								<li><a href="#">雏菊</a></li>
								<li><a href="#">水仙花</a></li>
								<li><a href="#">樱花</a></li>
								<li><a href="#">蔷薇花</a></li>
								<li><a href="#">蝴蝶兰</a></li>
								<li><a href="#">栀子花</a></li>
								<li><a href="#">薰衣草</a></li>
								<li><a href="#">蒲公英</a></li>
								<li><a href="#">牡丹花</a></li>
								<li><a href="#">月季花</a></li>
								<li><a href="#">山茶花</a></li>
								<li><a href="#">三色堇</a></li>
								<li><a href="#">矢车菊</a></li>
								<li><a href="#">玉兰花</a></li>
								<li><a href="#">太阳花</a></li>
								<li><a href="#">芍药花</a></li>
								<li><a href="#">茉莉花</a></li>
								<li><a href="#">波斯菊</a></li>
								<li><a href="#">睡莲</a></li>
								<li><a href="#">铃兰花</a></li>
								<li><a href="#">仙客来</a></li>
								<li><a href="#">仙人掌</a></li>
								<li><a href="#">木棉花</a></li>
								<li><a href="#">牵牛花</a></li>
								<li><a href="#">扶朗花</a></li>
								<li><a href="#">海棠花</a></li>
								<li><a href="#">昙花</a></li>
								<li><a href="#">剑兰</a></li>
								<li><a href="#">海芋花</a></li>
								<li><a href="#">丁香花</a></li>
								<li><a href="#">更多&raquo;</a></li>
							</ul>
						</div>
					</div>
					<hr />
					<div style="height: 368px;">
						<header style="height: 20px;">
							<h3 style="margin-left: 20px;margin-top: 20px;color: orange;">图文推荐</h3>
						</header>
						<div>
							<div class="recommend">
								<div><img src="img/9012473.jpg_220x240.jpg" width="180px" height="150px" style="border-radius: 10px;"/></div>
								<div id="p1">
									<h4><a href="#">花艺师通常是怎么样搭配花卉色彩的…</a></h4>
									<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;花艺师经常会接到需求，按照顾客的喜好考虑整体花卉的色彩搭配。色彩搭配是影响花艺设计效果的重要因素，掌握基础的配色规则是提高配色水平的捷径。从基础开始学习花艺设计…</p>
								</div>
							</div>
							<div class="recommend">
								<div><img src="img/9012493.jpg_220x240.jpg" width="180px" height="150px" style="border-radius: 10px;"/></div>
								<div id="p1">
									<h4><a href="#">平时如何给女朋友创造惊喜？让女人…</a></h4>
									<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;女人都喜欢浪漫与惊喜，这一点毋庸置疑。就是我们平时说的嘴上说着不要不要，但是收到你送的惊喜内心其实是很欢喜的，平时如何给女朋友创造惊喜？让女人倍感甜蜜的大绝招！</p>
								</div>
							</div>
							<div class="recommend">
								<div><img src="img/9012009.jpg_220x240.jpg" width="180px" height="150px" style="border-radius: 10px;"/></div>
								<div id="p1">
									<h4><a href="#">追女生除了送玫瑰还可以送什么花好…</a></h4>
									<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;有一个很喜欢的女孩子，现在在追求阶段，想给她送花，送什么比较好？现在很多男生都觉得女生难追，费尽心思还是还来一句咱们只适合做朋友！有可能只是你的方式不对，爱情当…</p>
								</div>
							</div>
							<div class="recommend">
								<div><img src="img/9012452.jpg_220x240.jpg" width="180px" height="150px" style="border-radius: 10px;"/></div>
								<div id="p1">
									<h4><a href="#">最近要买礼物的男生速点！一大波新…</a></h4>
									<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;买一束花，就能买到一种好心情回到家打开灯，看见花房子就变成了家冬天来了挑选一份礼物送给你最爱的人吧！ </p>
								</div>
							</div>
						</div>
					</div>
					<hr />
					<div style="height: 640px;">
						<header style="height: 20px;">
							<h3 style="margin-left: 20px;margin-top: 20px;color: orange;">推荐文章</h3>
						</header>
						<div>
							<div class="article">
								<h4><a href="#">给异地女友送花，维系感情也需要小心机</a></h4>
								<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;给异地女友送花，维系感情偶尔也需要一些小心机，很多时候因为一些原因，处于热恋中的小情侣不得不分隔两地，感情面临考验，但是没关系，选择一个合适的时机给异地的女朋友送上一束鲜花吧，见花如见人，用鲜花遥寄相思之情，送花订花首选花礼网。</p>
							</div>
							<div class="article">
								<h4><a href="#">朋友结婚送哪些礼物比较有诚意？</a></h4>
								<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;关系好的朋友如果要结婚了，肯定不能只包一个红包就完事，为新婚朋友精心挑选礼品还是很有必要的，下面这几种很适合送给新婚情侣哦。</p>
							</div>
							<div class="article">
								<h4><a href="#">表白应该送几朵玫瑰？告白玫瑰送几朵？</a></h4>
								<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;表白应该送几朵玫瑰？不同数量的玫瑰花都有各自的花语，选对玫瑰的数量，才能正确地把心意传达给对方，花礼网为您解析不同数量玫瑰代表的含义。</p>
							</div>
							<div class="article">
								<h4><a href="#">一天什么时候最适合送花？</a></h4>
								<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一天什么时候最适合送花呢？那一定是早上和晚上。早上，我们从床上醒来，伸了伸懒腰，拉开窗帘，开始新的一天。而道路晚上，我们结束工作放松自己。这两个时间段是很重要的，不同时间段送花代表着不同程度的关系。</p>
							</div>
							<div class="article">
								<h4><a href="#">小王子和玫瑰花的寓意是什么？</a></h4>
								<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;小王子和玫瑰花的形象出自于一本叫《小王子》的书。在书里，作者通过小王子的视角去探讨了成长，爱与梦想。小王子和玫瑰花之间的关系便是一个爱的探索过程。</p>
							</div>
							<div class="article">
								<h4><a href="#">给老师送花怎么写？</a></h4>
								<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;有时候给老师送花，要写一些祝福语，但是不知道该怎么写？怎样写才可以表达对老师的感激之情呢？写祝福语是由心而发的，写出自己的感受即可，同时在写祝福语的时候，我们可以掌握一些写作的小窍门。</p>
							</div>
							<div class="article">
								<h4><a href="#">闺蜜生日送花祝福语怎么写？</a></h4>
								<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;闺蜜生日送花祝福语可以从回忆里写起，回忆生活的点滴，那些欢乐时光。了解闺蜜心里最想要的东西，把祝福写到祝福语里，把心中想说的话都写出来，便已是最好的祝福语。</p>
							</div>
							<div class="article">
								<h4><a href="#">给恋人：你是我年少时的欢喜，是我眼中的星空</a></h4>
								<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;能和同一个从初恋到结婚。一直是一件幸福浪漫的事情。妻子是年少时的青梅，是我年少时的欢喜，我愿意给她整片银河，让星空为她璀璨。</p>
							</div>
						</div>
					</div>
					<hr />
					<div style="height: 1700px;">
						<header style="height: 20px;">
							<h3 style="margin-left: 20px;margin-top: 20px;color: orange;">分类推荐</h3>
						</header>
						<div>
							<div class="classify">
								<div id="p2">
									<p>&nbsp;送礼</p><label id="label1">更多&raquo;</label>
								</div>
								<div id="p3">
									<p><a href="#">最近要买礼物的男生速点！一大波新品已就位~</a></p>
									<p><a href="#">父亲六十大寿适合送什么花？</a></p>
									<p><a href="#">摩羯座喜欢你的内心活动？摩羯座女生喜欢什么礼物？</a></p>
									<p><a href="#">最完整的巨蟹座性格分析及星座配对！</a></p>
									<p><a href="#">男朋友做过的哪件事情让你认定就是他了？</a></p>
									<p><a href="#">给领导和同事送礼有哪些误区？送礼需要注意哪些细节？</a></p>
									<p><a href="#">祝老婆生日快乐的祝福怎么说？老婆生日祝福精选！</a></p>
								</div>
							</div>
							<div class="classify">
								<div id="p2">
									<p>&nbsp;生日送花</p><label id="label2">更多&raquo;</label>
								</div>
								<div id="p3">
									<p><a href="#">忘记老婆生日怎么办？如何选用生日鲜花？</a></p>
									<p><a href="#">你知道吗？其实生日送花也有许多讲究</a></p>
									<p><a href="#">生日送花送不同的人分别送什么花？</a></p>
									<p><a href="#">女朋友生日送永生花有没有推荐？</a></p>
									<p><a href="#">未来婆婆生日送什么花？</a></p>
									<p><a href="#">18岁生日最期待的礼物排行榜</a></p>
									<p><a href="#">不同年龄生日都有不同的守护花，你的生日适合哪种花</a></p>
								</div>
							</div>
							<div class="classify">
								<div id="p2">
									<p>&nbsp;送花艺术</p><label id="label2">更多&raquo;</label>
								</div>
								<div id="p3">
									<p><a href="#">怎么对应星座送花？</a></p>
									<p><a href="#">为什么越来越多的年轻人喜欢过儿童节？</a></p>
									<p><a href="#">在青岛送花请问哪里有送货上门的，有推荐的吗？</a></p>
									<p><a href="#">送花给女生有什么讲究？</a></p>
									<p><a href="#">支招十二星座送花攻略</a></p>
									<p><a href="#">巨蟹座性格分析及星座配对！</a></p>
									<p><a href="#">永生花是什么？永生花是真花吗？它为什么叫永生花？</a></p>
								</div>
							</div>
							<div class="classify">
								<div id="p2">
									<p>&nbsp;鲜花常识</p><label id="label2">更多&raquo;</label>
								</div>
								<div id="p3">
									<p><a href="#">黄玫瑰和香槟玫瑰一样吗？两者有何不同？</a></p>
									<p><a href="#">线状，块状，散状...不同形态的花材插花时运用于哪些地方？</a></p>
									<p><a href="#">刷新你对菊花的认识！</a></p>
									<p><a href="#">对不起，我应该早点告诉你</a></p>
									<p><a href="#">2021，为12星座开运的12种花</a></p>
									<p><a href="#">戴安娜粉玫瑰和粉佳人玫瑰有什么区别？怎么区分戴安娜粉玫瑰和粉佳人？</a></p>
									<p><a href="#">婚礼十大必备花卉</a></p>
								</div>
							</div>
							<div class="classify">
								<div id="p2">
									<p>&nbsp;鲜花生活</p><label id="label2">更多&raquo;</label>
								</div>
								<div id="p3">
									<p><a href="#">送花要注意什么？如何给老人，爱人，朋友送花？</a></p>
									<p><a href="#">盘点那些超级受欢迎的鲜花，有你喜欢的吗？</a></p>
									<p><a href="#">家里有孕妇，这些花千万不要养！</a></p>
									<p><a href="#">新娘手捧花的由来是什么？手捧花有什么传说？</a></p>
									<p><a href="#">「轻奢」的生活，一点都不昂贵</a></p>
									<p><a href="#">你见过秋色绣球的美吗？秋色绣球如何做干花？</a></p>
									<p><a href="#">雾霾天，清除污染的最佳十大室内植物</a></p>
								</div>
							</div>
							<div class="classify">
								<div id="p2">
									<p>&nbsp;花语</p><label id="label1">更多&raquo;</label>
								</div>
								<div id="p3">
									<p><a href="#">满天星的传说是什么？满天星为什么是配角？</a></p>
									<p><a href="#">白玫瑰花语，送白玫瑰代表什么意思？</a></p>
									<p><a href="#">薰衣草花语是什么？</a></p>
									<p><a href="#">永生花的花语是什么？送永生花有什么寓意！</a></p>
									<p><a href="#">多头康乃馨的花语是什么？</a></p>
									<p><a href="#">勿忘我花语</a></p>
									<p><a href="#">百合花语，百合花怎么养？</a></p>
								</div>
							</div>
							<div class="classify">
								<div id="p2">
									<p>&nbsp;花卉花艺</p><label id="label2">更多&raquo;</label>
								</div>
								<div id="p3">
									<p><a href="#">520脱单指南~简单粗暴的脱单最令人心动啦~</a></p>
									<p><a href="#">花艺包装的色彩要怎么搭配？花艺包装的色彩搭配方案</a></p>
									<p><a href="#">寓意延年益寿的年宵花有哪些？</a></p>
									<p><a href="#">森林系蕨类植物的婚礼装饰</a></p>
									<p><a href="#">关于结婚的捧花、胸花、蜜月，有哪些我们不知道的结婚冷知识？</a></p>
									<p><a href="#">学习花艺十大误区，你中了几条？</a></p>
									<p><a href="#">插花要怎么弄才具有独一无二的美？</a></p>
								</div>
							</div>
							<div class="classify">
								<div id="p2">
									<p>&nbsp;祝福语大全</p><label id="label3">更多&raquo;</label>
								</div>
								<div id="p3">
									<p><a href="#">2020搞笑春节拜年祝福语</a></p>
									<p><a href="#">2021给恋人给朋友给长辈祝福语精选</a></p>
									<p><a href="#">重阳节送花祝福语精选</a></p>
									<p><a href="#">2021七夕贺卡留言精选</a></p>
									<p><a href="#">情人节祝福语（一）</a></p>
									<p><a href="#">一年一度的父亲节又快到了，有什么想对爸爸说的吗？</a></p>
									<p><a href="#">经典生日祝福语</a></p>
								</div>
							</div>
							<div class="classify">
								<div id="p2">
									<p>&nbsp;送朋友生日礼物</p><label id="label4">更多&raquo;</label>
								</div>
								<div id="p3">
									<p><a href="#">闺蜜生日，这些礼物给她物质和精神上的祝福！</a></p>
									<p><a href="#">室友过生日,送什么礼物能给她带去惊喜？</a></p>
									<p><a href="#">闺蜜生日，还在为送什么礼物发愁？看看这些准能帮到你</a></p>
									<p><a href="#">闺蜜生日，送这些生日礼物给她，给她带去幸运</a></p>
									<p><a href="#">弟弟生日，兄弟情深庆祝生日送他这些礼物</a></p>
									<p><a href="#">哥哥生日，送这些礼物更暖心！</a></p>
									<p><a href="#">给女性朋友送生日礼物，这些礼物满足你的需求</a></p>
								</div>
							</div>
							<div class="classify">
								<div id="p2">
									<p>&nbsp;送女朋友生日礼物</p><label id="label5">更多&raquo;</label>
								</div>
								<div id="p3">
									<p><a href="#">祝老婆生日快乐的祝福怎么说？老婆生日祝福精选！</a></p>
									<p><a href="#">双鱼座女神的性格特质，给双鱼座女孩子如何送礼？</a></p>
									<p><a href="#">女朋友生日，怎么给她策划一场生日惊喜？</a></p>
									<p><a href="#">让人一眼就心动的生日好礼在哪里？</a></p>
									<p><a href="#">女友是摩羯座，过生日送她什么花好呢？</a></p>
									<p><a href="#">女朋友过生日送什么礼物好？女友生日送花合适吗？</a></p>
									<p><a href="#">给女朋友过生日，可以准备什么礼物？</a></p>
								</div>
							</div>
							<div class="classify">
								<div id="p2">
									<p>&nbsp;送礼艺术</p><label id="label2">更多&raquo;</label>
								</div>
								<div id="p3">
									<p><a href="#">最近要买礼物的男生速点！一大波新品已就位~</a></p>
									<p><a href="#">挑什么礼物送给男性朋友？</a></p>
									<p><a href="#">释放洪荒之力，教你如何拿下处女座MM</a></p>
									<p><a href="#">最全送礼禁忌整理！</a></p>
									<p><a href="#">教你如何在结婚纪念日时，为爱人挑选礼物？</a></p>
									<p><a href="#">礼赠艺术</a></p>
									<p><a href="#">如今送礼送什么?</a></p>
								</div>
							</div>
							<div class="classify">
								<div id="p2">
									<p>&nbsp;感动瞬间</p><label id="label2">更多&raquo;</label>
								</div>
								<div id="p3">
									<p><a href="#">8年送花99束，神一样的花礼网客户</a></p>
									<p><a href="#">超感动 | 花礼网用户真情告白故事</a></p>
									<p><a href="#">一起抵达梦的彼岸</a></p>
									<p><a href="#">我愿做你的召唤兽</a></p>
									<p><a href="#">女人爱花，男人爱酒</a></p>
									<p><a href="#">小女人的“幸福”</a></p>
									<p><a href="#">不能让真爱“埋没掉”</a></p>
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
