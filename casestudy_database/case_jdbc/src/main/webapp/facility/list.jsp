<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 05/08/22
  Time: 12:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="../common/css/bootstrap.css">
    <script src="../common/js/bootstrap.min.js"></script>
</head>
<body>
<%--header--%><%--navbar--%>
<%@ include file="../layout/header.jsp" %>

    <div class="container-fluid">
        <h1 class="display-1 d-flex justify-content-center">FACILITY</h1>
        <div class="col-lg-12 table-bordered m-2 ">
            <table class="table table table-success table-striped">
                <tr>
                    <th scope="col">id</th>
                    <th scope="col">Service Name</th>
                    <th scope="col">Area</th>
                    <th scope="col">Cost</th>
                    <th scope="col">Max People</th>
                    <th scope="col">Rental Type</th>
                    <th scope="col">Facility Type</th>
                    <th scope="col">Standard Room</th>
                    <th scope="col">Description</th>
                    <th scope="col">Pool Area</th>
                    <th scope="col">Number Floor</th>
                    <th scope="col">Facility Free</th>
                    <th scope="col" colspan="2">Actions</th>
                </tr>
                <c:forEach var="fac" items="${listFacility}">
                    <tr>
                        <td>${fac.id}</td>
                        <td>${fac.name}</td>
                        <td>${fac.area}</td>
                        <td>${fac.deposit}</td>
                        <td>${fac.maxPeople}</td>
                        <td>${fac.rentTypeId}</td>
                        <td>${fac.facilityType}</td>
                        <td>${fac.standardRoom}</td>
                        <td>${fac.description}</td>
                        <td>${fac.poolArea}</td>
                        <td>${fac.numberFloor}</td>
                        <td>${fac.facilityFree}</td>
                        <td>
                            <button type="button" class="btn btn-success" data-bs-toggle="modal"
                                    data-bs-target="#edit-modal"
                                    onclick="location.href='/furama?action=showEditFacility&id=${fac.id}'">
                                Edit
                            </button>
                        </td>
                        <td>
                            <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                                    data-bs-target="#exampleModal" onclick="removeFacility(${fac.id})">
                                Delete
                            </button>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
<%--MODAL--%>
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <form action="/furama?action=deleteFacility" method="post">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Delete Facility</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <input type="text" readonly id="deleteId" class="form-control-plaintext" name="id">
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                            <button type="submit" class="btn btn-primary">Delete</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
    function removeFacility(id) {
        document.getElementById("deleteId").value = id;
    }
</script>
<div class="btn btn-success"><a class="text-decoration-none text-white" href="/furama?action=createFacility">Add new service</a></div>
<%--footer--%>
<%@ include file="../layout/footer.jsp" %>
<script src="https://kit.fontawesome.com/d6e19ea644.js" crossorigin="anonymous"></script>

</body>
</html>
