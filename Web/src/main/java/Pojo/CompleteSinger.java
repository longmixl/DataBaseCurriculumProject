package Pojo;

public class CompleteSinger {
    private Integer id;
    private String name;
    private String gender;
    private String region;
    private String imageName;

    @Override
    public String toString() {
        return "CompleteSinger{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", gender='" + gender + '\'' +
                ", region='" + region + '\'' +
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

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public String getImageName() {
        return imageName;
    }

    public void setImageName(String imageName) {
        this.imageName = imageName;
    }

    public CompleteSinger() {
    }

    public CompleteSinger(Integer id, String name, String gender, String region, String imageName) {
        this.id = id;
        this.name = name;
        this.gender = gender;
        this.region = region;
        this.imageName = imageName;
    }
}
