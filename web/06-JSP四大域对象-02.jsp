<%--
  Created by IntelliJ IDEA.
  User: Lzx
  Date: 2023/2/16
  Time: 22:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP四大域对象</title>
</head>
<body>
    <%--
        JSP的四大域对象
    --%>

    <%
        //获取域对象中的值
        out.print("page范围："+pageContext.getAttribute("name1")+"---");
        out.print("request范围："+request.getAttribute("name2")+"---");
        out.print("session范围："+session.getAttribute("name3")+"---");
        out.print("application范围："+application.getAttribute("name4")+"---");
    %>
</body>
</html>
