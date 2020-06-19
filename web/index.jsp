<%--
  Created by IntelliJ IDEA.
  User: maxinghai
  Date: 2020/6/17
  Time: 9:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.net.*" %>
<html>
<% int num = 5; %>
<head>
    <title>index.jsp</title>
</head>
<body>
<p>
    今天的日期是: <%= (new java.util.Date()).toLocaleString()%>
</p>

<h1>
    <font color="#ffd700" size="6">
        H1 Test font test gold in h1.....
    </font>
</h1>

<h2>H2 test </h2>
<h3>H3 test </h3>
<h4>H4 test </h4>

<font color="red" size="4">
    font test red.....
</font>

<p> 测试分割线</p>
<hr>
<p>
    <font color="#ffd700" size="5">
        font test gold.....
    </font>
</p>


<br/>

<font color="blue" size="<%= num %>">
    font test blue
</font><br/>

<p>
    测试if else
</p>
<% int number = 9;
    String msg;
    if (number < 7) {
        msg = "is week xxx";
    } else {
        msg = "is not a week xxx";
    }
%>
<p> msg <%=msg%>
</p>

<p>测试 out.println</p>
<% out.println("this msg from println");%>

<hr>
<p>循环测试</p>
<% int size = 6;%>
<% for (int index = 0; index < size; index++) {%>
<font color="aqua" size="<%=index%>">
    test for ,size is <%=index%>
</font>
<br>
<%}%>

<h2>include 动作实例 嵌入时间显示 并刷新</h2>
<jsp:include page="date.jsp" flush="true"/>

<hr>
<h2>test form </h2>

<table width="50%" border="3" align="center">
    <tr bgcolor="red">
        <td>name</td>
        <td>age</td>
        <td>level</td>
    </tr>
    <tr>
        <td>lin</td>
        <td>22</td>
        <td>3 L</td>
    </tr>
    <tr>
        <td>linH</td>
        <td>22xx</td>
        <td>3 Lx</td>
    </tr>

</table>
<p> </p>
<hr>
<h2>test form with for cycle</h2>
<table width="100%" border="1" align="center">
<%
    for(int i=0;i<5;i++){
        out.print("<tr><td>" + "name "+i + "</td>\n");
        out.print("<td>" + "age "+i + "</td>\n");
        out.println("<td> " + "value"+i + "</td></tr>\n");
    }
%>
</table>

<p></p>
<hr>
<p>test post </p>
<form action="test_post.jsp" method="POST">
    web name: <input type="text" name="name">
    <br />
    url: <input type="text" name="url" />
    <br />
    <input type="submit" value="提交" />
</form>
<hr>
<p>test checkbox</p>
<form action="dealCheckBox.jsp" method="POST" target="_blank">
    <input type="checkbox" name="google" checked="checked" /> Google
    <input type="checkbox" name="baidu"  checked="checked" /> baidu
    <input type="checkbox" name="taobao" checked="checked" /> taobao
    <input type="submit" value="选择网站" />
</form>

<hr>
<p>read cookies</p>
<%
    Cookie cookie = null;
    Cookie[] cookies = null;
    // 获取 cookies 的数据,是一个数组
    cookies = request.getCookies();
    if( cookies != null ){
        out.println("<h2> 查找 Cookie 名与值</h2>");
        for (int i = 0; i < cookies.length; i++){
            cookie = cookies[i];
            out.print("参数名 : " + cookie.getName());
            out.print("<br>");
            out.print("参数值: " + URLDecoder.decode(cookie.getValue(), "utf-8") +" <br>");
            out.print("------------------------------------<br>");
        }
    }else{
        out.println("<h2>没有发现 Cookie</h2>");
    }
%>
<hr>
<p>test cookie</p>
<form action="test_cookies.jsp" method="GET">
    web name: <input type="text" name="name">
    <br />
    url: <input type="text" name="url" />
    <br />
    <input type="submit" value="提交" />
</form>
</body>
</html>
