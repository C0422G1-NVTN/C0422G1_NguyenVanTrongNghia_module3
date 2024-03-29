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
<%--header--%>
<%--navbar--%>
<%@ include file="../layout/header.jsp" %>

<h1>New Form Service</h1>
<h2>
    <a href="/ServicesServlet?action=listfurama">List All Users</a>
</h2>

<div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 bg-success border-success d-flex justify-content-center align-content-center">
                <form method="post" action="/furama?action=create-Facility">
                    <table class="form-control-lg">
                        <tr>

                            <td><label>Service Name:</label>
                                <select class="form-select-lg" name="facilityType" onchange="showServiceInput(this.value)">
                                    <option value="None">Chọn loại dịch vụ</option>
                                    <option value="1">Villa</option>
                                    <option value="2">House</option>
                                    <option value="3">Room</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td><label>Id:</label>
                                <input class="form-control" type="text" name="id" size="45"/>
                            </td>
                        </tr>
                        <tr>
                            <td><label>Name:</label>
                                <input class="form-control" type="text" name="name" size="45"/>
                                <c:if test="${message != null}">
                                    <p class="text-danger" >${message.get("name")}</p>
                                </c:if>
                            </td>
                        </tr>
                        <tr>

                            <td><label>Area:</label>
                                <input class="form-control" type="text" name="area" size="45"/>
                            </td>
                        </tr>
                        <tr>

                            <td><label>Cost:</label>
                                <input class="form-control" type="text" name="deposit" size="15"/>
                            </td>
                        </tr>
                        <tr>

                            <td><label>Max People:</label>
                                <input class="form-control" type="text" name="maxPeople" size="15"/>
                                <c:if test="${message != null}">
                                    <p class="text-danger" >${message.get("maxPeople")}</p>
                                </c:if>
                            </td>
                        </tr>
                        <tr>

                            <td><label>Rent Type Id:</label>
                                <input class="form-control" type="text" name="rentTypeId" size="15"/>
                            </td>
                        </tr>

                        <tr id="s1" style="display: none">

                            <td><label>Tiêu chuẩn phòng:</label>
                                <input class="form-control" type="text" name="standard_room" size="15"/>
                            </td>
                        </tr>

                        <tr id="s2" style="display: none"  >

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
                                <c:if test="${message != null}">
                                    <p class="text-danger" >${message.get("number_floor")}</p>
                                </c:if>
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
    function showServiceInput(value) {

        switch (value) {
            case "None":
                document.getElementById("s1").style.display = "none";
                document.getElementById("s2").style.display = "none";
                document.getElementById("s3").style.display = "none";
                document.getElementById("s4").style.display = "none";
                document.getElementById("s5").style.display = "none";
                break;
            case "1":
                document.getElementById("s1").style.display = "table-row";
                document.getElementById("s2").style.display = "table-row";
                document.getElementById("s3").style.display = "table-row";
                document.getElementById("s4").style.display = "table-row";
                document.getElementById("s5").style.display = "none";
                break;
            case "2":
                document.getElementById("s1").style.display = "table-row";
                document.getElementById("s2").style.display = "table-row";
                document.getElementById("s3").style.display = "table-row";
                document.getElementById("s4").style.display = "none";
                document.getElementById("s5").style.display = "none";
                break;
            case "3":
                document.getElementById("s1").style.display = "none";
                document.getElementById("s2").style.display = "none";
                document.getElementById("s3").style.display = "none";
                document.getElementById("s4").style.display = "none";
                document.getElementById("s5").style.display = "table-row";
                break;

        }
    }
</script>
<%--footer--%>
<%@ include file="../layout/footer.jsp" %>

<script src="https://kit.fontawesome.com/d6e19ea644.js" crossorigin="anonymous"></script>

</body>
</html>
