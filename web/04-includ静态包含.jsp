<%--
  Created by IntelliJ IDEA.
  User: Lzx
  Date: 2023/2/16
  Time: 20:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>includ静态包含</title>
</head>
<body>
    <%--
        includ静态包含
            格式：<%@include file="要包含的页面地址"%>
        特点：
            -将内容进行了直接的替换
            -静态包含只会生成一个源码文件，最终的内容全部在_jspService方法体中
            -不能出现同名变量
            -运行效率高，耦合度高，不够灵活
    --%>
    <%@include file="04-header.jsp"%>
    <h2>主体内容</h2>
    <%@include file="04-footer.jsp"%>
</body>
</html>
