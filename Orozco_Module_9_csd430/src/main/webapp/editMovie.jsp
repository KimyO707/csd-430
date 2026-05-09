<%--
// Module 8.2 Programming Assignment
// Kimberly Orozco, May 2, 2026
// Purpose: edit and update added
--%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="static java.sql.DriverManager.getConnection" %>


<%
    String id = request.getParameter("id");

    Connection conn = getConnection(
            "jdbc:mysql://localhost:3306/csd430",
            "student1",
            "pass"
    );

    PreparedStatement ps = conn.prepareStatement(
            "SELECT * FROM kimy_movies_data WHERE id=?"
    );

    ps.setInt(1, Integer.parseInt(id));

    ResultSet rs = ps.executeQuery();

    rs.next(); // we only expect ONE row >:D
%>

<html>
<body>

<h2>Edit Movie</h2>

<form action="updateMovie.jsp" method="post">

    Movie ID: <%= rs.getInt("id") %> <!-- show id -->
    <input type="hidden" name="id" value="<%= rs.getInt("id") %>">
    <br><br>

    <!-- edit ALLL of this -->
    Title: <input type="text" name="title" value="<%= rs.getString("title") %>"><br>
    Year: <input type="number" name="year" value="<%= rs.getInt("release_year") %>"><br>
    Genre: <input type="text" name="genre" value="<%= rs.getString("genre") %>"><br>
    Rating: <input type="text" name="rating" value="<%= rs.getDouble("rating") %>"><br>
    Character: <input type="text" name="character" value="<%= rs.getString("favorite_character") %>"><br>

    <br>
    <input type="submit" value="Update Movie">

</form>

</body>
</html>
