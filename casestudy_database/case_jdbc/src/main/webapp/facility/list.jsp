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

<div style="background-image: url(https://s3-ap-southeast-1.amazonaws.com/viettrip/Products/bdbb3094-7e0f-4c05-8f97-821c5258ff8e/123116_21032019_furama-villas-da-nang-2.jpg)">
    <header>
        <nav class="navbar navbar-light bg-light container-fluid">
            <div class="col-lg-12 d-flex justify-content-between">
                <div class="col-lg-2">
                    <a class="navbar-brand justify-content-start" href="/furama?action=home">
                        <img src="https://cdn.nhanlucnganhluat.vn/uploads/images/051D288B/logo/2018-12/Logo-FURAMA-RESORT.jpg"
                             alt="" width="80" height="90">
                    </a>
                </div>
                <div class="col-lg-6">
                </div>
                <div class="col-lg-4">
                    <p class="text-sm-start  ">Nguyễn Văn Trọng Nghĩa - C0422G1
                        Địa chỉ: 105 Võ Nguyên Giáp, Street, Ngũ Hành Sơn, Đà Nẵng 550000
                        Các giờ:
                        Mở cả ngày
                        Doanh nghiệp này xác nhận 5 tuần trước
                        Điện thoại: 0236 3847 333
                    </p>
                </div>

            </div>


        </nav>
    </header>
    <nav class="navbar navbar-expand-lg navbar-light bg-success sticky-top">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/furama?action=home">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/furama?action=home">Employee</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/furama?action=home">Customer</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/furama?action=listFacility">Facility</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Contract</a>
                    </li>
                </ul>
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-dark" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
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
                <c:forEach var="fac" items="${facilityList}">
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
                            <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#edit-modal" onclick="location.href='/furuma?action=edit_facility&id=${fac.id}'">
                                Edit
                            </button>
                        </td>
                        <td>
                            <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal" onclick="removeFacility(${fac.id})">
                                Delete
                            </button>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
<%--MODAL--%>
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <form action="/furuma?action=delete">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Delete Facility</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <input type="text" readonly id="deleteId" class="form-control-plaintext">
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

<div class="btn btn-success"><a class="text-decoration-none text-white" href="/furama?action=createFacility">Add new service</a></div>
<footer class="text-center text-white" style="background: #f1f1f1;">
    <!-- Grid container -->
    <div class="container pt-4">
        <!-- Section: Social media -->
        <section class="mb-4">
            <!-- Facebook -->
            <a
                    class="btn btn-link btn-floating btn-lg text-dark m-1"
                    href="#!"
                    role="button"
                    data-mdb-ripple-color="dark"
            ><i class="fab fa-facebook-f"></i
            ></a>

            <!-- Twitter -->
            <a
                    class="btn btn-link btn-floating btn-lg text-dark m-1"
                    href="#!"
                    role="button"
                    data-mdb-ripple-color="dark"
            ><i class="fab fa-twitter"></i
            ></a>

            <!-- Google -->
            <a
                    class="btn btn-link btn-floating btn-lg text-dark m-1"
                    href="#!"
                    role="button"
                    data-mdb-ripple-color="dark"
            ><i class="fab fa-google"></i
            ></a>

            <!-- Instagram -->
            <a
                    class="btn btn-link btn-floating btn-lg text-dark m-1"
                    href="#!"
                    role="button"
                    data-mdb-ripple-color="dark"
            ><i class="fab fa-instagram"></i
            ></a>

            <!-- Linkedin -->
            <a
                    class="btn btn-link btn-floating btn-lg text-dark m-1"
                    href="#!"
                    role="button"
                    data-mdb-ripple-color="dark"
            ><i class="fab fa-linkedin"></i
            ></a>
            <!-- Github -->
            <a
                    class="btn btn-link btn-floating btn-lg text-dark m-1"
                    href="#!"
                    role="button"
                    data-mdb-ripple-color="dark"
            ><i class="fab fa-github"></i
            ></a>
        </section>
        <!-- Section: Social media -->
    </div>
    <!-- Grid container -->

    <!-- Copyright -->
    <div class="text-center text-dark p-3" style="background-color: rgba(0, 0, 0, 0.2);">
        © 2020 Copyright:
        <a class="text-dark" href="https://mdbootstrap.com/">MDBootstrap.com</a>
    </div>
    <!-- Copyright -->
</footer>

<script src="https://kit.fontawesome.com/d6e19ea644.js" crossorigin="anonymous"></script>

</body>
</html>
