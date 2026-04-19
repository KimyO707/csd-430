<%@ page import="java.sql.*" %>

<%--
I have to keep this ;3; it wont work without it and I have no idea why!! This is beyond frustrating :(
--%>
<% // what I was doing here was checking to see if my mysql connector driver was even working and this caught it
    // but I dont know what about it is making this WHOLE thing work :((
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        out.println("Driver is there");
    } catch(Exception e) {
        out.println("Driver FAILED!!!!!!!!!!!!!!");
    }
%>

<html>
<%--
// Module 5.3 Programming Assignment
// Kimberly Orozco, April 19, 2026
// Purpose: To grab movie info from a database and show whatever movie the user picks

--%>
<body>

<h2>See my favorite movies :D</h2>

<form action="showMovie.jsp" method="post">

    <select name="id">

        <%
            Connection conn = null;
            try { // WHYYYY IT DOESNT CONNECT
                conn = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/csd430",
                        "student1",
                        "pass"
                );
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            // grab the IDs pls pls
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT id FROM kimy_movies_data");

            while(rs.next()){
        %>

        <option value="<%= rs.getInt("id") %>">
            <%= rs.getInt("id") %>
        </option>

        <%
            }
            conn.close();
        %>

    </select>

    <br><br>
    <input type="submit" value="View Movie">

</form>

</body>
</html>