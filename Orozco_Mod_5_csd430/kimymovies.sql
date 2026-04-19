CREATE DATABASE csd430;
USE csd430;

CREATE TABLE kimy_movies_data (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    release_year INT NOT NULL,
    genre VARCHAR(255) NOT NULL,
    rating DECIMAL(3,1),
    favorite_character VARCHAR(255)
);

INSERT INTO kimy_movies_data (title, release_year, genre, rating, favorite_character) VALUES
('The Princess and the Frog', 2009, 'Animation', 9.9, 'Tiana'),
('The SpongeBob SquarePants Movie', 2004, 'Comedy', 8.5, 'SpongeBob'),
('Avengers: Endgame', 2019, 'Action', 9.5, 'Wanda'),
('Tangled', 2010, 'Animation', 9.0, 'Rapunzel'),
('The Amazing Spider-Man', 2012, 'Action', 8.0, 'Peter Parker'),
('Spider-Man: Far From Home', 2019, 'Action', 8.5, 'Spider-Man'),
('Spider-Man: No Way Home', 2021, 'Action', 9.5, 'Spider-Man'),
('La La Land', 2016, 'Drama', 9.9, 'Mia'),
('Train to Busan', 2016, 'Thriller', 9.0, 'Su-An'),
('Superman', 2025, 'Action', 9.9, 'Superman');