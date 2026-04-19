<?php
// Module 5.2 Programming Assignment
// Kimberly Orozco, April 18, 2026
// Purpose: making and connecting a database

$conn = new mysqli("localhost", "student1", "pass", "csd430"); // connect to data bases

if ($conn->connect_error) {
    die("Connection died :( " . $conn->connect_error);
}

$sql = "DROP TABLE kimy_movies_data"; # just dropping the table

if ($conn->query($sql) === TRUE) {  # same thing >:(
    echo "Table was dropped!!";
} else {
    echo "Couldn't drop the table :( " . $conn->error;
}

$conn->close();
?>