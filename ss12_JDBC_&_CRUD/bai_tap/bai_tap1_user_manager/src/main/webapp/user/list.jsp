<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 01/08/22
  Time: 4:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
</head>
<body>

<nav class="navbar navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand"> <h1>User List</h1></a>
        <form class="d-flex" action="/users?action=search" method="post">
            <input class="form-control me-2" type="text" name="country" placeholder="Nhap Quoc Gia">
            <button>Search</button>
        </form>
    </div>
</nav>

<center>
    <h1>User Management</h1>
    <h2>
        <a href="/users?action=create">Add New User</a>
    </h2>
</center>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of Users</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.country}"/></td>
                <td>
                    <a href="/users?action=edit&id=${user.id}">Edit</a>
                    <a href="/users?action=delete&id=${user.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
<div ><a href="/users?action=sort">Sort By Name</a></div>

</body>
</html>
