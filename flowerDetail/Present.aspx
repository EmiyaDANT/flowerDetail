<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Present.aspx.cs" Inherits="Present.Present" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        #Mian{
            width:100%;
            height:1000px;
            text-align:center;
        }
        #top{
            width:100%;
            height:50px;
             background-color:silver;
        }
        #top div:hover{
          background-color:white;
        }
        #top div{
            float:left;
            width:10%;
            height:50px;
            text-align:center;
            line-height:50px;
        }
        #top #t1 {
            width:280px;
            position:absolute;
            left:10px;
             font-size:15px;
            font-weight:600;
        }
        #top #t2{
             position:absolute;
            left:360px;
            font-size:15px;
            font-weight:600;
        }
        #top #t3{
            position:absolute;
            right:10px;
            font-size:15px;
            font-weight:600;
        }
        #top #t4{
             position:absolute;
            right:300px;
              font-size:15px;
                font-weight:600;
        }
        #top #t5{
             position:absolute;
            right:450px;
              font-size:15px;
                font-weight:600;
        }
        #Seach{
            width:100%;
            height:160px;
        }
        #Seach #logo img{
            width:400px;
            height:160px;
            position:absolute;
            left:150px;
            float:left;
        }
        #Seach #Seachbar{
            float:left;
            width:600px;
            height:160px;
            line-height:160px;
            position:absolute;
            left:620px;
            top: 68px;
             font-size:23px;
             font-weight:600;
        }
         #Seach #tel{
             float:left;
             width:500px;
             height:160px;
             line-height:160px;
             position:absolute;
             right:150px;
             font-size:23px;
             font-weight:600;
            top: 67px;
        }
         #Navigationbar{
             width:100%;
             height:80px;
             background-color:coral;
         }
         #Navigationbar div{
             float:left;
             width:100px;
             margin-left:160px;
             line-height:80px;
              font-size:23px;
             font-weight:600;
             color:black;
         }
         #Navigationbar div:hover{
          background-color:white;
        }
         #img{
             width:1540px;
             height:450px;
             position: relative;
		     margin: auto;
             border:1px solid;
         }
         #img #image{
             width:1540px;
             height:450px;
         }
         #img #left{
				position: absolute;
				left: 10px;
				top:45%;
                width:50px;
                height:100px;
			}
         #img #right{
				position: absolute;
				right: 10px;
				top: 45%;
                 width:50px;
                height:100px;
			}
         #img #rad{
             margin-left:660px;
             position: absolute;
             bottom:10px;
         }
         #Goods{
             width:1540px;
             height:1200px;
			 margin: auto;
         }
         #Goods .imggoods{
             width:360px;
             height:390px;
             float:left;
             margin-left:20px;
         }
         #Goods .txtgoods{
             width:360px;
             height:200px;
             float:left;
             margin-left:20px;
         }
         #Goods .txtgoods img{
              width:360px;
             height:200px;
         }
         .page-wrapper{font-family:tahoma,arial,'Hiragino Sans GB','\5FAE\8F6F\96C5\9ED1',sans-serif;margin-top:30px;margin-bottom:40px;padding:4px 0;border-top:1px solid #d9d9d9;border-bottom:1px solid #d9d9d9}
         .page-wrapper:before,.page-wrapper:after{content:" ";display:table}
         .page-wrapper:after{clear:both}
         .page-wrapper .total-page{line-height:34px;float:left;margin:20px 0;color:#999999}
         .page-wrapper .pagination{float:right}
         .pagination{display:inline-block;padding-left:0;margin:20px 0;border-radius:4px}
         .pagination > li{display:inline}
         .pagination > li > a,.pagination > li > span{position:relative;float:left;padding:6px 12px;line-height:1.42857143;text-decoration:none;color:#737373;background-color:#ffffff;border:1px solid #dddddd;margin-left:-1px}
         .pagination > li:first-child > a,.pagination > li:first-child > span{margin-left:0;border-bottom-left-radius:4px;border-top-left-radius:4px}
         .pagination > li:last-child > a,.pagination > li:last-child > span{border-bottom-right-radius:4px;border-top-right-radius:4px}
         .pagination > li > a:hover,.pagination > li > span:hover,.pagination > li > a:focus,.pagination > li > span:focus{color:#ff6a00;background-color:#d9d9d9;border-color:#dddddd}
         .pagination > .active > a,.pagination > .active > span,.pagination > .active > a:hover,.pagination > .active > span:hover,.pagination > .active > a:focus,.pagination > .active > span:focus{z-index:2;color:#ffffff;background-color:#ff6a00;border-color:#ff6a00;cursor:default}
         .pagination > .disabled > span,.pagination > .disabled > span:hover,.pagination > .disabled > span:focus,.pagination > .disabled > a,.pagination > .disabled > a:hover,.pagination > .disabled > a:focus{color:#999999;background-color:#ffffff;border-color:#dddddd;cursor:not-allowed}
         .pagination-lg > li > a,.pagination-lg > li > span{padding:10px 16px;font-size:18px}
         .pagination-lg > li:first-child > a,.pagination-lg > li:first-child > span{border-bottom-left-radius:6px;border-top-left-radius:6px}
         .pagination-lg > li:last-child > a,.pagination-lg > li:last-child > span{border-bottom-right-radius:6px;border-top-right-radius:6px}
         .pagination-sm > li > a,.pagination-sm > li > span{padding:5px 10px;font-size:12px}
         .pagination-sm > li:first-child > a,.pagination-sm > li:first-child > span{border-bottom-left-radius:2px;border-top-left-radius:2px}
         .pagination-sm > li:last-child > a,.pagination-sm > li:last-child > span{border-bottom-right-radius:2px;border-top-right-radius:2px}
         .pager{padding-left:0;margin:20px 0;list-style:none;text-align:center}
         .pager li{display:inline}
         .pager li > a,.pager li > span{display:inline-block;padding:5px 14px;background-color:#ffffff;border:1px solid #dddddd;border-radius:15px}
         .pager li > a:hover,.pager li > a:focus{text-decoration:none;background-color:#d9d9d9}
         .pager .next > a,.pager .next > span{float:right}
         .pager .previous > a,.pager .previous > span{float:left}
         .pager .disabled > a,.pager .disabled > a:hover,.pager .disabled > a:focus,.pager .disabled > span{color:#999999;background-color:#ffffff;cursor:not-allowed}
         .label{display:inline;padding:.2em .6em .3em;font-size:75%;font-weight:bold;line-height:1;color:#ffffff;text-align:center;white-space:nowrap;vertical-align:baseline;border-radius:.25em}
         a.label:hover,a.label:focus{color:#ffffff;text-decoration:none;cursor:pointer}
         .label:empty{display:none}
  .knowledge {
    border-radius: 0;
    border-color: #ebebeb;
    -webkit-box-shadow: none;
    box-shadow: none;
  }
  .knowledge > .panel-heading {
    color: #737373;
    background-color: #ebebeb;
    border-color: #ebebeb;
  }
  .knowledge > .panel-heading + .panel-collapse > .panel-body {
    border-top-color: #ebebeb;
  }
  .knowledge > .panel-heading .badge {
    color: #ebebeb;
    background-color: #737373;
  }
  .knowledge > .panel-footer + .panel-collapse > .panel-body {
    border-bottom-color: #ebebeb;
  }
  .knowledge .panel-heading {
    padding: 15px 20px;
    border-top-right-radius: 0;
    border-top-left-radius: 0;
  }
  .knowledge .panel-title {
    font-family: tahoma, arial, 'Hiragino Sans GB', '\5FAE\8F6F\96C5\9ED1', sans-serif;
    font-size: 14px;
    color: #737373;
  }
  .knowledge ul {
    float: left;
    width: 33%;
    margin-bottom: 0;
    border-left: 1px solid #ebebeb;
  }
  .knowledge ul:first-child {
    border-left: none;
  }
  .knowledge ul li {
    font-size: 12px;
    line-height: 30px;
  }
  .panel-body {
    padding: 15px;
}
* {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}
用户代理样式表
div {
    display: block;
}
body {
    font-family: tahoma,arial,'Hiragino Sans GB','\5b8b\4f53',sans-serif;
    font-size: 14px;
    color: #737373;
    background-color: #ffffff;
}
html {
    font-size: 10px;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
}
html {
    font-family: sans-serif;
    -ms-text-size-adjust: 100%;
    -webkit-text-size-adjust: 100%;
}
.clearfix:before, .clearfix:after, .dl-horizontal dd:before, .dl-horizontal dd:after, .container:before, .container:after, .container-fluid:before, .container-fluid:after, .row:before, .row:after, .form-horizontal .form-group:before, .form-horizontal .form-group:after, .btn-toolbar:before, .btn-toolbar:after, .btn-group-vertical > .btn-group:before, .btn-group-vertical > .btn-group:after, .nav:before, .nav:after, .navbar:before, .navbar:after, .navbar-header:before, .navbar-header:after, .navbar-collapse:before, .navbar-collapse:after, .pager:before, .pager:after, .panel-body:before, .panel-body:after, .modal-footer:before, .modal-footer:after {
    content: " ";
    display: table;
}
*:before, *:after {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}
.clearfix:after, .dl-horizontal dd:after, .container:after, .container-fluid:after, .row:after, .form-horizontal .form-group:after, .btn-toolbar:after, .btn-group-vertical > .btn-group:after, .nav:after, .navbar:after, .navbar-header:after, .navbar-collapse:after, .pager:after, .panel-body:after, .modal-footer:after {
    clear: both;
}
.clearfix:before, .clearfix:after, .dl-horizontal dd:before, .dl-horizontal dd:after, .container:before, .container:after, .container-fluid:before, .container-fluid:after, .row:before, .row:after, .form-horizontal .form-group:before, .form-horizontal .form-group:after, .btn-toolbar:before, .btn-toolbar:after, .btn-group-vertical > .btn-group:before, .btn-group-vertical > .btn-group:after, .nav:before, .nav:after, .navbar:before, .navbar:after, .navbar-header:before, .navbar-header:after, .navbar-collapse:before, .navbar-collapse:after, .pager:before, .pager:after, .panel-body:before, .panel-body:after, .modal-footer:before, .modal-footer:after {
    content: " ";
    display: table;
}
*:before, *:after {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}
 
.CB{color: coral;font-size: 16px;margin-left: 103px;}
.CE{color: coral;font-size: 13px;float: left;margin-left: 95px;}
.CF{font-size: 12px;float: left;}
.CG{font-size: 13PX;margin-left: 115px;}
.CI{font-size: 13PX;margin-left: 30PX;float: left;}
.CL{color: coral;font-size: 13px;float: left;margin-left: 133px;}
.CJ{color: coral;font-size: 16px;margin-left: 175px;}
.CH{font-size: 13PX;margin-left: 140PX;float: left;}
.CK{color: coral;font-size: 13px;float: left;margin-left: 143px;}
#y{width: 1540px;height: 100px;margin:auto;}
#y p{text-align: center;font-size: 13px;}
#z{width: 1540px;height: 85px;text-align: center;margin:auto;}
#z p{margin-top: 15px;}
    </style>
    <script>
        var imgnum = 1;
        function alernative(num) {
            //获取图片框
            document.getElementById('image').src = "img/image/img" + num + ".jpg";
        }
        function checkorder(t) {
            if (t == 'l') {
                if (imgnum == 1) {
                    imgnum = 2;
                }
                imgnum--;
            } else {
                if (imgnum == 2) {
                    imgnum = 0;
                }
                imgnum++;
            }
            alernative(imgnum);
        }
        window.onload = function () {
            //setTimeout("checkorder('r')",1000); 延迟调用 在规定时间内有效，只能调用一次
            setInterval("checkorder('r')", 1000);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="Mian">
            <div id="top">
                <div id="t1">
                   星花网
                </div>
                <div id="t2">星花网</div>
                <div id="t3">登录</div>
                <div id="t4">注册</div>
                <div id="t5">注册</div>
            </div>
            <div id="Seach">
                <div id="logo">
                   <img src="img/image/logo1.png" style="width: 481px"/>
                </div>
                <div id="Seachbar">
                    搜索<input type="text" />
                </div>
                <div id="tel">
                    联系我们  &nbsp;&nbsp;&nbsp;电话：0731-5888888
                </div>
           </div>
            <div id="Navigationbar">
                <a style="cursor:pointer" href="Main2.aspx"><div>首页</div></a>
                <a style="cursor:pointer" href="xianflower.aspx"><div>鲜花</div></a>
                <a style="cursor:pointer" href="yongshenghua.aspx"><div>永生花</div></a>
                <a style="cursor:pointer" href="javascript:void(0)"><div>蛋糕</div></a>
                <a style="cursor:pointer" href="javascript:void(0)"><div>礼品</div></a>
                <a style="cursor:pointer" href="flowersays.aspx"><div>花语大全</div></a>
                <a style="cursor:pointer" href="javascript:void(0)"><div>礼品卡</div></a>
            </div>
            <div id="img">
                <div>
                    <img id="image" src="img/image/img1.jpg"/>
                </div>
                <div id="left">
                    <img src="img/image/左箭头.png" onclick="checkorder('l')"  />
                </div>
                <div id="right">
                    <img src="img/image/右箭头.png" onclick="checkorder('r')"  />
                </div>
                <div id="rad">
                    <input type="radio" id="rad1" name="name" onclick="alernative(1)" /><input type="radio" id="rad2" name="name" onclick="alernative(2)"  />
                </div>
            </div>
            <div id="Goods">
                <div class="imggoods">
                    <img src="img/image/i1.jpg" />
                </div>
                <div class="imggoods">
                     <img src="img/image/i2.jpg" />
                </div>
                <div class="imggoods">
                     <img src="img/image/i3.jpg" />
                </div>
                <div class="imggoods">
                     <img src="img/image/i4.jpg" />
                </div>
                <div class="txtgoods">
                    <img src="img/image/Q1.png" />
                </div>
                <div class="txtgoods">
                     <img src="img/image/Q9.png" />
                </div>
                <div class="txtgoods">
                     <img src="img/image/Q3.png" />
                </div>
                <div class="txtgoods">
                     <img src="img/image/Q4.png" />
                </div>
                <div class="imggoods">
                     <img src="img/image/i5.jpg" />
                </div>
                <div class="imggoods">
                     <img src="img/image/i6.jpg" />
                </div>
                <div class="imggoods">
                     <img src="img/image/i7.jpg" />
                </div>
                <div class="imggoods">
                     <img src="img/image/i8.jpg" />
                </div>
                <div class="txtgoods">
                     <img src="img/image/Q5.png" />
                </div>
                <div class="txtgoods">
                     <img src="img/image/Q6.png" />
                </div>
                <div class="txtgoods">
                     <img src="img/image/Q7.png" />
                </div>
                <div class="txtgoods">
                     <img src="img/image/Q8.png" />
                </div>
            </div>
             <div class="page-wrapper">
                <p class="total-page">1-3 / 共24件商品</p>
                <ul class="pagination">
                        <li class="disabled"><a href="#"><span class="glyphicon glyphicon-menu-left"></span> 上一页</a></li>
                                        
                            <li class="active"><a href="javascript:void(0)">1</a></li>
                            <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                                            <li><a href="#">下一页 <span class="glyphicon glyphicon-menu-right"></span></a></li>
                </ul>
            </div>
             <div class="panel panel-default knowledge">
        <div class="panel-heading">
            <h3 class="panel-title">特色礼品&amp;送礼常识</h3>
        </div>
        <div class="panel-body">
            <ul>
                <li><a href="/huayu/10917.html" target="_blank">毕业礼物送什么好？</a> </li>
                <li><a href="/huayu/12177.html" target="_blank">毕业了送同学什么最有纪念意义？</a> </li>
                <li><a href="/huayu/12205.html" target="_blank">送同学什么生日礼物好？</a> </li>
                <li><a href="/huayu/12029.html" target="_blank">特色礼物有哪些？</a> </li>
                <li><a href="/huayu/10949.html" target="_blank">送女孩子什么礼物好？泰国保鲜花推荐</a> </li>
            </ul>
            <ul>
                <li><a href="/huayu/11008.html" target="_blank">送国内爱人什么生日礼物好？</a> </li>
                <li><a href="/huayu/10772.html" target="_blank">送老婆什么生日礼物好？</a> </li>
                <li><a href="/huayu/10557.html" target="_blank">老婆生日送什么礼物好?</a> </li>
                <li><a href="/huayu/11197.html" target="_blank">结婚礼物推荐，结婚送什么礼物最好？</a> </li>
                <li><a href="/huayu/11850.html" target="_blank">情人节礼物送什么？</a> </li>
            </ul>
            <ul>
                <li><a href="/huayu/20060816173328.htm" target="_blank">不宜在公开场合赠送的礼物</a> </li>
                <li><a href="/huayu/8003.htm" target="_blank">如何给同辈者送的生日礼物？</a> </li>
                <li><a href="/huayu/8004.htm" target="_blank">懒人的节日礼物应急方案</a> </li>
                <li><a href="/huayu/8005.htm" target="_blank">结婚礼品推荐</a> </li>
                <li><a href="/huayu/8008.htm" target="_blank">赠送礼品小常识</a> </li>
            </ul>
        </div>
    </div>
            <div style="width: 1540px;height: 300px;">
            	<div style="float: left;width: 290px;height: 20px;margin-top: 10px;text-align: left;margin-left: 350px;">
            		<p style="color: coral;font-size: 16px;">为什么选择星花网</p>
            		<div>&nbsp;<img src="img/image/Q0.jpg" width="220px" height="50px"/></div>
            		<div><img src="img/image/Q2.png" width="220px" height="45px"/></div>
            	</div>	
            	<div style="float: left;width: 290px;height: 150px;margin-top: 10px;">
            		<p class="CB">花店——星花网</p>
            		<p class="CE">上亿花艺者共同打造的</p><p class="CF">"鲜花神器"</p>
            		<br/><p class="CE">60，000</p><p class="CF">多个鲜花种类</p>
            		<br/><p class="CE">600，000</p><p class="CF">个细分鲜花样式</p>
            		<br/><p class="CE">760，000，000</p><p class="CF">次花语下载</p>
            		<br/><p class="CE">38，000</p><p class="CF">家花店供应商</p>
            	</div>
            	<div style="float: left;width: 290px;height: 150px;margin-top:10px;">
            		<p style="color: coral;font-size: 16px;margin-left: 138px;">关于我们</p>
            		<p class="CG">关于星花网&nbsp;联系我们</p>
            		<p class="CG">隐私政策&nbsp;商标声明</p>
            		<p class="CG">服务协议</p>
            		<p class="CG">网络信息侵权通知指引</p>
            		<p class="CG">网站地图</p>
            		<p class="CL">加入星花网</p>
            	</div>
            	<div style="float: left;width: 290px;height: 150px;margin-top: 5px;">
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
            	<p style="color: coral;font-size: 16PX;"><strong>ASP.NET设计——The galaxy小组</strong></p><p><strong>成员:邓滨斌&nbsp;高圣&nbsp;胡威&nbsp;雷鑫&nbsp;谭子轩&nbsp;谢蓝宇</strong></p>
            </div>
        </div>
    </form>
</body>
</html>
