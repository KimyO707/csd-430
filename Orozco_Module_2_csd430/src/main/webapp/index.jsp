<!-- Module 2.2 Programming Assignment -->
<!-- Kimberly Orozco, March 28 2026 -->
<!-- Purpose: make a page with a table holding data -->

<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>Module 2.2 Assignment KO</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>

<h1>What is a movie I enjoyed watching?</h1> <!-- Title of da page -->
<h2>Avengers: Infinity War!!</h2> <!-- Movie name -->
<p>Here are all the characters and their actor! :D</p>

<%

    List<String[]> movieData = new ArrayList<>();

    // here are the characters I liked the most >:D Key word... Liked. Gulp!
    movieData.add(new String[]{"Iron Man", "Robert Downey Jr.", "Hero"});
    movieData.add(new String[]{"Captain America", "Chris Evans", "Hero"});
    movieData.add(new String[]{"Wanda Maximoff", "Elizabeth Olsen", "Heroish"});
    movieData.add(new String[]{"Vision", "Paul Bettany", "Hero"});
    movieData.add(new String[]{"Spider-Man", "Tom Holland", "Hero"});
    movieData.add(new String[]{"Thanos", "Josh Brolin", "Villain"});
%>


<table> <!-- making the table -->
    <tr>
        <th>Character</th>
        <th>Actor</th>
        <th>Role</th>
    </tr>

    <%
        for(String[] record : movieData){ // to put in the data
    %>
    <tr>
        <td><%= record[0] %></td>
        <td><%= record[1] %></td>
        <td><%= record[2] %></td>
    </tr>
    <%
        }
    %>
</table>

<!-- This is just my little opinion thought thing ;3; -->
<p>
    <!-- I put little gifs here cause I thought it was too bare without it -->
    <span>
        <img src="https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExYWZiNmI1MGw4bjk0MTZmZGw3c2xwOTIyNGxqMDNkenRpYXF4N3UxdSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/gXXFrjHFJIMoqKr8UT/giphy.gif"
             alt="dancing cat"
             width="40"
             style="vertical-align: middle;">
    </span>

    Would Wanda be a hero? hmm I think she is heroish, she is trying her best in that movie! She is my favorite character >:D

    <span>
        <img src="https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExYWZiNmI1MGw4bjk0MTZmZGw3c2xwOTIyNGxqMDNkenRpYXF4N3UxdSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/gXXFrjHFJIMoqKr8UT/giphy.gif"
             alt="dancing cat"
             width="40"
             style="vertical-align: middle;">
    </span>
</p>


</body>
</html>
