<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Objects" %>
<%@ page import="org.example.pojo.User" %><%--
  Created by IntelliJ IDEA.
  User: Lzx
  Date: 2023/2/17
  Time: 13:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL表达式的使用</title>
</head>
<body>
  <%--
    EL表达式的使用
        获取List
            获取List的size  ${list.size()}
            获取List的指定下标的值  ${list[下标]}
            注意：list代表的是限域变量名
        获取Map
            获取Map中指定key的value ${map.key}|${map["key"]}
            注意：map代表的是限域变量名
        获取JavaBean对象
          获取JavaBean中的属性
            ${javaBean.属性名|方法名}
            注：JavaBean中的属性字符按必须提供get方法
  --%>

  <%
    //List
    List<String> list = new ArrayList<>();
    list.add("aaa");
    list.add("bbb");
    list.add("ccc");
    request.setAttribute("list",list);
  %>
  <h4>获取List</h4>
  获取List的size:${list.size()}<br>
  获取List的指定下标的值：${list[0]}<br>

  <%
    //Map
    HashMap<String, Object> map = new HashMap<>();
    map.put("aaa","111");
    map.put("bbb",222);
    map.put("ccc",333);
    request.setAttribute("map",map);
  %>
  <h4>获取Map</h4>
  获取Map指定key的value值：${map.aaa} ---${map["bbb"]}

  <%
    //JavaBean
    User user = new User();
    user.setUserId(1);
    user.setUname("顶针");
    user.setUpwd("123");
    request.setAttribute("user",user);
  %>
  <h4>获取JavaBean</h4>
  获取JavaBean：${user.toString()}
</body>
</html>
