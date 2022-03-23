package Pojo;

public class Singer {
    private Integer id;
    private String name;
    private String gender;
    private String region;
    private String birth;
    private Integer img_id;

    @Override
    public String toString() {
        return "Singer{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", gender='" + gender + '\'' +
                ", region='" + region + '\'' +
                ", birth='" + birth + '\'' +
                ", img_id=" + img_id +
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

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public Integer getImg_id() {
        return img_id;
    }

    public void setImg_id(Integer img_id) {
        this.img_id = img_id;
    }

    public Singer() {
    }

    public Singer(Integer id, String name,
                  String gender, String region,
                  String birth, Integer img_id) {
        this.id = id;
        this.name = name;
        this.gender = gender;
        this.region = region;
        this.birth = birth;
        this.img_id = img_id;
    }
}
