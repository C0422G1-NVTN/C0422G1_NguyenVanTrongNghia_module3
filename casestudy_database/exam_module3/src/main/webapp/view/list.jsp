<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 10/08/22
  Time: 9:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>List</title>
    <link rel="stylesheet" href="../common/css/bootstrap.min.css">
    <link rel="stylesheet" href="../datatables/css/dataTables.bootstrap5.min.css">
    <script src="../common/js/bootstrap.min.js"></script>

</head>
<body>
<%@ include file="../layout/header.jsp" %>

<div class="container" style="margin-top: 20px">
    <div class="row">
        <div class="col-md-12">
            <table class="table" id="phantrang">
                <thead>
                <tr class="table-dark">
                    <th scope="col">id</th>
                    <th scope="col">Tieu de</th>
                    <th scope="col">Loai Bai Hoc</th>
                    <th scope="col">Do Kho</th>
                    <th scope="col">Module</th>
                    <th scope="col">Link Bai Hoc</th>
                    <th scope="col">Ten Module</th>
                    <th scope="col" colspan="2" style="text-align: center">Action</th>
                </tr>
                </thead>
                <c:forEach var="baiHoc" items="${listBaiHoc}">
                    <tr class="table-light">
                        <td>${baiHoc.id}</td>
                        <td>${baiHoc.tieuDe}</td>
                        <td>${baiHoc.loaiBai}</td>
                        <td>${baiHoc.doKho}</td>
                        <td>${baiHoc.maModule}</td>
                        <td>${baiHoc.linkBaiHoc}</td>
                        <td>${baiHoc.tenModule}</td>

                        <td>
                            <button type="button" class="btn btn-success" data-bs-toggle="modal"
                                    data-bs-target="#edit-modal"
                                    onclick="location.href='/furama?action=showEditCustomer&id=${baiHoc.id}'">
                                Edit
                            </button>
                        </td>
                        <td>
                            <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                                    data-bs-target="#exampleModal" onclick="removeBaiHoc('${baiHoc.id}')">
                                Delete
                            </button>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <form action="/BaiHoc?action=deleteBaiHoc" method="post">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Delete Customer</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <h1>Ban muon xoa khong</h1>
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
            function removeBaiHoc(id) {
                document.getElementById("deleteId").value = id;
            }
        </script>
    </div>
</div>
<%@ include file="../layout/footer.jsp" %>
<script src="https://kit.fontawesome.com/8a4e8d8d08.js" crossorigin="anonymous"></script>
<script src="../jquery/jquery-3.5.1.min.js"></script>
<script src="../datatables/js/jquery.dataTables.min.js"></script>
<script src="../datatables/js/dataTables.bootstrap5.min.js"></script>
<script src="../common/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function() {
        $('#phantrang').dataTable( {
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        } );
    } );

</script>
</body>
</html>
