<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 06/08/22
  Time: 11:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../common/css/bootstrap.css">
    <script src="../common/js/bootstrap.min.js"></script>
</head>
<body>
<div class="col-md-5 bg-success mt-5 p-3" style="margin: auto">
    <h3>Edit Contract</h3>
    <form action="/furuma?action=editContract" method="post">
        <div class="mb-3 row">
            <label for="contract-id" class="col-sm-4 col-form-label">Id</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="contract-id" name="id">
            </div>
        </div>
        <div class="mb-3 row">
            <label for="facility" class="col-sm-4 col-form-label">Service Name</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="facility" name="facility_name">
            </div>
        </div>
        <div class="mb-3 row">
            <label for="cus-name" class="col-sm-4 col-form-label">Customer Name</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="cus-name" name="cus-name">
            </div>
        </div>
        <div class="mb-3 row">
            <label for="start-date" class="col-sm-4 col-form-label">Start Date</label>
            <div class="col-sm-8">
                <input type="date" class="form-control" id="start-date">
            </div>
        </div>
        <div class="mb-3 row">
            <label for="end-date" class="col-sm-4 col-form-label">End Date</label>
            <div class="col-sm-8">
                <input type="date" class="form-control" id="end-date">
            </div>
        </div>
        <div class="mb-3 row">
            <label for="deposit" class="col-sm-4 col-form-label">Deposit</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="deposit" name="deposit">
            </div>
        </div>
        <div class="mb-3 row">
            <label for="total-money" class="col-sm-4 col-form-label">Total Money</label>
            <div class="col-sm-8">
                <input type="text" readonly class="form-control" id="total-money" name="total-money">
            </div>
        </div>
        <div class="mb-3 row">
            <label for="attach" class="col-sm-4 col-form-label">Attach Facility</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="attach" name="attach">
            </div>
        </div>
        <div>
            <button class="btn btn-danger" type="button" onclick="location.href='/furama?action=listContract'">Cancel</button>
            <button class="btn btn-success" type="submit">Edit</button>
        </div>
    </form>
</div>
</body>
</html>
