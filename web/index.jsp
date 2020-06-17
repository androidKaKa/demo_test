<%--
  Created by IntelliJ IDEA.
  User: maxinghai
  Date: 2020/6/17
  Time: 9:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<% int num =5; %>
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
  <h3>H3 test  </h3>
  <h4>H4 test </h4>

   <font color="red" size="4">
         font test red.....
   </font>


  <p>
      <font color="#ffd700" size="5">
          font test gold.....
      </font>
  </p>


  <br />

  <font color="blue" size="<%= num %>">
      font test blue
  </font><br />

  <p>
    测试if else
  </p>
  <% int number=9;%>




  </body>
</html>
