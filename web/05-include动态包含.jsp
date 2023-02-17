<%--
  Created by IntelliJ IDEA.
  User: Lzx
  Date: 2023/2/16
  Time: 21:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>include动态包含</title>
</head>
<body>
    <%--
        include动态包含
            格式：
                <%@ includ file="要包含的文件路径"%>
            特点：
                -动态包含相当于方法调用
                -动态包含会生成多个源码文件
                -可以定义同名变量
                -效率高，耦合度低
            注：
                当动态包含不需要传递参数时，include双标签之间不要有任何内容，包括换行和空格

            使用动态包含传递参数

    --%>
    <%
        int a = 1;
        String header = "04-header.jsp";
        String footer = "04-footer.jsp";

    %>
    <jsp:include page="<%=header%>"></jsp:include>
    <jsp:include page="<%=footer%>"></jsp:include>

    <%
        String str = "hello";
    %>
    <jsp:include page="<%=header%>"></jsp:include>
    <h2>主体内容</h2>
    <%--动态包含传递参数--%>
    <jsp:include page="<%=footer%>">
        <jsp:param name="uname" value="admin"/>
        <jsp:param name="msg" value="<%=str%>"/>
    </jsp:include>
</body>
</html>
