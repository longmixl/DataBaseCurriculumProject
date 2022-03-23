package Pojo;

import java.util.ArrayList;

public class CompleteZone {
    private Integer id;
    private String username;
    private String imageName;
    private ArrayList<CompleteSheet> userSheets;


    @Override
    public String toString() {
        return "CompleteZone{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", imageName='" + imageName + '\'' +
                ", userSheets=" + userSheets +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getImageName() {
        return imageName;
    }

    public void setImageName(String imageName) {
        this.imageName = imageName;
    }

    public ArrayList<CompleteSheet> getUserSheets() {
        return userSheets;
    }

    public void setUserSheets(ArrayList<CompleteSheet> userSheets) {
        this.userSheets = userSheets;
    }

    public CompleteZone() {
    }

    public CompleteZone(Integer id, String username, String imageName, ArrayList<CompleteSheet> userSheets) {
        this.id = id;
        this.username = username;
        this.imageName = imageName;
        this.userSheets = userSheets;
    }
}
