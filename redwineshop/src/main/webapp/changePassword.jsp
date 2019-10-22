<%--
  Created by IntelliJ IDEA.
  User: td
  Date: 2019/10/21
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#back-submit").click(function () {
                window.location.href="index.jsp";
            });
        });
    </script>
</head>
<body>
    <center>
        <form action="${pageContext.request.contextPath}/user?method=changePassword" id="changeUserPassword" method="post">
            <div>
                <h3>修改密码</h3>
            </div>
            <p>
                <input type="text" id="oldpwd" name="oldpwd" class="input"/>输入原密码
            </p>
            <p>
                <input type="text" id="newpwd" name="newpwd" class="input"/>输入新密码
            </p>
            <p>
                <input type="text" id="renewpwd" name="renewpwd" class="input"/>确认新密码
            </p>
            <p> ${msg} &nbsp;</p>
            <p>
                <input  id="change-submit" class="button-primary" value="确定" type="submit"/>
                <input  id="back-submit" class="button-primary" value="返回首页" type="button"/>
            </p>

        </form>
    </center>
</body>
</html>
