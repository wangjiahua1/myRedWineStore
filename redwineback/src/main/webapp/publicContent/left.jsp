<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/14 0014
  Time: 下午 18:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="layui-side layui-bg-black">
    <div class="user-photo">
        <c:if test="${empty sessionScope.user}">
            <a class="img" title="我的头像" href="${pageContext.request.contextPath}/login.jsp">
                <img src="${pageContext.request.contextPath}/images/1.jpg" style="height: 84px">
            </a>
        <a href="${pageContext.request.contextPath}/login.jsp">
        <p><span class="userName" style="font-size: 20px">登录</span></p>
    </a>
        </c:if>
        <c:if test="${!empty sessionScope.user}">
            <a class="img" title="我的头像" href="javascript:void(0);">
                <img src="${pageContext.request.contextPath}/images/1.jpg" style="height: 84px">
            </a>
            <a href="javascript:void(0);">
                <p style="font-size: 20px">欢迎,<span class="userName" style="font-size: 20px">${sessionScope.user.uname}登录!</span></p>
            </a>
        </c:if>
    </div>
    <div class="navBar layui-side-scroll"></div>
</div>
