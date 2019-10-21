<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/14 0014
  Time: 下午 20:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta charset="utf-8">
    <title>文章列表--layui后台管理模板</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="css/font_eolqem241z66flxr.css" media="all" />
    <link rel="stylesheet" href="css/user.css" media="all" />
    <link rel="stylesheet" type="text/css" href="css/zxf_page.css"/>
</head>

<body class="childrenBody">
<blockquote class="layui-elem-quote news_search">
    <div class="layui-inline">
        <div class="layui-input-inline">
            <input type="text" value="" placeholder="请输入关键字" class="layui-input search_input">
        </div>
        <a class="layui-btn search_btn">查询</a>
    </div>
    <div class="layui-inline">
        <a class="layui-btn linksAdd_btn" style="background-color:#5FB878">添加红酒</a>
    </div>
    <div class="layui-inline">
        <a class="layui-btn layui-btn-danger batchDel">批量删除</a>
    </div>
    <div class="layui-inline">
        <div class="layui-form-mid layui-word-aux">本页面刷新后除新添加的链接外所有操作无效，关闭页面所有数据重置</div>
    </div>
</blockquote>
<div class="layui-form links_list">
    <table class="layui-table">
        <colgroup>
            <col width="50">
            <col width="30%">
            <col>
            <col>
            <col>
            <col>
            <col>
            <col width="13%">
        </colgroup>
        <thead>
        <tr>
            <th><input type="checkbox" name="" lay-skin="primary" lay-filter="allChoose" id="allChoose"></th>
            <th style="text-align:left;">ID</th>
            <th>名称</th>
            <th>图片</th>
            <th>价格</th>
            <th>描述</th>
            <th>类别</th>
            <th>热门</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody class="links_content" id="tbody1">
        <c:forEach items="${allredwine}" var="rw">
            <tr>
                <td></td>
                <td>${rw.pid}</td>
                <td>${rw.pname}</td>
                <td><img src="${pageContext.request.contextPath}/${rw.pimage}" width="30px"/></td>
                <td>${rw.price}</td>
                <td>${rw.description}</td>
                <td>${rw.cid}</td>
                <td>${rw.ishot}</td>
                <td></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div class="zxf_pagediv"></div>

<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/zxf_page.js" type="text/javascript"></script>
<script type="text/javascript">
    $(".zxf_pagediv").createPage({
        pageNum: ${maxPage},
        current: 1,
        backfun: function(e) {
            //console.log(e.current);
            //ajax获得参数
            var currentPage=e.current;
            if (currentPage>${maxPage}){
                currentPage=${maxPage};
            }
            $.ajax({
                type: 'get',
                url : 'page?method=getCurrentPage',
                //url: '/api/one/new/list?p=1',
                data: {"currentPage":currentPage},
                dataType: 'json',
                success: function (data) {
                    $("#tbody1").empty();
                   $.each(data,function (i,v) {
                       var tr="<tr><td></td>\n" +
                           "                <td>"+v.pid+"</td>\n" +
                           "                <td>"+v.pname+"</td>\n" +
                           "                <td><img src=\"${pageContext.request.contextPath}/"+v.pimage+"\" width=\"30px\"/></td>\n" +
                           "                <td>"+v.price+"</td>\n" +
                           "                <td>"+v.description+"</td>\n" +
                           "                <td>"+v.cid+"</td>\n" +
                           "                <td>"+v.ishot+"</td>\n" +
                           "                <td>+'<a class=\"layui-btn layui-btn-mini users_edit\"><i class=\"iconfont icon-edit\"></i> 编辑</a>'\n" +
                           "                '<a class=\"layui-btn layui-btn-danger layui-btn-mini users_del\" data-id=\"\"><i class=\"layui-icon\">&#xe640;</i> 删除</a>'</td>" +
                           "</tr>";
                       $("#tbody1").append(tr);
                   })
                },
                error: function () {
                    //alert("");
                }
            });
        }
    });
</script>
</body>
</html>
