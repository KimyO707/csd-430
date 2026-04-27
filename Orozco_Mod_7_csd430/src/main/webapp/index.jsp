<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>


<html>
<body>

<%--
// Module 7.2 Programming Assignment
// Kimberly Orozco, April 25, 2026
// Purpose: add a movie to the database and then show all the movies on the page.
--%>

<!-- trying to make sure the driver actually exists because this broke before -->
<%
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        out.println("Driver is there<br>");
    } catch(Exception e) {
        out.println("Driver FAILED!!!!!!!!!!!!!!");
    }
%>

<h2>Add a Movie :D</h2>

<!-- form to add movie test -->
<!-- WORKED DONT TOUCH-->
<form method="post">
    Title: <input type="text" name="title"><br>
    Year: <input type="number" name="year"><br>
    Genre: <input type="text" name="genre"><br>
    Rating: <input type="text" name="rating"><br>
    Character: <input type="text" name="character"><br>

    <input type="submit" value="Add Movie">
</form>

<hr>

<%
    Connection conn = null;

    try {
        // PLEASE just connect WHYYYYY
        conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/csd430",
                "student1",
                "pass"
        );

        // was there actually something here?
        if(request.getParameter("title") != null){

            PreparedStatement ps = conn.prepareStatement(
                    "INSERT INTO kimy_movies_data (title, release_year, genre, rating, favorite_character) VALUES (?, ?, ?, ?, ?)"
            );

            ps.setString(1, request.getParameter("title"));
            ps.setInt(2, Integer.parseInt(request.getParameter("year")));
            ps.setString(3, request.getParameter("genre"));
            ps.setDouble(4, Double.parseDouble(request.getParameter("rating")));
            ps.setString(5, request.getParameter("character"));

            ps.executeUpdate();
        }

        // now grab EVERYTHING from table
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM kimy_movies_data");

%>

<h2>All Movies</h2>

<table border="1">
    <thead>
    <tr>
        <th>ID</th>
        <th>Title</th>
        <th>Year</th>
        <th>Genre</th>
        <th>Rating</th>
        <th>Character</th>
    </tr>
    </thead>

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

        } catch (Exception e){
            out.println("something broke again :(");
        }
    %>

</table>

</body>
</html>