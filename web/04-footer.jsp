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
    <title>底部</title>
</head>
<body>
  <h2>底部内容</h2>
    <%
        int a = 10;

        //获取动态包含传递的参数
        String uname = request.getParameter("uname");
        String msg = request.getParameter("msg");

        out.print(uname+","+msg);
    %>
</body>
</html>
