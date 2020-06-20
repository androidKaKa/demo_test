<%--
  Created by IntelliJ IDEA.
  User:
  Date: 2020/6/18
  Time: 8:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>date</title>
</head>
<body>
<p>
    今天的日期是: <%= (new java.util.Date()).toLocaleString()%>
</p>
</body>
</html>
