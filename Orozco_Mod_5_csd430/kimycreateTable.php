<?php
// Module 5.2 Programming Assignment
// Kimberly Orozco, April 18, 2026
// Purpose: making and connecting a database

$conn = new mysqli("localhost", "student1", "pass", "csd430"); // connect to data bases

if ($conn->connect_error) {
    die("Connection died :( " . $conn->connect_error);
}

$sql = "CREATE TABLE kimy_movies_data ( # making the table
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    release_year INT NOT NULL,
    genre VARCHAR(255) NOT NULL,
    rating DECIMAL(3,1),
    favorite_character VARCHAR(255)
)";

if ($conn->query($sql) === TRUE) { # see if it worked or no
    echo "Table was made!!";
} else {
    echo "Table making failed :(" . $conn->error;
}

$conn->close();
?>
