<%--
// Module 8.2 Programming Assignment
// Kimberly Orozco, May 2, 2026
// Purpose: edit and update added
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>



<%
    String id = request.getParameter("id");

    Connection conn = null;
    try { // fkwlangjklwbag connecet
        conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/csd430",
                "student1",
                "pass"
        );
    } catch (SQLException e) {
        throw new RuntimeException(e);
    }
    // ONE movie based on selected dropdown
    PreparedStatement ps = conn.prepareStatement(
            "SELECT * FROM kimy_movies_data WHERE id=?"
    );

    ps.setInt(1, Integer.parseInt(id));

    ResultSet rs = ps.executeQuery();

%>

<html>
<body>

<h2>Movie Details</h2>

<table border="1">

    <!-- table headers -->
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
        <!-- print it outttt -->
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
