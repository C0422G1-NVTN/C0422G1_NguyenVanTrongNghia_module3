<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 28/07/22
  Time: 4:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h2>Simple Calculator</h2>
<form action="/CalculatorServlet" method="post">
    <label>First Number: </label><br/>
    <input type="number" name="firstNumber" placeholder="Input First Number"/><br/>

        <div>
        <label>Input Operator</label>
        <select name="operator">
            <option value="+">addition</option>
            <option value="-">subtraction</option>
            <option value="*">multiplication</option>
            <option value="/">division</option>
        </select>
    </div>


    <label>Second Number: </label><br/>
    <input type="number" name="secondNumber" placeholder="Input Second Number"/><br/>

    <input type="submit" id="submit" value="Converter"/>
</form>
</body>
</html>
