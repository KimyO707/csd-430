
// Module 5.3 Programming Assignment
// Kimberly Orozco, April 19, 2026
// Purpose: To grab movie info from a database and show whatever movie the user picks


public class Movie {
    private int id;
    private String title;
    private int release_year;
    private String genre;
    private double rating;
    private String favorite_character;

    // getters and setters for bean
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public int getRelease_year() { return release_year; }
    public void setRelease_year(int release_year) { this.release_year = release_year; }

    public String getGenre() { return genre; }
    public void setGenre(String genre) { this.genre = genre; }

    public double getRating() { return rating; }
    public void setRating(double rating) { this.rating = rating; }

    public String getFavorite_character() { return favorite_character; }
    public void setFavorite_character(String favorite_character) { this.favorite_character = favorite_character; }