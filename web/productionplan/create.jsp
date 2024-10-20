<%-- 
    Document   : create
    Created on : Oct 16, 2024, 4:45:34 PM
    Author     : sonnt-local
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Plan</title>

        <!-- Internal CSS for Styling -->
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 20px;
            }
            h2 {
                color: #333;
                text-align: center;
            }
            form {
                background-color: #fff;
                padding: 20px;
                margin: 0 auto;
                width: 60%;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                border-radius: 5px;
            }
            input[type="text"], input[type="date"], select {
                width: 100%;
                padding: 10px;
                margin: 10px 0;
                border: 1px solid #ccc;
                border-radius: 5px;
            }
            table {
                width: 100%;
                margin: 20px 0;
                border-collapse: collapse;
            }
            th, td {
                padding: 12px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }
            th {
                background-color: #4CAF50;
                color: white;
            }
            input[type="submit"] {
                background-color: #4CAF50;
                color: white;
                padding: 12px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                width: 100%;
                font-size: 16px;
            }
            input[type="submit"]:hover {
                background-color: #45a049;
            }
        </style>
    </head>
    <body>

        <h2>Create a New Plan</h2>

        <!-- Form for creating a new plan -->
        <form action="plan" method="POST">

            <label for="name">Plan title:</label>
            <input type="text" id="name" name="name"/> <br/>

            <label for="from">From:</label>
            <input type="date" id="from" name="from"/> 

            <label for="to">To:</label>
            <input type="date" id="to" name="to"/> <br/>

            <label for="did">Workshop:</label>
            <select id="did" name="did">
                <c:forEach items="${requestScope.depts}" var="d">
                    <option value="${d.id}">${d.name}</option>
                </c:forEach>
            </select> <br/>

            <!-- Table for products and their details -->
            <table>
                <tr>
                    <th>Product</th>
                    <th>Quantity</th>
                    <th>Cost</th>
                </tr>
                <c:forEach items="${requestScope.products}" var="p">
                    <tr>
                        <td>${p.name}<input type="hidden" value="${p.id}" name="pid"/></td>
                        <td><input type="text" name="quantity${p.id}"/></td>
                        <td><input type="text" name="cost${p.id}"/></td>
                    </tr>
                </c:forEach>
            </table>

            <!-- Submit button -->
            <input type="submit" value="Save"/>

        </form>
    </body>
</html>

