<%--
  Created by IntelliJ IDEA.
  User: maxinghai
  Date: 2020/6/18
  Time: 19:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test_post</title>
</head>
<h2>test post method</h2>


<ul>
    <li><p><b>站点名:</b>
        <%
            // 解决中文乱码的问题
            String name = new String((request.getParameter("name")).getBytes("ISO-8859-1"),"UTF-8");
        %>
        <%=name%>
    </p></li>
    <li><p><b>网址:</b>
        <%= request.getParameter("url")%>
    </p></li>
</ul>


<body>

</body>
</html>
