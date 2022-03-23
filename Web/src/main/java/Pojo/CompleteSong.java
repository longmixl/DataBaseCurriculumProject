package Pojo;

public class CompleteSong {
    private Integer id;
    private String name;
    private String authorName;
    private String albumName;
    private String ads;

    public CompleteSong() {
    }

    public CompleteSong(Integer id, String name, String authorName, String albumName, String imageName, String ads) {
        this.id = id;
        this.name = name;
        this.authorName = authorName;
        this.albumName = albumName;
        this.ads = ads;
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

    public String getAlbumName() {
        return albumName;
    }

    public void setAlbumName(String albumName) {
        this.albumName = albumName;
    }


    public String getAds() {
        return ads;
    }

    public void setAds(String ads) {
        this.ads = ads;
    }

    @Override
    public String toString() {
        return "CompleteSong{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", authorName='" + authorName + '\'' +
                ", albumName='" + albumName + '\'' +
                ", ads='" + ads + '\'' +
                '}';
    }
}
