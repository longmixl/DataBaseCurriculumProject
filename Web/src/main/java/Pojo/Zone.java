package Pojo;

public class Zone {
    private Integer id;
    private Integer user_id;
    private String img_id;

    public Zone() {
    }

    @Override
    public String toString() {
        return "Zone{" +
                "id=" + id +
                ", user_id=" + user_id +
                ", img_id='" + img_id + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getImg_id() {
        return img_id;
    }

    public void setImg_id(String img_id) {
        this.img_id = img_id;
    }

    public Zone(Integer id, Integer user_id, String img_id) {
        this.id = id;
        this.user_id = user_id;
        this.img_id = img_id;
    }
}
