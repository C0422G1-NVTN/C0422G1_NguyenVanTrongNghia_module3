<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 27/07/22
  Time: 4:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h2>Product Discount Calculator</h2>
  <form method="post" action="/discount">
    <label>Product: </label><br/>
    <input type="text" name="ProductDescription" placeholder="TEXT" value="0"/><br/>
    <label>List Price: </label><br/>
    <input type="number" name="ListPrice" placeholder="VND" value="0"/><br/>
    <label>Discount Percent: </label><br/>
    <input type="number" name="DiscountPercent" placeholder="RATE" value="0"/><br/>
    <input type = "submit" id = "submit" value = "Converter"/>
  </form>
  </body>
</html>
