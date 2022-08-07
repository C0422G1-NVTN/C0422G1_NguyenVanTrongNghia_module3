<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 05/08/22
  Time: 12:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../common/css/bootstrap.css">
    <script src="../common/js/bootstrap.min.js"></script>
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
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Employee</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Customer</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Service</a>
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

<h1>New Form Service</h1>
<h2>
    <a href="/ServicesServlet?action=listFacility">List All Facility</a>
</h2>

<div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 bg-success border-success d-flex justify-content-center align-content-center">
                <form method="post">
                    <table class="form-control-lg">
                        <tr>

                            <td><label>Service Name:</label>
                                <select class="form-select-lg" onchange="showServiceEdit(this.value)">
                                    <option value="None">Chọn loại dịch vụ</option>
                                    <option value="Villa">Villa</option>
                                    <option value="House">House</option>
                                    <option value="Room">Room</option>
                                </select>
                            </td>
                        </tr>
                        <tr>

                            <td><label>Name:</label>
                                <input class="form-control" type="text" name="name" size="45"/>
                            </td>
                        </tr>
                        <tr>

                            <td><label>Area:</label>
                                <input class="form-control" type="text" name="area" size="45"/>
                            </td>
                        </tr>
                        <tr>

                            <td><label>Cost:</label>
                                <input class="form-control" type="text" name="cost" size="15"/>
                            </td>
                        </tr>
                        <tr>

                            <td><label>Max People:</label>
                                <input class="form-control" type="text" name="maxPeople" size="15"/>
                            </td>
                        </tr>
                        <tr>

                            <td><label>Rent Type Id:</label>
                                <input class="form-control" type="text" name="type" size="15"/>
                            </td>
                        </tr>

                        <tr id="s1" style="display: none">

                            <td><label>Tiêu chuẩn phòng:</label>
                                <input class="form-control" type="text" name="standard_room" size="15"/>
                            </td>
                        </tr>

                        <tr id="s2" style="display: none">

                            <td><label>Mô tả tiện nghi khác:</label>
                                <input class="form-control" type="text" name="description_other_convenience" size="15"/>
                            </td>
                        </tr>

                        <tr id="s3" style="display: none">

                            <td><label>Diện tích hồ bơi:</label>
                                <input class="form-control" type="text" name="pool_area" size="15"/>
                            </td>
                        </tr>

                        <tr id="s4" style="display: none">

                            <td><label>Số tầng:</label>
                                <input class="form-control" type="text" name="number_floor" size="15"/>
                            </td>
                        </tr>

                        <tr id="s5" style="display: none">

                            <td><label>Dịch vụ miễn phí đi kèm:</label>
                                <input class="form-control" type="text" name="facility_free" size="15"/>
                            </td>
                        </tr>

                        <tr>
                            <td colspan="2" align="center">
                                <input class="form-control" type="submit" value="Save"/>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>

</div>
<script>
    function showServiceEdit(value) {

        switch (value) {
            case "None":
                document.getElementById("s1").style.display = "none";
                document.getElementById("s2").style.display = "none";
                document.getElementById("s3").style.display = "none";
                document.getElementById("s4").style.display = "none";
                document.getElementById("s5").style.display = "none";
                break;
            case "Villa":
                document.getElementById("s1").style.display = "table-row";
                document.getElementById("s2").style.display = "table-row";
                document.getElementById("s3").style.display = "table-row";
                document.getElementById("s4").style.display = "table-row";
                document.getElementById("s5").style.display = "none";
                break;
            case "House":
                document.getElementById("s1").style.display = "table-row";
                document.getElementById("s2").style.display = "table-row";
                document.getElementById("s3").style.display = "table-row";
                document.getElementById("s4").style.display = "none";
                document.getElementById("s5").style.display = "none";
                break;
            case "Room":
                document.getElementById("s1").style.display = "none";
                document.getElementById("s2").style.display = "none";
                document.getElementById("s3").style.display = "none";
                document.getElementById("s4").style.display = "none";
                document.getElementById("s5").style.display = "table-row";
                break;

        }
    }
</script>


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
