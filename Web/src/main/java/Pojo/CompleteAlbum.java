package Pojo;

public class CompleteAlbum {
    private Integer id;
    private String name;
    private String authorName;
    private String launchTime;
    private String imageName;

    @Override
    public String toString() {
        return "CompleteAlbum{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", authorName='" + authorName + '\'' +
                ", launchTime='" + launchTime + '\'' +
                ", imageName='" + imageName + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAuthorName() {
        return authorName;
    }

    public void setAuthorName(String authorName) {
        this.authorName = authorName;
    }

    public String getLaunchTime() {
        return launchTime;
    }

    public void setLaunchTime(String launchTime) {
        this.launchTime = launchTime;
    }

    public String getImageName() {
        return imageName;
    }

    public void setImageName(String imageName) {
        this.imageName = imageName;
    }

    public CompleteAlbum() {
    }

    public CompleteAlbum(Integer id, String name, String authorName, String launchTime, String imageName) {
        this.id = id;
        this.name = name;
        this.authorName = authorName;
        this.launchTime = launchTime;
        this.imageName = imageName;
    }
}
