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
    <style>
        #bg-img1 {
            background-image: url(https://img.freepik.com/free-vector/hand-painted-watercolor-abstract-watercolor-background_23-2149018550.jpg?w=2000);
            background-size: 100%;
        }
    </style>
</head>
<body>

<%--header--%><%--navbar--%>
<%@ include file="../layout/header.jsp" %>


<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="https://pix6.agoda.net/hotelImages/109/10953/10953_16030216470040397599.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="http://thuevilla.com/wp-content/uploads/2018/10/Furama-Resort-Danang-800x600.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="https://media.baodautu.vn/Images/phongvien/2016/05/24/giao-luu1.jpg" class="d-block w-100" alt="...">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12 d-flex">
            <div class="col-lg-4">
                <h2>KHU NGHỈ DƯỠNG ĐẲNG CẤP THẾ GIỚI, FURAMA ĐÀ NẴNG, NỔI TIẾNG LÀ KHU NGHỈ DƯỠNG ẨM THỰC TẠI VIỆT NAM.</h2>
            </div>
            <div class="col-lg-4">
                <iframe width="370" height="280" src="https://www.youtube.com/embed/k7Ui01pVryo"
                        title="Furama Resort Danang | A New MICE and Wedding Destination For Indian" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
            </div>
            <div class="col-lg-4">
                <p class="text-dark">Hướng ra bãi biển Đà Nẵng trải dài cát trắng,Furama Resort Đà Nẵng là cửa ngõ đến với 3 di sản văn hoá
                    thế giới: Hội An (20 phút), Mỹ Sơn (90 phút) và Huế (2 tiếng. 196 phòng hạng sang cùng với 70 căn biệt
                    thự từ hai đến bốn phòng ngủ có hồ bơi riêng đều được trang trí trang nhã, theo phong cách thiết kế
                    truyền thống của Việt Nam và kiến trúc thuộc địa của Pháp, biến Furama thành khu nghỉ dưỡng danh giá
                    nhất tại Việt Nam – vinh dự được đón tiếp nhiều người nổi tiếng, giới hoàng gia, chính khách, ngôi sao
                    điện ảnh và các nhà lãnh đạo kinh doanh quốc tế.
                </p>
            </div>
        </div>

    </div>
</div>




<%@ include file="../layout/footer.jsp" %>

<script src="common/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/d6e19ea644.js" crossorigin="anonymous"></script>
</body>
</html>
