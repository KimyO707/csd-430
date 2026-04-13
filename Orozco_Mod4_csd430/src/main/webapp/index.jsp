<!--
Module 4.2 Programming Assignment
Kimberly Orozco, April 12, 2026
Purpose: JavaBean to store movie data


[CHANGED]
-->
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.BeanBeanBean" %>

<html>
<head>
    <title>Module 4.2 Assignment KO</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>

<h1>What is a movie I enjoyed watching?</h1>  <!-- Title of da page -->
<h2>Avengers: Infinity War!!</h2> <!-- Movie name -->
<p>Here are all the characters and their actor! :D</p>


    <%
    // [CHANGED] Use BEANBEANBEAN instead
    List<BeanBeanBean> movieData = new ArrayList<>();

    movieData.add(new BeanBeanBean("Iron Man", "Robert Downey Jr.", "Hero"));
    movieData.add(new BeanBeanBean("Captain America", "Chris Evans", "Hero"));
    movieData.add(new BeanBeanBean("Wanda Maximoff", "Elizabeth Olsen", "Heroish"));
    movieData.add(new BeanBeanBean("Vision", "Paul Bettany", "Hero"));
    movieData.add(new BeanBeanBean("Spider-Man", "Tom Holland", "Hero"));
    movieData.add(new BeanBeanBean("Thanos", "Josh Brolin", "Villain"));
%>

<!-- making the table -->
<table>
    <tr>
        <th>Character</th>
        <th>Actor</th>
        <th>Role</th>
    </tr>

    <% // [CHANGED] loop loop loop
        for(BeanBeanBean record : movieData){ //using BeanBeanBean here!!!
    %>
    <tr>
        <td><%= record.getCharacter() %></td> <!-- [CHANGED] Changed this instead of the record[0] -->
        <td><%= record.getActor() %></td>
        <td><%= record.getRole() %></td>
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


<p>
    <!-- [CHANGED] -->
    I have 3 field descriptions here! It goes Character, Actor, and Role.
    Character being what their name is in the movie, Actor being who played that character, and Role being if they are a Hero or a Villain!
</p>

</body>
</html>
