package Pojo;

public class Pics {
    private Integer id;
    private String name;
    private String ads;

    @Override
    public String toString() {
        return "Pics{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", ads='" + ads + '\'' +
                '}';
    }

    public Pics() {
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

    public String getAds() {
        return ads;
    }

    public void setAds(String ads) {
        this.ads = ads;
    }

    public Pics(Integer id, String name, String ads) {
        this.id = id;
        this.name = name;
        this.ads = ads;
    }
}
