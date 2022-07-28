<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 28/07/22
  Time: 3:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        h1 {
            text-align: center;
        }
        table {
            border: blanchedalmond;
            width: 1000px;
            height: 400px;
            margin: 0 auto;
            background-color: #ebe6e0;
        }
        td {
            text-align: center;
        }
        img {
            height: 50px;
            width: 50px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
<h1>CustomersList</h1>
<table border="1">
    <tr>
        <th>Name</th>
        <th>BirthDay</th>
        <th>Address</th>
        <th>Picture</th>
    </tr>
    <c:forEach var="customer" items="${customersList}">
    <tr class>
        <td>${customer.getName()}</td>
        <td>${customer.getBirthDay()}</td>
        <td>${customer.getAddress()}</td>
        <td><img src="${customer.getPicture()}" alt=""></td>
    </tr>
    </c:forEach>
</table>
</body>
</html>
