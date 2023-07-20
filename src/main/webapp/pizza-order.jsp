<%--
  Created by IntelliJ IDEA.
  User: danielmondragon
  Date: 7/20/23
  Time: 9:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Pizza Order</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/pizza" method="post">
  <%--@declare id="toppings"--%><h2>Pizza Order</h2>

  <label for="crust">Crust Type:</label>
  <select name="crust" id="crust">
    <option value="thin">Thin</option>
    <option value="thick">Thick</option>
    <!-- Add more options as needed -->
  </select><br/>

  <label for="sauce">Sauce Type:</label>
  <select name="sauce" id="sauce">
    <option value="tomato">Tomato</option>
    <option value="cream">Cream</option>
    <!-- Add more options as needed -->
  </select><br/>

  <label for="size">Size:</label>
  <select name="size" id="size">
    <option value="small">Small</option>
    <option value="medium">Medium</option>
    <option value="large">Large</option>
  </select><br/>

  <label for="toppings">Toppings:</label><br/>
  <input type="checkbox" name="toppings" value="Pepperoni">Pepperoni<br/>
  <input type="checkbox" name="toppings" value="Mushrooms">Mushrooms<br/>
  <!-- Add more options as needed -->

  <label for="address">Delivery Address:</label><br/>
  <input type="text" id="address" name="address"><br/>

  <input type="submit" value="Order">
</form>
</body>
</html>
