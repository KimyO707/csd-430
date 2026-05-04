import java.sql.Connection;
import java.sql.DriverManager;

// Module 5.3 Programming Assignment
// Kimberly Orozco, April 19, 2026
// Purpose: To grab movie info from a database and show whatever movie the user picks



// I don't know if this matters but it would NOT work until I added this to it ;3;
public class DBUtil {

    public static Connection getConnection() {
        Connection conn = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");

            conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/csd430",
                    "student1",
                    "pass"
            );

        } catch (Exception e) {
            System.out.println(e);
        }

        return conn;
    }
}