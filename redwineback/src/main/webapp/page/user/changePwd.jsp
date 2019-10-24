<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>修改密码--layui后台管理模板</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" href="../../layui/css/layui.css" media="all" />
	<link rel="stylesheet" href="../../css/user.css" media="all" />
</head>
<body class="childrenBody">
	<form class="layui-form changePwd" id="form">
		<div class="layui-form-item">
		    <label class="layui-form-label">用户名</label>
		    <div class="layui-input-block">
		    	<input type="text" value="${sessionScope.user.uname}"  class="layui-input pwd">
		    </div>
		</div>
		<div class="layui-form-item">
		    <label class="layui-form-label">旧密码</label>
		    <div class="layui-input-block">
		    	<input type="password" name="oldpassword" value="" placeholder="请输入旧密码" class="layui-input pwd">
				<span id="oldpd"></span>
		    </div>
		</div>
		<div class="layui-form-item">
		    <label class="layui-form-label">新密码</label>
		    <div class="layui-input-block">
		    	<input type="password" name="newpassword" value="" placeholder="请输入新密码" lay-verify="required|newPwd" id="oldPwd" class="layui-input pwd">
		    </div>
		</div>
		<div class="layui-form-item">
		    <label class="layui-form-label">确认密码</label>
		    <div class="layui-input-block">
		    	<input type="password" name="commitpassword" value="" placeholder="请确认密码" lay-verify="required|confirmPwd" class="layui-input pwd">
		    </div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button type="submit" class="layui-btn" lay-submit="" lay-filter="changePwd">立即修改</button>
					<button type="reset" class="layui-btn layui-btn-primary">重置</button>
				</div>
			</div>
		</div>
	</form>
	<script type="text/javascript" src="../../js/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="../../layui/layui.js"></script>
	<script type="text/javascript" src="address.js"></script>
	<script type="text/javascript" src="user.js"></script>
	<script type="text/javascript">
		$(function () {
			$(".layui-btn").click(function () {
				var oldpassword=$("input[name='oldpassword']").val();
                var newpassword=$("input[name='newpassword']").val();
                var commitpassword=$("input[name='commitpassword']").val();
                $.ajax({
					url:"${pageContext.request.contextPath}/userb?method=amendpassword",
					data:{oldpassword:oldpassword,newpassword:newpassword,commitpassword:commitpassword},
                    datatype:JSON,
					success:function (data) {
					    console.log(data);
						if (data =='true') {
							// location.href="login.jsp";
                            window.location.reload();
						}
                    }
				})
            })
        })
	</script>
</body>
</html>