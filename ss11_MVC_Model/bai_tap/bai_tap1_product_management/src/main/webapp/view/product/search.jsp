<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 30/07/22
  Time: 2:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Search Product By Name</title>
</head>
<body>
<table border="1px">
    <tr>
        <th>ID</th>
        <th>Tên Sản Phẩm</th>
        <th>Giá Sản Phâm</th>
        <th colspan="2">Update</th>
    </tr>
    <c:forEach var="product" items="${products}" varStatus="status">
        <tr>
            <td>${status.count}</td>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td><a href="/products?action=update&id=${product.id}">Edit</a></td>
            <td><a href="/products?action=delete&id=${product.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
