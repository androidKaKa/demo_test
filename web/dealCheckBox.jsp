<%--
  Created by IntelliJ IDEA.
  User:
  Date: 2020/6/19
  Time: 8:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>读取所有表单参数</h1>
<table width="100%" border="1" align="center">
    <tr bgcolor="#949494">
        <th>参数名</th><th>参数值</th>
    </tr>
    <%
        Enumeration paramNames = request.getParameterNames();
             while(paramNames.hasMoreElements()) {
            String paramName = (String)paramNames.nextElement();
            out.print("<tr><td>" + paramName + "</td>\n");
            String paramValue = request.getParameter(paramName);
            out.println("<td> " + paramValue + "</td></tr>\n");
        }
    %>
</table>

</body>
</html>
