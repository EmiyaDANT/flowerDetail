<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Flowershoppingsecurity.aspx.cs" Inherits="flowerDetail.Flowershoppingsecurity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/Flowershoppingsecurity.css" rel="stylesheet" type="text/css"/>
    <script src="js/JavaScript.js"></script>
    <script src="js/dianjidonghua.js"></script>
    <script>
        $(function () {
            $(".img").hover(function () {
                var a= this.getAttribute("src").substring(0, this.getAttribute("src").indexOf(".")) + "(1).png";
                this.src = a;
                var b = a.substring(0, a.indexOf("(")) + "(2).png";
                var c = document.getElementsByClassName("kk")[0];
                c.src = b;
            }, function () {
                this.src = this.getAttribute("src").substring(0, this.getAttribute("src").indexOf("(")) + ".png";
            });
        })
    </script>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 200px;
            left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="first">
            <p>
                <b>&nbsp&nbsp&nbsp购物保障</b>
            </p>
        </div>

        <div id="second">
            <div class="label">
                <div class="pdiv">
                    <asp:Image ID="Image1" CssClass="img" runat="server" Width="100%" Height="100%" ImageUrl="~/img/Shoppingsecurity/band.png"/>
                </div>
                <div class="ldiv">
                    <p style="text-align:center;">
                        <span>
                            16年品牌
                        </span>
                    </p>
                </div>
            </div>
            <div class="label">
                <div class="pdiv">
                    <asp:Image ID="Image2" CssClass="img" runat="server" Width="100%" Height="100%" ImageUrl="~/img/Shoppingsecurity/获奖.png"/>
                </div>
                <div class="ldiv">
                    <p style="text-align:center;">
                        <span>
                            销量领先
                        </span>
                    </p>
                </div>
            </div>
            <div class="label">
                <div class="pdiv">
                    <asp:Image ID="Image3" CssClass="img" runat="server" Width="100%" Height="100%" ImageUrl="~/img/Shoppingsecurity/客户.png"/>
                </div>
                <div class="ldiv">
                    <p style="text-align:center;">
                        <span>
                            百万客户信赖
                        </span>
                    </p>
                </div>
            </div>
            <div class="label">
                <div class="pdiv">
                    <asp:Image ID="Image4" CssClass="img" runat="server" Width="100%" Height="100%" ImageUrl="~/img/Shoppingsecurity/照相机2.png"/>
                </div>
                <div class="ldiv">
                    <p style="text-align:center;">
                        <span>
                            订单实拍
                        </span>
                    </p>
                </div>
            </div>
            <div class="label">
                <div class="pdiv">
                    <asp:Image ID="Image5" CssClass="img" runat="server" Width="100%" Height="100%" ImageUrl="~/img/Shoppingsecurity/时间.png"/>
                </div>
                <div class="ldiv">
                    <p style="text-align:center;">
                        <span>
                            3小时配送
                        </span>
                    </p>
                </div>
            </div>
            <div class="label">
                <div class="pdiv">
                    <asp:Image ID="Image6" CssClass="img" runat="server" Width="100%" Height="100%" ImageUrl="~/img/Shoppingsecurity/退款.png"/>
                </div>
                <div class="ldiv">
                    <p style="text-align:center;">
                        <span>
                            200%退赔承诺
                        </span>
                    </p>
                </div>
            </div>
        </div>

        <div id="third">
            <asp:Image ID="Image7" CssClass="kk" runat="server" Width="100%" Height="360px" ImageUrl="~/img/Shoppingsecurity/获奖(2).png"/>
        </div>
    </form>
</body>
</html>
