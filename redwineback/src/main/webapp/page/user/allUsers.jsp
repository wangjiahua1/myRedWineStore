<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>用户总数--layui后台管理模板</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" href="../../layui/css/layui.css" media="all" />
	<link rel="stylesheet" href="../../css/font_eolqem241z66flxr.css" media="all" />
	<link rel="stylesheet" href="../../css/user.css" media="all" />
</head>
<body class="childrenBody">
	<%--<blockquote class="layui-elem-quote news_search">--%>
		<%--<div class="layui-inline">--%>
		    <%--<div class="layui-input-inline">--%>
		    	<%--<input type="text" value="" placeholder="请输入关键字" class="layui-input search_input">--%>
		    <%--</div>--%>
		    <%--<a class="layui-btn search_btn">查询</a>--%>
		<%--</div>--%>
		<%--<div class="layui-inline">--%>
			<%--<a class="layui-btn layui-btn-danger batchDel">批量删除</a>--%>
		<%--</div>--%>
	<%--</blockquote>--%>
	<div class="layui-form news_list">
	  	<table class="layui-table">
		    <colgroup>
				<col width="50">
				<col>
				<col width="18%">
				<col width="8%">
				<col width="12%">
				<col width="12%">
				<col width="18%">
				<col width="15%">
		    </colgroup>
		    <thead>
				<tr>
					<th><input type="checkbox" name="" lay-skin="primary" lay-filter="allChoose" id="allChoose"></th>
					<th>登录名</th>
					<th>邮箱</th>
					<th>性别</th>
					<th>会员等级</th>
					<th>最后登录时间</th>
					<th>操作</th>
				</tr> 
		    </thead>
		    <tbody class="users_content" id="tbody2">
				<%--<tr>--%>
					<%--<td><input type="checkbox" name="checked" lay-skin="primary" lay-filter="choose"></td>--%>
					<%--<td></td>--%>
					<%--<td></td>--%>
					<%--<td></td>--%>
					<%--<td></td>--%>
					<%--<td></td>--%>
					<%--<td><a class="layui-btn layui-btn-danger layui-btn-mini users_del"><i class="layui-icon">&#xe640;</i> 删除</a></td>--%>
				<%--</tr>--%>
			</tbody>
		</table>
	</div>
	<div id="page"></div>
	<script type="text/javascript" src="../../js/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="../../layui/layui.js"></script>
	<script type="text/javascript" src="allUsers.js"></script>
	<script type="text/javascript">
		$(function () {

			$.getJSON(
                "${pageContext.request.contextPath}/userb?method=findalluser",
				function (data) {
                    $("#tbody2").empty();
                    console.log(data);
                    $.each(data, function (i,v) {
                        var tr="";
                        var email=v.email;
                        tr+="<tr>\n" +
                            "<td><input type='checkbox' name='checked' lay-skin='primary' lay-filter='choose'></td>\n" +
                            "<td>"+v.uname+"</td>\n" +
                            "<td>"+v.email+"</td>\n" +
                            "<td>"+v.sex+"</td>\n" +
                            "<td>"+v.MemberOrder+"</td>\n" +
                            "<td>"+v.lastlogin+"</td>\n" +
                            "<td><a href='javascript:void(0)' email="+v.email+" class=\"layui-btn layui-btn-danger layui-btn-mini users_del\"><i class=\"layui-icon\"></i>查看</a></td>\n" +
                            "</tr>";
                        $("#tbody2").append(tr);
                    })
                    $("a").click(function () {
						var email=$(this).attr("email");
						window.location.href="${pageContext.request.contextPath}/userb?method=finduser&email="+email;
                    })

                }
			)

			


        })
	</script>
</body>
</html>