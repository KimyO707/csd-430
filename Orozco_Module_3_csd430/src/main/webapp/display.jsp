<%--
<!-- Module 3.2 Programming Assignment -->
<!-- Kimberly Orozco, April 4 2026 -->
<!-- Purpose: make a page with a form  -->
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Feedback Results</title>
    <link rel="stylesheet" href="style.css"> <!-- Get my CSS ;3;  -->
</head>
<body>

<h2>Your Feedback Summary!</h2>
<p>Here's what you told us!</p>

<!-- get the input infooo  -->
<%
    String name = request.getParameter("name");
    String food = request.getParameter("food");
    String rating = request.getParameter("rating");
    String service = request.getParameter("service");
    String comeBack = request.getParameter("return");
    String comments = request.getParameter("comments");

    // OMG THIS MAKES IT SO IT SAYS NON
    if (comeBack == null) {
        comeBack = "No U_U";
    }
%>

<!-- Making the table  -->
<table>
    <tr>
        <th>Field</th>
        <th>Your Answer</th>
    </tr>

    <tr>
        <td>Name</td>
        <td><%= name %></td>
    </tr>

    <tr>
        <td>Favorite Food</td>
        <td><%= food %></td>
    </tr>

    <tr>
        <td>Rating</td>
        <td><%= rating %> star</td>
    </tr>

    <tr>
        <td>Service</td>
        <td><%= service %></td>
    </tr>

    <tr>
        <td>Come Back?</td>
        <td><%= comeBack %></td>
    </tr>

    <tr>
        <td>Comments</td>
        <td><%= comments %></td>
    </tr>
</table>

</body>
</html>
