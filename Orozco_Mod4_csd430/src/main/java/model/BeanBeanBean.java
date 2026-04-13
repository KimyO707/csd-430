// Module 4.2 Programming Assignment
// Kimberly Orozco, April 12, 2026
// Purpose: JavaBean to store movie data

package model;
import java.io.Serializable;

public class BeanBeanBean implements Serializable {
    // info for each character
    private String character;
    private String actor;
    private String role;

    public BeanBeanBean() {} //empty

    // con-struc-tor!! set everything at once
    public BeanBeanBean(String character, String actor, String role) {
        this.character = character;
        this.actor = actor;
        this.role = role;
    }

    // My getters and setters B)
    public String getCharacter() {
        return character;
    }
    public void setCharacter(String character) {
        this.character = character;
    }
    public String getActor() {
        return actor;
    }
    public void setActor(String actor) {
        this.actor = actor;
    }
    public String getRole() {
        return role;
    }
    public void setRole(String role) {
        this.role = role;
    }
}