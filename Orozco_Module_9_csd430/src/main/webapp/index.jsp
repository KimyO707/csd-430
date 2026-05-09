<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>

<html>
<body>

<%--
// Module 9.2 Programming Assignment
// Kimberly Orozco, May 9, 2026
// delete movie records
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

<%
    Connection conn = null;

    try {

        // connect pls
        conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/csd430",
                "student1",
                "pass"
        );

        // delete move THIS IS NEW
        if(request.getParameter("deleteID") != null){

            PreparedStatement deletePS = conn.prepareStatement(
                    "DELETE FROM kimy_movies_data WHERE id=?"
            );

            deletePS.setInt(1,
                    Integer.parseInt(request.getParameter("deleteID"))
            );

            deletePS.executeUpdate(); // bye movie xD
        }

        // grab
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(
                "SELECT * FROM kimy_movies_data"
        );

%>

<h2>All My Movies :D</h2>

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

    <tbody>

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
    %>

    </tbody>

</table>

<br>

<h2>Yes... Delete a Movie from MY list >_></h2>

<%--
This is new!!! This is to delete a movie
--%>
<form method="post">

    <select name="deleteID">

        <%
            Statement stmt2 = conn.createStatement();
            ResultSet rs2 = stmt2.executeQuery(
                    "SELECT id FROM kimy_movies_data"
            );

            // dropdown!!!
            while(rs2.next()){
        %>

        <option value="<%= rs2.getInt("id") %>">
            <%= rs2.getInt("id") %>
        </option>

        <%
            }
        %>

    </select>

    <input type="submit" value="Delete Movie"> <!-- gulp -->

</form>

<%
        conn.close();

    } catch(Exception e){
        out.println("something exploded again :("); // hehe
    }
%>

</body>
</html>