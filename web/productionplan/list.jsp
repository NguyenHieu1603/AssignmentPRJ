
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List of Plans</title>

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
            table {
                width: 80%;
                margin: 0 auto;
                border-collapse: collapse;
                background-color: #fff;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
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
            tr:hover {
                background-color: #f5f5f5;
            }
            button {
                background-color: #4CAF50;
                color: white;
                padding: 10px 20px;
                margin: 20px auto;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                display: block;
            }
            button:hover {
                background-color: #45a049;
            }
            td button {
                background-color: #007BFF;
                color: white;
                padding: 8px 15px;
                margin: 0;
                border: none;
                border-radius: 3px;
                cursor: pointer;
            }
            td button:hover {
                background-color: #0056b3;
            }
        </style>
    </head>
    <body>

        <h2>List of Plans</h2>  

        <!-- Table for List of Plans -->
        <table border="1px">
            <tr>
                <th>Department Name</th>
                <th>Plan Name</th>
                <th>Start Date</th>
                <th>End Date</th>
                <th>Actions</th>
            </tr>
            <c:forEach items="${requestScope.p}" var="plan">
                <tr>
                    <td>${plan.dept.name}</td>
                    <td>${plan.name}</td>
                    <td>${plan.start}</td>
                    <td>${plan.end}</td>
                    <td><button onclick="location.href='/AssignmentPRJ301.HieuNDHE180806/production/plan?id=${plan.id}';">View Detail</button></td>
                </tr>
            </c:forEach>
        </table>

        <!-- Button to Create a New Plan -->
        <button onclick="location.href='/AssignmentPRJ301.HieuNDHE180806/production/plan';">Create New Plan</button>

    </body>
</html>
