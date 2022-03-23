package Pojo;

public class Album {
    private Integer id;
    private Integer author_id;
    private String title;
    private String launch_time;
    private Integer num;
    private Integer img_id;

    @Override
    public String toString() {
        return "Album{" +
                "id=" + id +
                ", author_id=" + author_id +
                ", title='" + title + '\'' +
                ", launch_time='" + launch_time + '\'' +
                ", num=" + num +
                ", img_id=" + img_id +
                '}';
    }

    public Album() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getAuthor_id() {
        return author_id;
    }

    public void setAuthor_id(Integer author_id) {
        this.author_id = author_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getLaunch_time() {
        return launch_time;
    }

    public void setLaunch_time(String launch_time) {
        this.launch_time = launch_time;
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

    public Album(Integer id, Integer author_id,
                 String title, String launch_time,
                 Integer num, Integer img_id) {
        this.id = id;
        this.author_id = author_id;
        this.title = title;
        this.launch_time = launch_time;
        this.num = num;
        this.img_id = img_id;
    }
}
