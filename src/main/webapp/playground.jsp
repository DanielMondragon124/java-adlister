<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: danielmondragon
  Date: 7/18/23
  Time: 3:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Playground</title>
</head>
<body>
    <%! String name = "Mondragon"; %>
    <% name = "Bill";%>
    <h1>Hello <%= name %> </h1>
    <% request.setAttribute("name", "Gregory");%>
    <h1>Hello, ${name}!</h1>
    <h1><%= 1 + 1 %></h1>
    <%@ include file="howdy.jsp" %>
    <% request.setAttribute("writingCode", true);%>
    <c:choose>
        <c:when test="${writingCode}">
            Learning about JSTL!
        </c:when>
        <c:otherwise>
            You suck
        </c:otherwise>
    </c:choose>
<c:if test="${writingCode}">
    Still learning :/
</c:if>
<%! ArrayList<String> names= new ArrayList<>();%>
<% names.add("Angelina");
    names.add("Scarlett");
    names.add("Anna");
    names.add("Gal");
    request.setAttribute("names", names);
%>
    <ul>
<c:forEach items="${names}" var="str">
       <li>${str}</li>
</c:forEach>
    </ul>
</body>
</html>
