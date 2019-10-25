<%--
  Created by IntelliJ IDEA.
  User: td
  Date: 2019/10/22
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <div class="layui-form news_list">
        <table class="layui-table" border="thin solid gray" >
            <colgroup>
                <col>
                <col width="10%">
                <col width="15%">
                <col width="10%">
                <col width="25%">
            </colgroup>
            <thead>
            <tr>
                <th style="text-align:left;">文章标题</th>
                <th align="center">来信人</th>
                <th align="center">来信邮箱</th>
                <th align="center">回复状态</th>
                <th align="center">操作</th>
            </tr>
            </thead>
            <tbody class="news_content">
            <c:forEach items="${letters}" var="l">
            <tr align="center">
                <td align="left">&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/letters?method=findContent&eid=${l.eid}">${l.esubject}</a></td>
                <td>${l.ename}</td>
                <td>${l.email}</td>
                <c:if test="${l.state==1}"><td style="color: black">已回复</td></c:if>
                <c:if test="${l.state==0 || l.state==null}"><td style="color: red">未回复</td></c:if>
                <td colspan="3">
                    <%--发送邮件按钮--%>
                    <a target="_blank" href="page/news/sendLetters.jsp">
                        <input type="button" value="发送邮件" />
                    </a>
                    <%--已发送按钮--%>
                    <form style="display: inline" method="post" action="${pageContext.request.contextPath}/letters?method=changeLetterState&eid=${l.eid}">
                    <input type="submit"  value="已回复"/>
                    </form>
                    <%--删除按钮--%>
                    <form style="display: inline" action="${pageContext.request.contextPath}/letters?method=deleteLetter&eid=${l.eid}" method="post">
                    <input type="submit"  value="删除"/>
                    </form>
                </td>
            </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
