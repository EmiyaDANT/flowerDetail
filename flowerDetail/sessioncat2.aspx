                         <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sessioncat2.aspx.cs" Inherits="flowerDetail.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="img/icon.ico" rel="icon" />s
    <script src="js/dianjidonghua.js"></script>
    <style>


        .s-ok {
            border-radius: 10px;
            border:0;
            width: 110px;
            height: 40px;
            background-color: #11bd42;
            color:#fff;
        }

        #btn1 {
            margin-left:5px;
            border-radius: 10px;
            border:0;
            width: 110px;
            height: 40px;
            background-color: white;
            color: black;
            
        }

        #CheckBox2 {
            margin-top:-5px;
            margin-left:5px;
            margin-right:-5px;
        }

        #span1 {
            margin-top:1px;
            
        }
        #link1 {
            color: black;
            text-decoration: none;
        
        }

    </style>
    <script>
        function fun() {
            document.getElementById('div1').style.display = 'block';

        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:60%;margin:auto;">
            <div style="text-align:center;margin:auto;margin-top:100px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%">
                      <Columns>

                           <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" Height="20"/>
                                </ItemTemplate>
                           </asp:TemplateField>
                       

                           <asp:BoundField DataField="flower_id" HeaderText="ID" />
                           <asp:BoundField DataField="flower_name" HeaderText="名称" />
                           <asp:BoundField DataField="flower_Now_price" HeaderText="价格" />
                          <asp:BoundField DataField="num" HeaderText="数量" />

                          

                      </Columns>   
                       <FooterStyle BackColor="#5D7B9D" Font-Bold="True" HorizontalAlign="Center" ForeColor="White" />

                 </asp:GridView>
            </div>
           <!-- <asp:GridView runat="server">
                <Columns>
                    <asp:BoundField DataField="员工性别" HeaderText="选择" />
                </Columns>
            </asp:GridView>
            <!-- <asp:CheckBox Text="" runat="server" /> -->
            <div style="float:left;">
            <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged" Text=" 全选" />
                
            
                <asp:Button ID="btn1" Text="清空购物车" runat="server" OnClick="Unnamed1_Click"/>
            </div>
            <br />
            <br />
            
            
            
            <div style="float:right;width:50%;margin-bottom:10px;">
                
                <div style="float:right;margin-right:10px;">
                    <asp:Button ID="btn2" Text="下单" runat="server" OnClick="Unnamed2_Click" class="s-ok"/>
                </div>
            </div>

        </div>

        <div id="div1" style=" height: 800px;margin:auto; width: 100%;margin-top:10px;font-size:40px; text-align:center">
                    <asp:Image ID="img1" ImageUrl="~/img/fukuanma.jpg" runat="server" style="display:none;margin:auto;"/>
                    <asp:Label ID="Label1" runat="server" Text="Label" style="display:none">合计:</asp:Label>
                    <asp:Label ID="lbl_txt" Text="" runat="server" style="display:none"/>
                    <asp:Button ID="btn3" Text="已付款" runat="server" OnClick="Unnamed2_Click1" style="display:none"/>
                    <asp:LinkButton ID="link1" Text="返回主页" PostBackUrl="Main2.aspx"  runat="server"  style="display:none" />
        </div>

    </form>
</body>
</html>
