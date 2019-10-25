<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/14 0014
  Time: 下午 18:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 顶部 -->
<div class="layui-header header">
    <div class="layui-main">
        <a href="#" class="logo">layui后台管理</a>
        <!-- 搜索 -->
        <div class="layui-form component">
            <select name="modules" lay-verify="required" lay-search="">
                <option value="">直接选择或搜索选择</option>
                <option value="1">layer</option>
                <option value="2">form</option>
                <option value="3">layim</option>
                <option value="4">element</option>
                <option value="5">laytpl</option>
                <option value="6">upload</option>
                <option value="7">laydate</option>
                <option value="8">laypage</option>
                <option value="9">flow</option>
                <option value="10">util</option>
                <option value="11">code</option>
                <option value="12">tree</option>
                <option value="13">layedit</option>
                <option value="14">nav</option>
                <option value="15">tab</option>
                <option value="16">table</option>
                <option value="17">select</option>
                <option value="18">checkbox</option>
                <option value="19">switch</option>
                <option value="20">radio</option>
            </select>
            <i class="layui-icon">&#xe615;</i>
        </div>
        <!-- 天气信息 -->
        <div class="weather" pc>
            <div id="tp-weather-widget"></div>
            <script>
                (function (T, h, i, n, k, P, a, g, e) {
                    g = function () {
                        P = h.createElement(i);
                        a = h.getElementsByTagName(i)[0];
                        P.src = k;
                        P.charset = "utf-8";
                        P.async = 1;
                        a.parentNode.insertBefore(P, a)
                    };
                    T["ThinkPageWeatherWidgetObject"] = n;
                    T[n] || (T[n] = function () {
                        (T[n].q = T[n].q || []).push(arguments)
                    });
                    T[n].l = +new Date();
                    if (T.attachEvent) {
                        T.attachEvent("onload", g)
                    } else {
                        T.addEventListener("load", g, false)
                    }
                }(window, document, "script", "tpwidget", "//widget.seniverse.com/widget/chameleon.js"))
            </script>
            <script>
                tpwidget("init", {
                    "flavor": "slim",
                    "location": "WX4FBXXFKE4F",
                    "geolocation": "enabled",
                    "language": "zh-chs",
                    "unit": "c",
                    "theme": "chameleon",
                    "container": "tp-weather-widget",
                    "bubble": "enabled",
                    "alarmType": "badge",
                    "color": "#FFFFFF",
                    "uid": "UB6953924F",
                    "hash": "ce68b5b7b447ec5bda327f8c9c2d59f9"
                });
                tpwidget("show");
            </script>
        </div>
        <!-- 顶部右侧菜单 -->
        <ul class="layui-nav top_menu">
            <li class="layui-nav-item showNotice" id="showNotice" pc>
                <a href="javascript:;"><i class="iconfont icon-gonggao"></i><cite>系统公告</cite></a>
            </li>
            <li class="layui-nav-item" mobile>
                <a href="javascript:;" data-url="page/user/changePwd.html"><i class="iconfont icon-shezhi1" data-icon="icon-shezhi1"></i><cite>设置</cite></a>
            </li>
            <%--<li class="layui-nav-item" mobile>--%>
                <%--<a href="javascript:;"><i class="iconfont icon-loginout"></i> 退出</a>--%>
            <%--</li>--%>
            <%--<li class="layui-nav-item lockcms" pc>--%>
                <%--<a href="javascript:;"><i class="iconfont icon-lock1"></i><cite>锁屏</cite></a>--%>
            <%--</li>--%>
            <li class="layui-nav-item" pc>
                <c:if test="${empty sessionScope.user}">
                    <a href="${pageContext.request.contextPath}/login.jsp">
                        <img src="${pageContext.request.contextPath}/images/1.jpg" class="layui-circle" width="35" height="35">
                        <cite>登录</cite>
                    </a>
                    <%--<dl class="layui-nav-child">--%>
                        <%--<dd><a href="javascript:void(0);" data-url="page/user/userInfo.jsp"><i class="iconfont icon-zhanghu" data-icon="icon-zhanghu"></i><cite>个人资料</cite></a></dd>--%>
                        <%--<dd><a href="javascript:void(0);" data-url="page/user/changePwd.jsp"><i class="iconfont icon-shezhi1" data-icon="icon-shezhi1"></i><cite>修改密码</cite></a></dd>--%>
                        <%--<dd><a href="javascript:void(0);"><i class="iconfont icon-loginout"></i><cite>退出</cite></a></dd>--%>
                    <%--</dl>--%>
                </c:if>
                <c:if test="${!empty sessionScope.user}">
                <a href="javascript:void(0);">
                    <img src="${pageContext.request.contextPath}/images/1.jpg" class="layui-circle" width="35" height="35">
                    <cite>${sessionScope.user.uname}</cite>
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:void(0);" data-url="page/user/userInfo.jsp"><i class="iconfont icon-zhanghu" data-icon="icon-zhanghu"></i><cite>个人资料</cite></a></dd>
                    <dd><a href="javascript:void(0);" data-url="page/user/changePwd.jsp"><i class="iconfont icon-shezhi1" data-icon="icon-shezhi1"></i><cite>修改密码</cite></a></dd>
                    <dd><a href="${pageContext.request.contextPath}/userb?method=loginout"><i class="iconfont icon-loginout"></i><cite>退出</cite></a></dd>
                </dl>
                </c:if>
            </li>
        </ul>
    </div>
</div>
