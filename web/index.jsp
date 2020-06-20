<%--
  Created by IntelliJ IDEA.
  User:
  Date: 2020/6/17
  Time: 9:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.net.*" %>
<%@ page import="java.io.*,java.util.*" %>
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
<hr>
<h2>test check file </h2>
<input type="file" name="uploadFile" />
<br/><br/>
<input type="submit" value="上传" />

<%
    // 获取session创建时间
    Date createTime = new Date(session.getCreationTime());
    // 获取最后访问页面的时间
    Date lastAccessTime = new Date(session.getLastAccessedTime());

    String title = "test again";
    Integer visitCount = new Integer(0);
    String visitCountKey = new String("visitCount");
    String userIDKey = new String("userID");
    String userID = new String("ABCD");

    // 检测网页是否有新的访问用户
    if (session.isNew()){
        title = "session test";
        session.setAttribute(userIDKey, userID);
        session.setAttribute(visitCountKey,  visitCount);
    } else {
        visitCount = (Integer)session.getAttribute(visitCountKey);
        visitCount += 1;
        userID = (String)session.getAttribute(userIDKey);
        session.setAttribute(visitCountKey,  visitCount);
    }
%>
<hr>
<h1>Session test</h1>

<table border="1" align="center">
    <tr bgcolor="#949494">
        <th>Session 信息</th>
        <th>值</th>
    </tr>
    <tr>
        <td>id</td>
        <td><% out.print( session.getId()); %></td>
    </tr>
    <tr>
        <td>创建时间</td>
        <td><% out.print(createTime); %></td>
    </tr>
    <tr>
        <td>最后访问时间</td>
        <td><% out.print(lastAccessTime); %></td>
    </tr>
    <tr>
        <td>用户 ID</td>
        <td><% out.print(userID); %></td>
    </tr>
    <tr>
        <td>访问次数</td>
        <td><% out.print(visitCount); %></td>
    </tr>
</table>

<hr>
<p> test counter</p>
<%
    Integer hitsCount =
            (Integer)application.getAttribute("hitCounter");
    if( hitsCount ==null || hitsCount == 0 ){
        /* 第一次访问 */
        out.println("welcome to here!");
        hitsCount = 1;
    }else{
        /* 返回访问值 */
        out.println("welcome to here again!");
        hitsCount += 1;
    }
    application.setAttribute("hitCounter", hitsCount);
%>

<p>页面访问量为: <%= hitsCount%></p>

<hr>
<h2> test auto fresh page</h2>
<%
    // 设置每隔5秒刷新一次
    response.setIntHeader("Refresh", 5);
    // 获取当前时间
    Calendar calendar = new GregorianCalendar();
    String am_pm;
    int hour = calendar.get(Calendar.HOUR);
    int minute = calendar.get(Calendar.MINUTE);
    int second = calendar.get(Calendar.SECOND);
    if(calendar.get(Calendar.AM_PM) == 0)
        am_pm = "AM";
    else
        am_pm = "PM";
    String CT = hour+":"+ minute +":"+ second +" "+ am_pm;
    out.println("当前时间为: " + CT + "\n");
%>
</body>
</html>
