<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: danielmondragon
  Date: 7/19/23
  Time: 10:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Login</h1>
<form action="login.jsp" method="post">
    <label for="username">Username:</label>
    <input type="text" id="username" name="username" required>
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required>
    <input type="submit" value="Login">
</form>

<% request.setAttribute("username", true);%>
<% request.setAttribute("password", true);%>
<c:choose>
    <c:when test="${param.username eq 'admin' && param.password eq 'password'}">
        <c:redirect url="profile.jsp" />
    </c:when>
    <c:otherwise>
        <c:if test="${param.username eq 'false' }">
            <p style="color: red;">Invalid username or password. Please try again.</p>
        </c:if>
    </c:otherwise>
</c:choose>


</body>
</html>
