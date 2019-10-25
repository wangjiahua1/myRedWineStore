<%--
  Created by IntelliJ IDEA.
  User: td
  Date: 2019/10/22
  Time: 20:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>

</head>
<body>
    <form method="post" action="${pageContext.request.contextPath}/letters?method=findALLletters">
        <input type="submit" value="返回"  id="m1"/>

    </form>
    <center>
        <h2>来信内容</h2>

            <%--<c:forEach items="${lett}" var="lett">--%>
        <textarea  name="letter"  cols="100" rows="60" >${lett.emessage}</textarea>
            <%--</c:forEach>--%>

    </center>
</body>
</html>
