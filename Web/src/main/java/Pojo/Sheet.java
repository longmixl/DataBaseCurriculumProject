package Pojo;

public class Sheet {
    private Integer id;
    private Integer user_id;
    private String name;
    private Integer num;
    private Integer img_id;

    public Sheet() {
    }

    @Override
    public String toString() {
        return "Sheet{" +
                "id=" + id +
                ", user_id=" + user_id +
                ", name='" + name + '\'' +
                ", num=" + num +
                ", img_id=" + img_id +
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Integer getImg_id() {
        return img_id;
    }

    public void setImg_id(Integer img_id) {
        this.img_id = img_id;
    }

    public Sheet(Integer id, Integer user_id,
                 String name, Integer num, Integer img_id) {
        this.id = id;
        this.user_id = user_id;
        this.name = name;
        this.num = num;
        this.img_id = img_id;
    }
}
