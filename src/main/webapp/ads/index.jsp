<%--
  Created by IntelliJ IDEA.
  User: danielmondragon
  Date: 7/21/23
  Time: 9:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Products Listing</title>
</head>
<body>
<h1>Products Listing</h1>
<table>
    <tr>
        <th>Product Name</th>
        <th>Product Price</th>
    </tr>
    <c:forEach var="product" items="${products}">
        <tr>
            <td>${product.name}</td>
            <td>${product.price}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>


