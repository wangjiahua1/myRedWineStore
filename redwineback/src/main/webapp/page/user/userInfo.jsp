<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	<link rel="stylesheet" href="../../layui/css/layui.css" media="all" />
	<link rel="stylesheet" href="../../css/user.css" media="all" />
</head>
<%--action="${pageContext.request.contextPath}/userb?method=information" --%>
<body class="childrenBody">
	<form id="form" class="layui-form" method="post">
		<div class="user_left">
			<div class="layui-form-item">
			    <label class="layui-form-label">用户名</label>
			    <div class="layui-input-block">
			    	<input type="text" id="uname"
					<c:if test="${empty sessionScope.user}">
						   value=""
					</c:if>
					<c:if test="${!empty sessionScope.user}">
						   value="${sessionScope.user.uname}"
					</c:if>
						    name="uname" class="layui-input" >
			    </div>
			</div>
			<div class="layui-form-item">
			    <label class="layui-form-label">用户组</label>
			    <div class="layui-input-block">
			    	<input type="text" id="memberorder" value="超级管理员" name="memberorder" disabled class="layui-input layui-disabled">
			    </div>
			</div>
			<div class="layui-form-item" pane="">
			    <label class="layui-form-label">性别</label>
			    <div class="layui-input-block">
			    	<input type="radio" name="sex" value="男" title="男" checked="">
	     			<input type="radio" name="sex" value="女" title="女">
	     			<input type="radio" name="sex" value="保密" title="保密">
			    </div>
			</div>
			<div class="layui-form-item">
			    <label class="layui-form-label">手机号码</label>
			    <div class="layui-input-block">
			    	<input type="tel"  id="tel"
					<c:if test="${empty sessionScope.user}">
						   value=""
					</c:if>
					<c:if test="${!empty sessionScope.user}">
						   value="${sessionScope.user.telephone}"
					</c:if>
						    placeholder="请输入手机号码" lay-verify="required|phone" class="layui-input">
			    </div>
			</div>
			<div class="layui-form-item">
			    <label class="layui-form-label">出生年月</label>
			    <div class="layui-input-block">
			    	<input type="text"  id="birthday"
					<c:if test="${empty sessionScope.user}">
						   value=""
					</c:if>
					<c:if test="${!empty sessionScope.user}">
						   value="${sessionScope.user.birthday}"
					</c:if>
						   placeholder="请输入出生年月" lay-verify="required|date" onclick="layui.laydate({elem: this,max: laydate.now()})" class="layui-input">
			    </div>
			</div>
			<c:if test="${empty sessionScope.user.area}">
			<div class="layui-form-item">
			    <label class="layui-form-label">家庭住址</label>
			    <div class="layui-input-inline">
	                <select name="province" lay-filter="province" id="province">
	                    <option value="" name="province">请选择省</option>
	                </select>
	            </div>
	            <div class="layui-input-inline">
	                <select name="city" lay-filter="city" disabled id="city">
	                    <option value="" name="city">请选择市</option>
	                </select>
	            </div>
	            <div class="layui-input-inline">
	                <select name="area" lay-filter="area" disabled id="area">
	                    <option value="" name="area">请选择县/区</option>
	                </select>
	            </div>
			</div>
			</c:if>
			<c:if test="${!empty sessionScope.user.area}">
			<div class="layui-form-item">
				<label class="layui-form-label">地址</label>
				<div class="layui-input-block">

					<input type="text" id="address" value="${sessionScope.user.area}" name="uname" class="layui-input" >
				</div>
			</div>
			</c:if>
			<div class="layui-input-block">
				<button type="submit" class="layui-btn" lay-submit="" lay-filter="changeUser">立即提交</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		</div>
		<%--<div class="layui-form-item" style="margin-left: 5%;">--%>
		    <%--<div class="layui-input-block">--%>
		    	<%--<button class="layui-btn" lay-submit="" lay-filter="changeUser">立即提交</button>--%>
				<%--<button type="reset" class="layui-btn layui-btn-primary">重置</button>--%>
		    <%--</div>--%>
		<%--</div>--%>
	</form>

	<script type="text/javascript" src="../../js/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="../../layui/layui.js"></script>
	<script type="text/javascript" src="address.js"></script>
	<script type="text/javascript" src="user.js"></script>
	<script type="text/javascript">
		$(function () {
			$(".layui-btn").click(function () {
				var name = $("#uname").val();
				var memberorder = $("#memberorder").val();
				var sex=$("input[name='sex']:checked").val();
				var tel = $("#tel").val();
				var birthday = $("#birthday").val();
				var province = $("#province").find("option:selected").text();
                var city = $("#city").find("option:selected").text();
                var area = $("#area").find("option:selected").text();
                var address=province+"-"+city+"-"+area;
				console.log(name + memberorder + sex + tel + birthday + province + city + area);
				$.ajax({
					url:"${pageContext.request.contextPath}/userb?method=information",
					data:{name:name,memberorder:memberorder,sex:sex,tel:tel, birthday:birthday,address:address},

					success:function () {

                    }
				})
            });
        });
	</script>
</body>
</html>