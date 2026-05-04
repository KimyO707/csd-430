<%--
// Module 8.2 Programming Assignment
// Kimberly Orozco, May 2, 2026
// Purpose: edit and update added
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.*" %>


<%--
why is it all underlined yellow??? It works sbut its bothering me
--%>
<%
    Connection conn = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/csd430",
            "student1",
            "pass"
    );

    PreparedStatement ps = conn.prepareStatement(
            "UPDATE kimy_movies_data SET title=?, release_year=?, genre=?, rating=?, favorite_character=? WHERE id=?"
    );

    ps.setString(1, request.getParameter("title"));
    ps.setInt(2, Integer.parseInt(request.getParameter("year")));
    ps.setString(3, request.getParameter("genre"));
    ps.setDouble(4, Double.parseDouble(request.getParameter("rating")));
    ps.setString(5, request.getParameter("character"));
    ps.setInt(6, Integer.parseInt(request.getParameter("id")));

    ps.executeUpdate();

    // show updated record
    PreparedStatement ps2 = conn.prepareStatement(
            "SELECT * FROM kimy_movies_data WHERE id=?"
    );

    ps2.setInt(1, Integer.parseInt(request.getParameter("id")));

    ResultSet rs = ps2.executeQuery();
%>

<html>
<body>

<h2>Updated Movie!</h2>
<!-- UPDATEEEE -->
<table border="1">
    <tr>
        <th>ID</th>
        <th>Title</th>
        <th>Year</th>
        <th>Genre</th>
        <th>Rating</th>
        <th>Character</th>
    </tr>

    <%
        while(rs.next()){
    %>

    <tr>
        <td><%= rs.getInt("id") %></td>
        <td><%= rs.getString("title") %></td>
        <td><%= rs.getInt("release_year") %></td>
        <td><%= rs.getString("genre") %></td>
        <td><%= rs.getDouble("rating") %></td>
        <td><%= rs.getString("favorite_character") %></td>
    </tr>

    <%
        }

        conn.close();
    %>

</table>

</body>
</html>
