<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 29/07/22
  Time: 8:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Product List</title>
    <link rel="stylesheet" href="bootstrap-5.0.2-dist\css\bootstrap.css">
</head>
<body>
<nav class="navbar navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand"> <h1>Product List</h1></a>
        <form class="d-flex" action="/products?action=search" method="post">
            <input class="form-control me-2" type="text" name="search" placeholder="search" aria-label="search">
            <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
    </div>
</nav>
<h1>Products</h1>
<p>
    <a href="/products?action=add">Create new product</a>
</p>
<table border="1">
    <tr>
        <td>Name</td>
        <td>Price</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${products}' var="product">
        <tr>
            <td><a href="/products?action=view&id=${product.id}">${product.name}</a></td>
            <td>${product.price}</td>
            <td><a href="/products?action=edit&id=${product.id}">edit</a></td>
            <td><a href="/products?action=delete&id=${product.id}">delete</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
