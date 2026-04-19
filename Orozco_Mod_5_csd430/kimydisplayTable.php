<?php
// Module 5.2 Programming Assignment
// Kimberly Orozco, April 18, 2026
// Purpose: making and connecting a database

$conn = new mysqli("localhost", "student1", "pass", "csd430"); // connect to data bases

if ($conn->connect_error) {
    die("Connection died :( " . $conn->connect_error);
}


$sql = "SELECT * FROM kimy_movies_data"; 
$result = $conn->query($sql);

echo "<h2>My TOP 10 Movies!!</h2>";
echo "<h3>You should watch any time you are bored >:D</h3>";

if ($result->num_rows > 0) {
    echo "<table border='1'>";
    echo "<tr>
            <th>ID</th>
            <th>Title</th>
            <th>Year</th>
            <th>Genre</th>
            <th>Rating</th>
            <th>Character</th>
          </tr>";

    while ($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>" . $row['id'] . "</td>
                <td>" . $row['title'] . "</td>
                <td>" . $row['release_year'] . "</td>
                <td>" . $row['genre'] . "</td>
                <td>" . $row['rating'] . "</td>
                <td>" . $row['favorite_character'] . "</td>
              </tr>";
    }

    echo "</table>";

} else {
    echo "No data found :(";
}

$conn->close();
?>