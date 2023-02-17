<%--
  Created by IntelliJ IDEA.
  User: Lzx
  Date: 2023/2/16
  Time: 22:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
  <form action="loginServlet" method="post">
    姓名：<input type="text" name="uname"><br>
    密码：<input type="password" name="upwd"><br>
    <button>登录
        <span style="color: red; font-size: 12px">${msg}</span>
    </button>
  </form>
</body>
</html>
