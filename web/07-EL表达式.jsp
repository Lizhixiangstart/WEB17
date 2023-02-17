<%--
  Created by IntelliJ IDEA.
  User: Lzx
  Date: 2023/2/17
  Time: 13:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>El表达式</title>
</head>
<body>
  <%--
      EL表达式：
        作用：
          简化JSP代码
        格式：
          ${域对象的名称}
        操作对象：
          EL表达式一般操作的是域对象，不能操作表达式
        操作范围：
          page范围
            在当前页面
          request范围
            在一次请求
          session范围
            在一次会话
          application范围
            在一次应用程序
        注:
          -如果el表达式获取域对象的值为空，默认显示空字符串
          -el表达式默认从小到大范围去找，找到即可，如果四个范围都未找到，则显示空字符串
  --%>

  <%
    pageContext.setAttribute("uname","张三");
    request.setAttribute("uname","李四");
    session.setAttribute("uname","王五");
    application.setAttribute("uname","赵六");
    //定义局部变量
    String str = "Hello";
  %>
  <%--获取数据--%>
  获取局部变量：${str} <br>
  获取域对象：${uname}<br>
  获取指定范围的域对象：<br>
  &nbsp;&nbsp;page范围：${pageScope.uname}<br>
  &nbsp;&nbsp;request范围：${requestScope.uname}<br>
  &nbsp;&nbsp;session范围：${sessionScope.uname}<br>
  &nbsp;&nbsp;application范围：${applicationScope.uname}<br>
</body>
</html>
