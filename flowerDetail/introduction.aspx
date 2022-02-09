<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="introduction.aspx.cs" Inherits="flowerDetail.introduction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="img/icon.ico" rel="icon" />
    <script src="js/dianjidonghua.js"></script>
    <style type="text/css">
        .productionCS{
            height: 109px;
        }

        body {
            width:100%;
        }

            body #div {
                width:100%;           
            }



            .productionCS #pdleft {
                width:17.5%;
                background-color:whitesmoke;
                line-height:109px;
                border-right:dotted 1px;
                height:109px;
                float:left;
            }

            .productionCS #pdright {
                width:80%;
                background-color:whitesmoke;
                line-height:22px;
                height:109px;
                float:left;
            }

                .productionCS #pdright div{
                    margin-left:50px;
                }

                .productionCS #pdright #flag{
                    margin-top:20px;
                }

                .productionCS #pdright .pdlabel {
                    color:gray;    
                }

            #dlpdintroimg {
                width:80%;
                margin:0 auto;
                height:100%;
                margin-top:50px
            }

                #dlpdintroimg #imgdiv {
                    width:100%;
                    height:100%;
                }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="div">
            <%--产品参数--%>
            <div class="productionCS">
                <div id="pdleft">   
                    <p>
                        <b>&nbsp&nbsp产品参数</b>
                    </p>
                </div>
                <div id="pdright">
                    <div id="flag">
                        <span class="pdlabel">编号</span>&nbsp<span class="pdtext"></span>
                    </div>
                    <div>
                        <span class="pdlabel">鲜花</span>&nbsp<span class="pdtext"></span>
                    </div>
                    <div>
                        <span class="pdlabel">附送</span>&nbsp<span class="pdtext">下单填写留言，即免费赠送精美贺卡！</span>
                    </div>
                </div>
            </div>

            <%--产品图片介绍--%>
            <asp:DataList ID="dlpdintroimg" runat="server">
                <ItemTemplate>
                    <div id="imgdiv">
                        <asp:Image ID="Image1" runat="server" Width="100%" Height="80%" ImageUrl='<%# Eval("pic1") %>'/>
                        <asp:Image ID="Image2" runat="server" width="100%" Height="20%" ImageUrl='<%# Eval("pic2") %>'/>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
