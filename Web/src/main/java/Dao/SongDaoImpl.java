package Dao;

import Pojo.Song;

import java.util.List;

public class SongDaoImpl
        extends BaseDao implements SongDao{

    @Override
    public int addSong(Song song) {
        String sql = "insert into t_song(name, author_id, length, " +
                "ads_id, album_id)" +
                "values(?,?,?,?,?)";
        return update(sql, song.getName(), song.getAuthor_id(),
                song.getLength(),song.getAds_id(), song.getAlbum_id());
    }

    @Override
    public int deleteSong(Integer id) {
        String sql = "delete from t_song where id = ?";
        return update(sql, id);
    }

    @Override
    public int updateSong(Song song) {
        String sql = "update t_song set name=?," +
                "author_id=?,length=?,ads_id=?,album_id=? " +
                "where id=?";
        return update(sql, song.getName(), song.getAuthor_id(),
                song.getLength(), song.getAds_id(),
                song.getAlbum_id(), song.getId());
    }

    @Override
    public Song querySongById(Integer id) {
        String sql = "select *" +
                "from t_song where id = ?";
        return queryForOne(Song.class, sql, id);
    }

    @Override
    public List<Song> querySongs() {
        String sql = "select * from t_song";
        return queryForList(Song.class, sql);
    }

    @Override
    public List<Song> querySongByPartName(String partName) {
        String sql = "select * from t_song where name like '%"+partName+"%'";
        return queryForList(Song.class, sql);
    }

    @Override
    public int deleteSongSheetRecordBySong(Integer id) {
        String sql = "delete from t_sheet_song where song_id = ?";
        return update(sql, id);
    }
}
