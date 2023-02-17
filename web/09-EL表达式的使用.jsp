<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="org.example.pojo.User" %><%--
  Created by IntelliJ IDEA.
  User: Lzx
  Date: 2023/2/17
  Time: 14:12
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
        empty
          判断域对象是否为空
              为空，返回true
              不为空，返回false
          如果域对象是字符串
             不存在的域对象：true
              空字符串：true
              null：true
          如果域对象是List
              null：true
              没有长度的List:true
          如果域对象是Map：
              null：true
              空map对象：true
          如果域对象是JavaBean对象：
              null：true
              空对象：false
          判断域对象不为空
            ${!empty 限域变量名}

  --%>
  <%
      //字符串
    request.setAttribute("str","abc");
    request.setAttribute("str2","");
    request.setAttribute("str3",null);

    //list
    List list1 = new ArrayList<>();
    List list2 = null;
    List list3 = new ArrayList();
    list3.add(1);
    request.setAttribute("list1",list1);
    request.setAttribute("list2",list2);
    request.setAttribute("list3",list3);

    //map
    HashMap map1 = null;
    HashMap map2 = new HashMap();
    HashMap map3 = new HashMap();
    map3.put("aaa","111");
    request.setAttribute("map1",map1);
    request.setAttribute("map2",map2);
    request.setAttribute("map3",map3);

    User user1 = null;
    User user2 = new User();
    User user3 = new User();
    user3.setUname("顶真");
    request.setAttribute("user1",user1);
    request.setAttribute("user2",user2);
    request.setAttribute("user3",user3);


  %>>
  <div>判断字符串是否存在</div>
  ${empty str}<br>
  ${empty str2}<br>
  ${empty str3}<br>
  <hr>
  <div>判断List是否为空</div>
  ${empty list1}<br>
  ${empty list2}<br>
  ${empty list3}<br>
  <hr>
  <div>判断Map是否为空</div>
  ${empty map1}<br>
  ${empty map2}<br>
  ${empty map3}<br>
  <hr>
  <div>判断User是否为空</div>
  ${empty user1}<br>
  ${empty user2}<br>
  ${empty user3}<br>

  <%
    request.setAttribute("a",10);
    request.setAttribute("b",2);
    request.setAttribute("c","aa");
    request.setAttribute("d","bb");
  %>
</body>
</html>
