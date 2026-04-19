<?php

// Module 5.2 Programming Assignment
// Kimberly Orozco, April 18, 2026
// Purpose: making and connecting a database

$conn = new mysqli("localhost", "student1", "pass", "csd430"); // connect to data bases

if ($conn->connect_error) {
    die("Connection died :( " . $conn->connect_error);
}


$sql = "INSERT INTO kimy_movies_data (title, release_year, genre, rating, favorite_character) VALUES # putting in all the stuff :P
('The Princess and the Frog', 2009, 'Animation', 9.9, 'Tiana'),
('The SpongeBob SquarePants Movie', 2004, 'Comedy', 8.5, 'SpongeBob'),
('Avengers: Endgame', 2019, 'Action', 9.5, 'Wanda'),
('Tangled', 2010, 'Animation', 9.0, 'Rapunzel'),
('The Amazing Spider-Man', 2012, 'Action', 8.0, 'Peter Parker'),
('Spider-Man: Far From Home', 2019, 'Action', 8.5, 'Spider-Man'),
('Spider-Man: No Way Home', 2021, 'Action', 9.5, 'Spider-Man'),
('La La Land', 2016, 'Drama', 9.9, 'Mia'),
('Train to Busan', 2016, 'Thriller', 9.0, 'Su-An'),
('Superman', 2025, 'Action', 9.9, 'Superman')";

if ($conn->query($sql) === TRUE) { # see if it did it or naw
    echo "The Data is in B)";
} else {
    echo "Error: " . $conn->error;
}

$conn->close();
?>