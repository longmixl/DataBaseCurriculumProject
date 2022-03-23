package Pojo;

public class Link {
    private Integer id;
    private String url;

    @Override
    public String toString() {
        return "Link{" +
                "id=" + id +
                ", url='" + url + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Link() {
    }

    public Link(Integer id, String url) {
        this.id = id;
        this.url = url;
    }
}