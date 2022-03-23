package Pojo;

import java.util.ArrayList;

public class CompleteSheet {
    private Integer id;
    private String name;
    private Integer num;
    private ArrayList<CompleteSong> sheetSongs;

    @Override
    public String toString() {
        return "CompleteSheet{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", num=" + num +
                ", sheetSongs=" + sheetSongs +
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

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public ArrayList<CompleteSong> getSheetSongs() {
        return sheetSongs;
    }

    public void setSheetSongs(ArrayList<CompleteSong> sheetSongs) {
        this.sheetSongs = sheetSongs;
    }

    public CompleteSheet() {
    }

    public CompleteSheet(Integer id, String name, Integer num, ArrayList<CompleteSong> sheetSongs) {
        this.id = id;
        this.name = name;
        this.num = num;
        this.sheetSongs = sheetSongs;
    }
}
