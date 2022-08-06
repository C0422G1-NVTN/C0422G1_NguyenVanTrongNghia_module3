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

<div class="sticky-top row">
    <nav class="navbar navbar-expand-lg navbar-light bg-success bg-gradient">
        <div class="container-fluid">
            <a class="navbar-brand text-light" href="/furama">
                <i class="fa-solid fa-house-chimney fs-4 text"></i>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/furama">Home</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Employee
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="/furama?action=listEmployee">List Employee</a></li>
                            <li><a class="dropdown-item" href="/furama?action=createEmployee">Add new Employee</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Customer
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="/furama?action=listCustomer">List Customer</a></li>
                            <li><a class="dropdown-item" href="/furama?action=createCustomer">Add new Customer</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Service
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="/furama?action=listService">List Service</a></li>
                            <li><a class="dropdown-item" href="/furama?action=createService">Add new Service</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#"  role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Contract
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="/furama?action=listContract">List Contract</a></li>
                            <li><a class="dropdown-item" href="/furama?action=createContract">Add new Contract</a></li>
                        </ul>
                    </li>
                </ul>
                <form class="d-flex">
                    <input class="form-control me-1" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-info text-light" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
</div>

<div>
    <div class="col-md-5 bg-light mt-5 p-3" style="margin: auto">
        <h3>Create Contract</h3>
        <form action="/furama?action=insertContract" method="post">
            <div class="mb-3 row">
                <label for="facility" class="col-sm-4 col-form-label">Facility Name</label>
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
                <button class="btn btn-danger" type="button" onclick="location.href='/furuma?action=listContract'">Cancel</button>
                <button class="btn btn-success" type="submit">Create</button>
            </div>
        </form>
    </div>
</div>

</body>
</html>
