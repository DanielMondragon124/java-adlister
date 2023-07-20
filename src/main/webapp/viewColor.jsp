<%--
  Created by IntelliJ IDEA.
  User: danielmondragon
  Date: 7/20/23
  Time: 10:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>View Color</title>
</head>
<body style="background-color: <%= request.getAttribute("color") %>;">
<h1>Your favorite color is <%= request.getAttribute("color") %></h1>
</body>
</html>

