<%--
  Created by IntelliJ IDEA.
  User: danielmondragon
  Date: 7/20/23
  Time: 10:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Pick a Color</title>
</head>
<body>
<form action="PickColorServlet" method="post">
  <label for="color">Enter your favorite color:</label><br/>
  <input type="text" id="color" name="color"><br/>
  <input type="submit" value="Submit">
</form>
</body>
</html>

