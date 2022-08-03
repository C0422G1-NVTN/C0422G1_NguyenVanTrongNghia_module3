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
    <link rel="stylesheet" href="common/bootstrap-5.0.2-dist/css/bootstrap.css">
</head>
<body class="bg-secondary">

<nav class="navbar navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand"><h1>User List</h1></a>
        <form class="d-flex" action="/users?action=search" method="post">
            <input class="form-control me-2" type="text" name="country" placeholder="Nhap Quoc Gia">
            <button>Search</button>
        </form>
    </div>
</nav>
<div class="bg-secondary">
<h1>User Management</h1>
<a class="btn btn-success" href="/users?action=create">Add New User</a>
<div class="d-flex justify-content-center ">
    <table class="text-center border bg-white w-75">
        <tr class="border bg-success">
            <th class="text-white">ID</th>
            <th class="text-white">Name</th>
            <th class="text-white">Email</th>
            <th class="text-white">Country</th>
            <th colspan="2" class="border text-white">Actions</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <tr class="border bg-info">
                <td class="border"><c:out value="${user.id}"/></td>
                <td class="border"><c:out value="${user.name}"/></td>
                <td class="border"><c:out value="${user.email}"/></td>
                <td class="border"><c:out value="${user.country}"/></td>
                <td class=" justify-content-center bg-secondary">
                    <a class="btn btn-success text-white text-decoration-none  d-flex justify-content-center"
                       href="/users?action=edit&id=${user.id}">Edit</a>
                </td>
                <td class=" justify-content-center bg-secondary">
                    <button type="button" class="btn btn-danger w-100" data-bs-toggle="modal"
                            data-bs-target="#myModal-${user.id}">
                        Delete
                    </button>
                    <div class="modal" id="myModal-${user.id}">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title">Modal Delete</h4>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                </div>
                                <div class="modal-body">
                                    Có muốn xóa không ?
                                </div>
                                <div class="modal-footer">
                                    <a class="btn btn-danger" href="/users?action=delete&id=${user.id}">Delete</a>

                                    <button type="button" class="btn btn-success" data-bs-dismiss="modal">Close</button>
                                </div>

                            </div>
                        </div>
                    </div>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
<div class="btn btn-success"><a class="text-decoration-none text-white" href="/users?action=sort">Sort By Name</a></div>
<script src="common/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</div>
<a class="btn btn-success" href="/users?action=permission">Add User Permission</a>
</body>
</html>
