<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login1.aspx.cs" Inherits="后台.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="img/icon.ico" rel="icon" />
    <script src="js/dianjidonghua.js"></script>
    <script src="js/JavaScript.js"></script>
    <script>
        function cl() {
            $("#d2").slideToggle(1000);
        }
        function cs() {
            $("#d4").slideToggle(1000);
        }
        function cc() {
            $("#d7").slideToggle(1000);
        }
        function cf() {
            $("#d9").slideToggle(1000);
        }
        function dd() {
            $("#d11").slideToggle(1000);
        }
    </script>
    <style>
        body{
            
        }
        #main {
            color:white;
            width: 260px;
            height: 800px;
            margin-top: 10px;
            margin-left: 70px;
            background-color:black;
            border-radius: 15px;
            position: absolute;
            opacity: 0.7;
        }

        #d2, #d3, #d4, #d5, #d6, #d7, #d8, #d9, #d10, #d11 {
            cursor:pointer;
        }

        #d2 div, #d3 div, #d4 div, #d5 div, #d6 div, #d7 div, #d8 div, #d9 div, #d10 div, #d11 div{
            cursor:pointer;
        } 
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="tou" style="background-image:url('imgForDeg/backimg.png'); width:100%;height:100%;z-index:-99;position:relative; top: 9px; left: 6px;">
        <div id="main" >
            <div id="head">
                <img src="imgForDeg/autumn.png" width="90px" height="90px" style="margin-left:85px;border-radius:10px;margin-top:10px"  />
            </div>
            <div style="font-size:25px;text-align:center;top:10px">
                <asp:Label ID="Label2" runat="server" Text="admin"></asp:Label>
            </div>
            <%--菜单--%>
            <div style="font-size:18px;margin-left:10px">
                <asp:Label ID="Label3" runat="server" Text="菜单" ></asp:Label>
            </div>
            <div style="margin-top:30px;padding-left:50px;cursor:pointer" onclick="cl()">
                <img src="imgForDeg/电脑.png" width="30px" height="30px"  style="position:relative;top:10px" /> 仪表板</div>
            
            <div id="d2" style="padding-left:50px;display:none">
                <br />
                <span>仪表盘1</span><br />
                <br />
                <span>仪表盘2</span><br />
                <br />
                
            </div>
            <div id="d3" style="margin-top:30px;padding-left:50px;" onclick="cs()">
               <img src="imgForDeg/保存布局.png" width="30px" height="30px"  style="position:relative;top:10px" /> 布局
            </div>
           <div id="d4" style="padding-left:50px;display:none">
               <br />
                <span>垂直的</span><br />
                <br />
                <span>水平的</span><br />
                <br />
            </div>
            <div id="d5" style="padding-left:50px;margin-top:30px">
               <img src="imgForDeg/日历 (1).png" width="30px" height="30px" style="position:relative;top:10px"  /> 日历
            </div>
            <div id="d6" style="padding-left:50px;margin-top:30px" onclick="cc()">
               <img src="imgForDeg/电子邮件 (1).png" width="30px" height="30px" style="position:relative;top:10px"   /> 电子邮件
            </div>
            <div id="d7" style="padding-left:50px;display:none">
                <br />
                <span>收件箱</span><br />
                <br />
                <span>观看电子邮件</span><br />
                <br />
            </div>
            <div id="d8" style="padding-left:50px;margin-top:30px" onclick="cf()">
               <img src="imgForDeg/任务 (1).png" width="30px" height="30px" style="position:relative;top:10px" /> 任务
            </div>
            <div id="d9" style="padding-left:50px;display:none">
                <br />
                <span>观看任务</span><br />
                <br />
                <span>创建任务</span><br />
                <br />
            </div>
             <div id="d10" style="padding-left:50px;margin-top:30px" onclick="dd()">
               <img src="imgForDeg/页面偏好.png" width="30px" height="30px"  style="position:relative;top:10px"  /> 页面
            </div>
            <div id="d11" style="padding-left:50px;display:none">
                <br />
                <span>登录</span><br />
                <br />
                <span>锁屏</span><br />
                <br />
                <span>恢复密码</span><br />
                <br />
                <a href="Main2.aspx"><span style="color:white;text-decoration:none">起始页</span></a>
            </div>

        </div>
        <div style="width:720px;height:450px;margin-left:350px;position:absolute;margin-top:20px;background-color:antiquewhite ">
            <asp:GridView ID="GridView1" runat="server" style="text-align:center;" AutoGenerateColumns="False" Width="85%" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:TemplateField HeaderText="序号" >
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<% #Eval("id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="用户名字：">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<% #Eval("users_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField  HeaderText="花的名字：">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<% #Eval("flower_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="数量：">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<% # Eval("num") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="下单时间：">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<% # Eval("order_date") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        </div>
        </div>
    </form>
</body>
</html>
