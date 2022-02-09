<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="flowerDetail.aspx.cs" Inherits="flowerDetail.flowerDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>花朵详情</title>
    <link href="css/Detail.css" rel="stylesheet" type="text/css"/>
    <script src="js/dianjidonghua.js"></script>
    <style type="text/css">
    </style>
    <script src="js/JavaScript.js"></script>
    <script>
        $(function () {
            $("#picdiv").hover(function () {
                $("#picdiv").css("borderColor", "orange");
                $("#picdiv").css("border", "1px");
            }, function () {
                $("#picdiv").css("borderColor", "orange");
                $("#picdiv").css("border", "0px");
            });
        })

        $(function () {
            $(".t").hover(function () {
                $(".d").slideDown();
            }, function () {
                $(".d").slideUp();
            })
        })


        function border(m) {
            m.style.border = "solid 1px";
            m.style.borderColor = "red";
            var pk = document.getElementById("Image1");
            var dg = m.getElementsByClassName("imgborder")[0];
            pk.src = dg.getAttribute("src");
        }

        function borderxs(m) {
            m.style.border = "solid 1px";
            m.style.borderColor = "white";
        }

        function oneclick() {
            var iw = document.getElementById("xxk");
            var furl = location.search;
            var kv = furl.substring(furl.indexOf("?")+1).split('=');
            var id = kv[1];
            iw.src = "introduction.aspx?" + "id=" + id;
        }

        function twoclick() {
            document.getElementById("xxk").src = "comment1.aspx";
            this.style.border = "solid 1px";
            this.style.borderColor = "orange";
        }

        function threeclick() {

        }

        function fourclick() {
            document.getElementById("xxk").src = "Flowershoppingsecurity.aspx";
            this.style.border="solid 1px";
            this.style.borderColor = "orange";
        }

        window.onload = function () {
            var iw = document.getElementById("xxk");
            var furl = location.search;
            var kv = furl.substring(furl.indexOf("?")+1).split('=');
            var id = kv[1];
            iw.src = "introduction.aspx" + "?id="+id;
        }
    </script>


</head>
<body>
    <form id="form1" runat="server">
        <%--创建网页主题div--%>
        <div id="bodyself">
            <%--顶部div--%>
            <div id="menu">
                <div id="menuleft">
                    <img src="img/logo1.png" width="220" height="60"/>
                </div>
                <div id="menuright">
                    <div>
                        <a href="Main2.aspx">
                        首页
					     </a>
                    </div>
				    <div>
                        <a href="javascript:history.go(0)">商品详情</a>
				    </div>
				    <div>
                        <a href="sessioncat2.aspx">购物车</a>
				    </div>
				    <div>
                        <a href="javascript:history.go(0)">联系我们</a>
				    </div>
				    <div>
                        <a href="javascript:history.go(0)">登录</a>
                        <div id="YHnameK" style="background-color:coral;position:relative;top:-60px;display:none" runat="server">
							<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"></asp:LinkButton>
						</div>
				    </div>
                </div>
            </div>

            <%--产品价格及其简单介绍与购买--%>
            <div id="productdetail">
                <%--居中框--%>
                <div class="detail">
                    <%--商品图片展示--%>
                    <div id="pdpic">
                        <asp:Image ID="Image1" runat="server" Width="450px" Height="450px"/>
                        <div id="swichpic">
                            <asp:DataList ID="DataList1" runat="server" Height="63px" Width="112px" RepeatDirection="Horizontal">
                                <ItemTemplate>
                                    <div id="picdiv" onmouseover="border(this)" style="border-color:white;border-radius:5px" onmouseout="borderxs(this)">
                                    <asp:Image ID="imgpic" CssClass=" imgborder" runat="server" ImageUrl='<%# Eval("pic") %>' Height="105px" Width="105px"/>
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>
                    
                    <%--商品购买框--%>
                    <div id="pdpurchase" class="auto-style8">
                     <asp:DataList ID="DataList2" runat="server" CssClass="auto-style7">
                     <ItemTemplate>
                        <div id="title">
                            <p>
                                <span style="font-size:25px;font-weight:bolder">
                                <asp:Label ID="lblflowername" runat="server" Text='<%# Eval("flower_name") %>'></asp:Label>
                                </span>
                            </p>
                            <p>
                                <span style="font-size:15px;font-weight:bolder;color:orangered;">
                                [<asp:Label ID="lblfloweramount" runat="server" Text='<%# Eval("flower_num") %>'></asp:Label>]
                                </span>
                            <p>
                        </div>

                       
                        <div id="titlebottom">
                            <table id="tbdetail"> 
                            <tr id="price" style="background-color:whitesmoke;">
                                <td class="td1" style="height: 62px;text-align:center;border-radius:5px;font-size:31px;font-weight:bold">
                                    <asp:Label ID="Label1" runat="server" Text="售价"></asp:Label>
                                </td>
                                <td class="td2" style="height: 62px;border-radius:5px;">
                                    <p>
                                        <span style="font-size:30px;color:orangered;font-weight:bolder;margin-left:20px;">
                                            ￥<asp:Label ID="lblNowPrice" runat="server" Text='<%# Eval("flower_Now_price") %>'></asp:Label>
                                        </span>
                                        <span style="margin-left:10px;">
                                            <asp:Label ID="lblmkprice" runat="server" Text='<%# Eval("flower_mkprice") %>'></asp:Label>
                                        </span>
                                    </p>
                                    <p style="margin-left:20px;">
                                        <span>
                                            <asp:Label ID="Label9" runat="server" Text="手机专享价"></asp:Label>
                                        </span>
                                        <span style="margin-left:10px">
                                            
                                        </span>
                                        <span  style="margin-left:10px">
                                            <asp:Label ID="Label11" runat="server" Text="去App购买"></asp:Label>
                                        </span>
                                        <span  style="margin-left:10px">
                                            <asp:Label ID="Label12" runat="server" Text="去微信购买"></asp:Label>
                                        </span>
                                    </p>
                                </td>
                            </tr>
                            <tr id="huayu">
                                <td class="td1" style="text-align:center;">
                                    <asp:Label ID="Label2" runat="server" Text="花语"></asp:Label>
                                </td>
                                <td class="td2" style="margin-left:20px;">
                                    <asp:Label ID="lblHuaYu" runat="server" Text='<%# Eval("flower_HuaYu") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr id="material">
                                <td class="td1" style="text-align:center;">
                                    <asp:Label ID="Label3" runat="server" Text="材料"></asp:Label>
                                </td>
                                <td class="td2" style="margin-left:20px;">
                                    <asp:Label ID="lblMaterialScience" runat="server" Text='<%# Eval("flower_MaterialScience") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr id="package">
                                <td class="td1" style="text-align:center;">
                                    <asp:Label ID="Label4" runat="server" Text="包装"></asp:Label>
                                </td>
                                <td class="td2" style="margin-left:20px;">
                                    <asp:Label ID="lblpacking" runat="server" Text='<%# Eval("flower_packing") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr id="delivery_instructions">
                                <td class="td1" style="text-align:center;">
                                    <asp:Label ID="Label5" runat="server" Text="配送说明"></asp:Label>
                                </td>
                                <td class="td2" style="margin-left:20px;">
                                    <asp:Label ID="Label16" runat="server" Text="全国配送"></asp:Label>
                                </td>
                            </tr>
                            <tr id="deliveryTo">
                                <td class="td1" style="text-align:center;">
                                    <asp:Label ID="Label6" runat="server" Text="配送至"></asp:Label>
                                </td>
                                <td class="td2" style="margin-left:20px;">
                                    <div id="t" class="t"></div>
                                    <div id="d" class="d"></div>
                                </td>
                            </tr>
                            <tr id="purchase">
                                <td colspan="2" id="tds" class="auto-style1">
                                    <asp:Button ID="Button1" OnClientClick="tt()" CssClass="button" runat="server" OnClick="Button1_Click" Height="49px" Text="加入购物车" Width="305px" style="margin-left:95px;position:relative;top:0px;left:150px"/>
                                </td>
                            </tr>
                        </table>
                        </div>
                    </ItemTemplate>
                    </asp:DataList>
                    </div>
                    
                </div>
            </div>

            <%--详情以及其他商品推荐--%>
            <div id="mainbody">
                <%--商品推荐--%>
                <div id="pdrecommand" style="position:relative;top:50px;background-color:#E9ECF0;border-radius:10px">
                    <div id="aside-hd">
                        <span style="line-height:50px;margin-left:10px;font-weight:bolder;">
                            热销推荐
                        </span>
                    </div>
                    <div class="recommandpic">
                        <asp:Image ID="Image6" runat="server" Width="160px" Height="160px" ImageUrl="img/Constantcommitment/1.jpg"/>
                        <p>
                            <asp:Label ID="Label17" runat="server" Text="Label">
                                不变的承诺
                            </asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="Label18" runat="server" Text="Label">
                                ￥639
                            </asp:Label>
                        </p>
                    </div>
                    <div class="recommandpic">
                        <asp:Image ID="Image7" runat="server" Width="160px" Height="160px" ImageUrl="img/IWishItWasYou/introduce/detail1.jpg"/>
                        <p>
                            <asp:Label ID="Label19" runat="server" Text="Label">
                                诞越是你
                            </asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="Label20" runat="server" Text="Label">
                                ￥278
                            </asp:Label>
                        </p>
                    </div>
                    <div class="recommandpic">
                        <asp:Image ID="Image8" runat="server" Width="160px" Height="160px" ImageUrl="img\MagneticSuspension1\suggestion1.jpg"/>
                        <p>
                            <asp:Label ID="Label21" runat="server" Text="Label">
                                磁悬浮永生花灯
                            </asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="Label22" runat="server" Text="Label">
                                ￥399
                            </asp:Label>
                        </p>
                    </div>
                    <div class="recommandpic">
                        <asp:Image ID="Image9" runat="server" Width="160px" Height="160px" ImageUrl="img\FortuneCat\suggestion1.jpg"/>
                        <p>
                            <asp:Label ID="Label23" runat="server" Text="Label">
                                招财猫永生花水晶球
                            </asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="Label24" runat="server" Text="Label">
                                ￥168
                            </asp:Label>
                        </p>
                    </div>
                    <div class="recommandpic">
                        <asp:Image ID="Image10" runat="server" Width="160px" Height="160px" ImageUrl="img\LuoShenInTheheart\suggestion1.jpg"/>
                        <p>
                            <asp:Label ID="Label25" runat="server" Text="Label">
                                心中洛神
                            </asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="Label26" runat="server" Text="Label">
                                ￥428
                            </asp:Label>
                        </p>
                    </div>
                    <div class="recommandpic">
                        <asp:Image ID="Image11" runat="server" Width="160px" Height="160px" ImageUrl="img\ILoveYouSoMuch\suggestion1.jpg"/>
                        <p>
                            <asp:Label ID="Label27" runat="server" Text="Label">
                                我如此爱你
                            </asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="Label28" runat="server" Text="Label">
                                ￥1190
                            </asp:Label>
                        </p>
                    </div>
                </div>

                <%--商品介绍，放各种图片的--%>
                <div id="pdintroduction">
                    <div class="auto-style5" style="position:relative;left:150px">
                       <div onclick="oneclick(this)">
                           <span style="line-height:73px;font-weight:bolder;">
                               <center>商品详情</center>
                           </span>
                       </div>
                       <div onclick="twoclick(this)">
                           <span style="line-height:73px;font-weight:bolder;">
                               <center>
                               用户评价(<asp:Label ID="Label29" runat="server" Text="Label"></asp:Label>)
                               </center>
                           </span>
                       </div>
                       <div onclick="">
                           <center>
                           <span style="line-height:73px;font-weight:bolder;">
                               常见问题
                           </span>
                           </center>
                       </div>
                       <div onclick="fourclick(this)">
                           <center>
                           <span style="line-height:73px;font-weight:bolder;">
                               购物保障
                           </span>
                           </center>
                       </div>
                    </div>
                    <div class="auto-style6" style="position:relative;left:150px">
                        <iframe width="980" height="3950" id="xxk" style="background-color:white;border:none;" scrolling="no" class="auto-style9">

                        </iframe>
                    </div>
                </div>
            </div>

            <%--底部版权....--%>
            <div id="bottom">
                
            </div>
        </div>
    </form>
</body>
</html>
