<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="comment1.aspx.cs" Inherits="flowerDetail.comment1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="img/icon.ico" rel="icon" />
    <script src="js/dianjidonghua.js"></script>
    <style>
        .main{
            width:980px;
            height:1000px;
            border:0px solid;
        }
        .comment-title{
            width:980px;
            height:60px;
            border:0px solid;
            line-height:60px;
        }
        .comment-content{
            width:980px;
            height:940px;
            border:0px solid;
        }
        
        .comment-content-hd{
            width:980px;
            height:60px;
            border:0px solid;
        }
        .comment-content-hd-left{
            width:300px;
            height:60px;
            border:0px solid;
            line-height:60px;
            float:left;
        }
        .comment-content-hd-right{
            width:500px;
            height:60px;
            border:0px solid;
            line-height:60px;
            float:right;
        }
        .comment-content-bd{
            width:980px;
            height:880px;
            border:0px solid;
        }
        .detail-comment-list{
            width:980px;
            height:800px;
            border:0px solid;
        }
        .detail-comment-item{
            width:980px;
            height:180px;
            border:0px solid;
        }
        .detail-comment-item-user{
            width:190px;
            height:180px;
            border:0px solid;
            float:left;
        }
        .detail-comment-item-content{
            width:780px;
            height:180px;
            border:0px solid;
            float:left;
        }
        .detail-comment-item-content-level{
            width:780px;
            height:20px;
            border:0px solid;
        }
        .detail-comment-item-content-content{
            width:780px;
            height:40px;
            border:0px solid;
            line-height:40px;
        }
        .detail-comment-item-content-img{
            width:780px;
            height:80px;
            border:0px solid;
        }
        .detail-comment-item-content-time{
            width:780px;
            height:40px;
            border:0px solid;
        }
        .star-item{
            display: inline-block;
            vertical-align: middle;
            width: 16px;
            height: 16px;
            background-size: cover;
            background-repeat: no-repeat;
            margin-right: 4px;
            background-image: url(img/xing.png);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
            <div class="comment-title">
                <span style="margin-left:20px">
                    用户评价
                </span>
            </div>
            <div class="comment-content">
                <div class="comment-content-hd">
                    <div class="comment-content-hd-left">
                        <span style="margin-left:15px">
                            全部评价（总数）
                        </span>
                    </div>
                    <div class="comment-content-hd-right">
                        <span style="margin-left:100px">
                            查看当前商品评价

                        </span>
                        <span style="margin-left:100px">
                            查看所有商品评价
                        </span>
                    </div>
                </div>
                <div class="comment-content-bd">
                    <div class="detail-comment-list">
                        <div class="detail-comment-item">
                            <div class="detail-comment-item-user">
                                <img src="img/zhongliuge.jpg" style="width: 48px;height: 48px;vertical-align: middle;border-radius: 50%;overflow: hidden;margin-left:10px"  />
                                <span style="margin-left:15px">
                                    某某某
                                </span>
                            </div>
                            <div class="detail-comment-item-content">
                                <div class="detail-comment-item-content-level">
                                    <ul style="margin:0;">
                                        <li class="star-item"></li>
                                        <li class="star-item"></li>
                                        <li class="star-item"></li>
                                        <li class="star-item"></li>
                                        <li class="star-item"></li>
                                    </ul>
                                </div>
                                <div class="detail-comment-item-content-content">
                                    <span style="margin-left:40px">
                                        花真好！！！
                                    </span>
                                </div>
                                <div class="detail-comment-item-content-img">
                                    <img style="width:80px;height:80px;margin-left:40px" src="img/1.jpg" />
                                </div>
                                <div class="detail-comment-item-content-time">
                                    <span style="margin-left:40px">
                                        湖南省株洲市石峰区湖南铁路科技职业技术学院
                                    </span>
                                    <span>
                                        <%= Nowtime() %>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="detail-comment-item">
                            <div class="detail-comment-item-user">
                                <img src="img/zhongliuge.jpg" style="width: 48px;height: 48px;vertical-align: middle;border-radius: 50%;overflow: hidden;margin-left:10px"  />
                                <span style="margin-left:15px">
                                    某某某
                                </span>
                            </div>
                            <div class="detail-comment-item-content">
                                <div class="detail-comment-item-content-level">
                                    <ul style="margin:0;">
                                        <li class="star-item"></li>
                                        <li class="star-item"></li>
                                        <li class="star-item"></li>
                                        <li class="star-item"></li>
                                        <li class="star-item"></li>
                                    </ul>
                                </div>
                                <div class="detail-comment-item-content-content">
                                    <span style="margin-left:40px">
                                        花真好！！！
                                    </span>
                                </div>
                                <div class="detail-comment-item-content-img">
                                    <img style="width:80px;height:80px;margin-left:40px" src="img/1.jpg" />
                                </div>
                                <div class="detail-comment-item-content-time">
                                    <span style="margin-left:40px">
                                        湖南省株洲市石峰区湖南铁路科技职业技术学院
                                    </span>
                                    <span>
                                        <%= Nowtime() %>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="detail-comment-item">
                            <div class="detail-comment-item-user">
                                <img src="img/zhongliuge.jpg" style="width: 48px;height: 48px;vertical-align: middle;border-radius: 50%;overflow: hidden;margin-left:10px"  />
                                <span style="margin-left:15px">
                                    某某某
                                </span>
                            </div>
                            <div class="detail-comment-item-content">
                                <div class="detail-comment-item-content-level">
                                    <ul style="margin:0;">
                                        <li class="star-item"></li>
                                        <li class="star-item"></li>
                                        <li class="star-item"></li>
                                        <li class="star-item"></li>
                                        <li class="star-item"></li>
                                    </ul>
                                </div>
                                <div class="detail-comment-item-content-content">
                                    <span style="margin-left:40px">
                                        花真好！！！
                                    </span>
                                </div>
                                <div class="detail-comment-item-content-img">
                                    <img style="width:80px;height:80px;margin-left:40px" src="img/1.jpg" />
                                </div>
                                <div class="detail-comment-item-content-time">
                                    <span style="margin-left:40px">
                                        湖南省株洲市石峰区湖南铁路科技职业技术学院
                                    </span>
                                    <span>
                                        <%= Nowtime() %>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="detail-comment-item">
                            <div class="detail-comment-item-user">
                                <img src="img/zhongliuge.jpg" style="width: 48px;height: 48px;vertical-align: middle;border-radius: 50%;overflow: hidden;margin-left:10px"  />
                                <span style="margin-left:15px">
                                    某某某
                                </span>
                            </div>
                            <div class="detail-comment-item-content">
                                <div class="detail-comment-item-content-level">
                                    <ul style="margin:0;">
                                        <li class="star-item"></li>
                                        <li class="star-item"></li>
                                        <li class="star-item"></li>
                                        <li class="star-item"></li>
                                        <li class="star-item"></li>
                                    </ul>
                                </div>
                                <div class="detail-comment-item-content-content">
                                    <span style="margin-left:40px">
                                        花真好！！！
                                    </span>
                                </div>
                                <div class="detail-comment-item-content-img">
                                    <img style="width:80px;height:80px;margin-left:40px" src="img/1.jpg" />
                                </div>
                                <div class="detail-comment-item-content-time">
                                    <span style="margin-left:40px">
                                        湖南省株洲市石峰区湖南铁路科技职业技术学院
                                    </span>
                                    <span>
                                        <%= Nowtime() %>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
