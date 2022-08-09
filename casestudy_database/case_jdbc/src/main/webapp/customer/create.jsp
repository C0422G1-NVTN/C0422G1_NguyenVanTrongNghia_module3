<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Manager</title>
    <link rel="stylesheet" href="../common/css/bootstrap.css">
    <script src="../common/js/bootstrap.min.js"></script>
</head>
<body>

<%@ include file="../layout/header.jsp" %>

<div>
    <div class="col-md-5 bg-light mt-5 p-3" style="margin: auto">
        <h3>Create Customer</h3>
        <form action="/furama?action=createCustomer" method="post">
            <div class="mb-3 row">
                <label for="id" class="col-sm-4 col-form-label">Id</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="id" name="id">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="inputTypeId" class="col-sm-4 col-form-label">Type id</label>
                <div class="col-sm-8">
<%--                    <input type="text" class="form-control" id="inputTypeId" name="typeCustomerId">--%>
            <select class="form-control" name="typeCustomerId" id="inputTypeId">
                <option value="1">Diamond</option>
                <option value="2">Platinum</option>
                <option value="3">Gold</option>
                <option value="4">Silver</option>
                <option value="5">Member</option>
            </select>
                </div>
            </div>
            <div>
            <div class="mb-3 row">
                <label for="static-name" class="col-sm-4 col-form-label">Name</label>
                <div class="col-sm-8">
                    <input type="text" required class="form-control" id="static-name" name="name">
<%--                    <c:if test="${message != null}">--%>
<%--                        <p class="text-danger" >${message.get("name")}</p>--%>
<%--                    </c:if>--%>
                    <p class="text-danger" >${name}</p>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="staticDate" class="col-sm-4 col-form-label">Date of birth</label>
                <div class="col-sm-8">
                    <input type="date" required class="form-control" id="staticDate" name="dateOfBirth">
<%--                    <c:if test="${message != null}">--%>
<%--                        <p class="text-danger" >${message.get("dateOfBirth")}</p>--%>
<%--                    </c:if>--%>
                    <p class="text-danger" >${dateOfBirth}</p>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="gender" class="col-sm-4 col-form-label">Gender</label>
                <div class="col-sm-8">
                    <div class="form-check" id="gender">
                        <input class="form-check-input" type="radio" name="gender" value="1" id="flexRadioDefault1">
                        <label class="form-check-label" for="flexRadioDefault1">
                            Male
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="gender" value="0" id="flexRadioDefault2" checked>
                        <label class="form-check-label" for="flexRadioDefault2">
                            Female
                        </label>
                    </div>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="id-card" class="col-sm-4 col-form-label">id Card</label>
                <div class="col-sm-8">
                    <input type="text" required class="form-control" id="id-card" name="idCard">
<%--                    <c:if test="${message != null}">--%>
<%--                        <p class="text-danger">${message.get("idCard")}</p>--%>
<%--                    </c:if>--%>
                    <p class="text-danger" >${idCard}</p>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="phone" class="col-sm-4 col-form-label">Phone number</label>
                <div class="col-sm-8">
                    <input type="text" required class="form-control" id="phone" name="phoneNumber">
<%--                    <c:if test="${message != null}">--%>
<%--                        <p class="text-danger" >${message.get("phoneNumber")}</p>--%>
<%--                    </c:if>--%>
                    <p class="text-danger" >${phoneNumber}</p>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="email" class="col-sm-4 col-form-label">Email</label>
                <div class="col-sm-8">
                    <input type="text" required class="form-control" id="email" name="email">
<%--                    <c:if test="${message != null}">--%>
<%--                        <p class="text-danger" >${message.get("email")}</p>--%>
<%--                    </c:if>--%>
                    <p class="text-danger" >${email}</p>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="address" class="col-sm-4 col-form-label">Address</label>
                <div class="col-sm-8">
                    <input type="text" required class="form-control" id="address" name="address">
                </div>
            </div>
            <div>
                <button class="btn btn-danger" type="button" onclick="location.href='/furama?action=listCustomer'">Cancel</button>
                <button class="btn btn-success" type="submit">Add</button>
            </div>
            </div>
        </form>
        <c:if test="${message != null}">
        <div class="col-md-5 bg-light mt-5 p-3 text-center" style="margin: auto">
            <h1>${message}</h1>
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="location.href='/furama?action=listCustomer'">Back</button>
        </div>
        </c:if>

        <%@ include file="../layout/footer.jsp" %>
        <script src="https://kit.fontawesome.com/8a4e8d8d08.js" crossorigin="anonymous"></script>
</body>
</html>
