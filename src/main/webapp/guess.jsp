<%--
  Created by IntelliJ IDEA.
  User: danielmondragon
  Date: 7/20/23
  Time: 11:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Guess a Number</title>
</head>
<body>
    <form action="GuessServlet" method="post">
        <label for="guess">Guess a number between 1 and 3:</label>
        <input type="number" id="guess" name="guess" min="1" max="3">
        <input type="submit" value="Submit">
    </form>
</body>
</html>
