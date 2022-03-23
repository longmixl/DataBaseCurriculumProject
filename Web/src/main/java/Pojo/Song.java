package Pojo;

public class Song {
    private Integer id;
    private String name;
    private Integer author_id;
    private Integer length;
    private Integer ads_id;
    private Integer album_id;

    @Override
    public String toString() {
        return "Song{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", author_id=" + author_id +
                ", length=" + length +
                ", ads_id=" + ads_id +
                ", album_id=" + album_id +
                '}';
    }

    public Song() {
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

    public Integer getAuthor_id() {
        return author_id;
    }

    public void setAuthor_id(Integer author_id) {
        this.author_id = author_id;
    }

    public Integer getLength() {
        return length;
    }

    public void setLength(Integer length) {
        this.length = length;
    }

    public Integer getAds_id() {
        return ads_id;
    }

    public void setAds_id(Integer ads_id) {
        this.ads_id = ads_id;
    }

    public Integer getAlbum_id() {
        return album_id;
    }

    public void setAlbum_id(Integer album_id) {
        this.album_id = album_id;
    }

    public Song(Integer id, String name,
                Integer author_id, Integer length,
                Integer ads_id, Integer album_id) {
        this.id = id;
        this.name = name;
        this.author_id = author_id;
        this.length = length;
        this.ads_id = ads_id;
        this.album_id = album_id;
    }
}
