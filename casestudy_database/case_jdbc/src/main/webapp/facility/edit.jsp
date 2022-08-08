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
    <%--header--%><%--navbar--%>
    <%@ include file="../layout/header.jsp" %>

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


        <%@ include file="../layout/footer.jsp" %>
<script src="https://kit.fontawesome.com/d6e19ea644.js" crossorigin="anonymous"></script>

</body>
</html>
