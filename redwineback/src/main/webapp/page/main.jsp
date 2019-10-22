<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/14 0014
  Time: 下午 19:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>首页--后台管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="../layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="../css/font_eolqem241z66flxr.css" media="all" />
    <link rel="stylesheet" href="../css/main.css" media="all" />
</head>
<body class="childrenBody">
<div class="panel_box row">
    <div class="panel col">
        <a href="javascript:;" data-url="page/message/message.jsp">
            <div class="panel_icon">
                <i class="layui-icon" data-icon="&#xe63a;">&#xe63a;</i>
            </div>
            <div class="panel_word newMessage">
                <span></span>
                <cite>新消息</cite>
            </div>
        </a>
    </div>
    <div class="panel col">
        <a href="javascript:;" data-url="page/user/allUsers.jsp">
            <div class="panel_icon" style="background-color:#FF5722;">
                <i class="iconfont icon-dongtaifensishu" data-icon="icon-dongtaifensishu"></i>
            </div>
            <div class="panel_word userAll">
                <span></span>
                <cite>新增人数</cite>
            </div>
        </a>
    </div>
    <div class="panel col">
        <a href="javascript:;" data-url="page/user/allUsers.jsp">
            <div class="panel_icon" style="background-color:#009688;">
                <i class="layui-icon" data-icon="&#xe613;">&#xe613;</i>
            </div>
            <div class="panel_word userAll">
                <span></span>
                <cite>用户总数</cite>
            </div>
        </a>
    </div>
    <div class="panel col">
        <a href="javascript:;" data-url="page/img/images.jsp">
            <div class="panel_icon" style="background-color:#5FB878;">
                <i class="layui-icon" data-icon="&#xe64a;">&#xe64a;</i>
            </div>
            <div class="panel_word imgAll">
                <span></span>
                <cite>图片总数</cite>
            </div>
        </a>
    </div>
    <div class="panel col">
        <a href="javascript:;" data-url="page/news/newsList.jsp">
            <div class="panel_icon" style="background-color:#F7B824;">
                <i class="iconfont icon-wenben" data-icon="icon-wenben"></i>
            </div>
            <div class="panel_word waitNews">
                <span></span>
                <cite>待审核文章</cite>
            </div>
        </a>
    </div>
    <div class="panel col max_panel">
        <a href="javascript:;" data-url="page/news/newsList.jsp">
            <div class="panel_icon" style="background-color:#2F4056;">
                <i class="iconfont icon-text" data-icon="icon-text"></i>
            </div>
            <div class="panel_word allNews">
                <span></span>
                <em>文章总数</em>
                <cite>文章列表</cite>
            </div>
        </a>
    </div>
</div>

<script type="text/javascript" src="../layui/layui.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
</body>
</html>
