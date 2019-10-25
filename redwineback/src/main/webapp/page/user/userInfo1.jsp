<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>个人资料--layui后台管理模板</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" href="../layui/css/layui.css ">
	<style>

	</style>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css" media="all" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/user.css" media="all" />
</head>
<body class="childrenBody">
	<form id="form" class="layui-form" method="post">
		<div class="user_left">
			<div class="layui-form-item">
			    <label class="layui-form-label">用户名</label>
			    <div class="layui-input-block">
			    	<input type="text" id="uname" disabled value="${user.uname}" name="uname" class="layui-input" >
			    </div>
			</div>
			<div class="layui-form-item">
			    <label class="layui-form-label">用户组</label>
			    <div class="layui-input-block">
			    	<input type="text" id="memberorder" disabled value="超级管理员" name="memberorder" disabled class="layui-input layui-disabled">
			    </div>
			</div>
			<div class="layui-form-item" pane="">
			    <label class="layui-form-label">性别</label>
				<div class="layui-input-block">
					<input type="text" id="sex"  disabled value="${user.sex}" name="sex" class="layui-input" >
				</div>
			</div>
			<div class="layui-form-item">
			    <label class="layui-form-label">手机号码</label>
			    <div class="layui-input-block">
			    	<input type="tel"  id="tel"
						   value="${user.telephone}" disabled placeholder="请输入手机号码" lay-verify="required|phone" class="layui-input">
			    </div>
			</div>
			<div class="layui-form-item">
			    <label class="layui-form-label">出生年月</label>
			    <div class="layui-input-block">
			    	<input type="text"  id="birthday" disabled value="${user.birthday}" placeholder="请输入出生年月" lay-verify="required|date" onclick="layui.laydate({elem: this,max: laydate.now()})" class="layui-input">
			    </div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">家庭地址</label>
				<div class="layui-input-block">
					<input type="text" id="address" disabled value="${user.area}" name="uname" class="layui-input" >
				</div>
			</div>
			<p></p>
		</div>
	</form>
	<script type="text/javascript" src="../../js/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="../../layui/layui.js"></script>
	<script type="text/javascript" src="address.js"></script>
	<script type="text/javascript" src="user.js"></script>
</body>
</html>