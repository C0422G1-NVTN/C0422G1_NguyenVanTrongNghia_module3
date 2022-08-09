<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Management</title>
    <link rel="stylesheet" href="../common/css/bootstrap.css">
    <script src="../common/js/bootstrap.min.js"></script>
</head>
<body>
<%--header--%>
<%--navbar--%>

<%@ include file="../layout/header.jsp" %>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <a href="/furama?action=showCreateCustomer" class="btn btn-success">Add new customer</a>
            <input type="search" placeholder="Search" name="searchNamePhoneTypeCustomer">
        </div>
    </div>
</div>

<div class="container" style="margin-top: 20px">
    <div class="row">
        <div class="col-md-12">
            <table class="table">
                <thead>
                <tr class="table-dark">
                    <th scope="col">id</th>
                    <th scope="col">type id</th>
                    <th scope="col">Name</th>
                    <th scope="col">Birthday</th>
                    <th scope="col">Gender</th>
                    <th scope="col">Identify Card</th>
                    <th scope="col">Phone Number</th>
                    <th scope="col">Email</th>
                    <th scope="col">Address</th>
                    <th scope="col" colspan="2" style="text-align: center">Action</th>
                </tr>
                </thead>
                <c:forEach var="customer" items="${listCustomer}">
                    <tr class="table-light">
                        <td>${customer.id}</td>
                        <td>${customer.typeCustomerId}</td>
                        <td>${customer.name}</td>
                        <td>${customer.dateOfBirth}</td>
                        <td>${customer.gender}</td>
                        <td>${customer.idCard}</td>
                        <td>${customer.phoneNumber}</td>
                        <td>${customer.email}</td>
                        <td>${customer.address}</td>
                        <td>
                            <button type="button" class="btn btn-success" data-bs-toggle="modal"
                                    data-bs-target="#edit-modal"
                                    onclick="location.href='/furama?action=showEditCustomer&id=${customer.id}'">
                                Edit
                            </button>
                        </td>
                        <td>
                            <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                                    data-bs-target="#exampleModal" onclick="removeCustomer('${customer.id}')">
                                Delete
                            </button>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <form action="/furama?action=deleteCustomer" method="post">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Delete Customer</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <input type="text" id="deleteId" readonly name="id" class="form-control-plaintext">

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                            <button type="submit" class="btn btn-primary">Delete</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <script>
            function removeCustomer(id) {
                document.getElementById("deleteId").value = id;
            }
        </script>

        <%--        footer--%>
        <%@ include file="../layout/footer.jsp" %>
        <script src="/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>
    </div>
</div>
</body>
</html>
