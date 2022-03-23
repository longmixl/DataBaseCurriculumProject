package Dao;

import Pojo.Song;

import java.util.List;

public interface SongDao {
    public int addSong(Song song);
    public int deleteSong(Integer id);
    public int updateSong(Song song);
    public Song querySongById(Integer id);
    public List<Song> querySongs();
    public List<Song> querySongByPartName(String partName);
    public int deleteSongSheetRecordBySong(Integer id);
}
