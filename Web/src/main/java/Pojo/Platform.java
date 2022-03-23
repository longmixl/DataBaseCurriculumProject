package Pojo;

public class Platform {
    private Integer id;
    private String name;
    private Integer ads_id;
    private Integer img_id;

    @Override
    public String toString() {
        return "Platform{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", ads_id=" + ads_id +
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

    public Integer getAds_id() {
        return ads_id;
    }

    public void setAds_id(Integer ads_id) {
        this.ads_id = ads_id;
    }

    public Integer getImg_id() {
        return img_id;
    }

    public void setImg_id(Integer img_id) {
        this.img_id = img_id;
    }

    public Platform() {
    }

    public Platform(Integer id, String name,
                    Integer ads_id, Integer img_id) {
        this.id = id;
        this.name = name;
        this.ads_id = ads_id;
        this.img_id = img_id;
    }
}
