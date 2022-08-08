<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 08/08/22
  Time: 3:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../common/css/bootstrap.min.css">
</head>
<body>

<header>
    <nav class="navbar navbar-light bg-light container-fluid">
        <div class="col-lg-12 d-flex justify-content-between">
            <div class="col-lg-2">
                <a class="navbar-brand justify-content-start" href="#">
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
                    <a class="nav-link active" aria-current="page" href="/furama?action=listEmployee">Employee</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/furama?action=listCustomer">Customer</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/furama?action=listFacility">Facility</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/furama?action=listContract">Contract</a>
                </li>
            </ul>
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-dark" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>


<script src="common/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/d6e19ea644.js" crossorigin="anonymous"></script>
</body>
</html>
