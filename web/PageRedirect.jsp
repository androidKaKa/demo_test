<%--
  Created by IntelliJ IDEA.
  User:
  Date: 2020/6/20
  Time: 8:39
  To change this template use File | Settings | File Templates.
  redirect the address
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<html>
<head>
    <title>redirect</title>
</head>
<body>
<%
    // 重定向到新地址
    String site = new String("http://www.baidu.com");
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", site);
%>
</body>
</html>
