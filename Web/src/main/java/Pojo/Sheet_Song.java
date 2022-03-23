package Pojo;

public class Sheet_Song {
    private Integer sheet_id;
    private Integer song_id;

    @Override
    public String toString() {
        return "Sheet_Song{" +
                "sheet_id=" + sheet_id +
                ", song_id=" + song_id +
                '}';
    }

    public Integer getSheet_id() {
        return sheet_id;
    }

    public void setSheet_id(Integer sheet_id) {
        this.sheet_id = sheet_id;
    }

    public Integer getSong_id() {
        return song_id;
    }

    public void setSong_id(Integer song_id) {
        this.song_id = song_id;
    }

    public Sheet_Song() {
    }

    public Sheet_Song(Integer sheet_id, Integer song_id) {
        this.sheet_id = sheet_id;
        this.song_id = song_id;
    }
}
