<%--
  Created by IntelliJ IDEA.
  User: Lzx
  Date: 2023/2/16
  Time: 20:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Scriptlet脚本小程序</title>
</head>
<body>
    <%--
        Script脚本小程序
            JSP一共有三种Scriptlet脚本小程序：
                第一种：Java脚本段：可以写Java代码，定义局部变量，编写语句
                    <%
                        //可以写Java代码
                    %>
                    生成的代码在servlet中的service方法中
                第二种：声明：声明全局变量，方法、类
                    <%!
                        //声明全局变量
                    %>
                    生成的代码在servlet的类体中
                第三种：输出表达式：可以输出变量或字面量
                    <%=
                        //输出数据
                    %>
                    生成的代码在servlet中的service方法中，相当于out.print()输出
    --%>

    <%--第一种：Java脚本段：可以写Java代码，定义局部变量，编写语句--%>
        <%
            //定义局部变量
            String str = "Hello JSP!";
            //输出内容到控制台
            System.out.println(str);
            out.write("------");
            //输出内容到浏览器
            out.print(str);
            out.write("------");

            //输出全局变量
            out.write("全局变量："+num);
            out.write("------");

        %>
    <%--第二种：声明：声明全局变量，方法、类--%>
        <%!
            int num = 10;
        %>
    <%--第三种：输出表达式：可以输出变量或字面量--%>
        <%=
            str
        %>
</body>
</html>
