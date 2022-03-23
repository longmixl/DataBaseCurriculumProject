package Dao;

import Pojo.Album;

import java.util.List;

public class AlbumDaoImpl extends BaseDao implements AlbumDao{
    @Override
    public int addAlbum(Album album) {
        String sql = "insert into t_album(author_id, title, launch_time" +
                ", num, img_id) values(?,?,?,?,?)";
        return update(sql, album.getAuthor_id(),
                album.getTitle(), album.getLaunch_time(),
                album.getNum(), album.getImg_id());
    }

    @Override
    public int deleteAlbum(Integer id) {
        String sql = "delete from t_album where id = ?";
        return update(sql, id);
    }

    @Override
    public Album queryAlbumById(Integer id) {
        String sql = "select * from t_album where id = ?";
        return queryForOne(Album.class, sql, id);
    }

    @Override
    public List<Album> queryAlbums() {
        String sql = "select * from t_album";
        return queryForList(Album.class, sql);
    }

    @Override
    public List<Album> queryAlbumsByPartName(String partName) {
        return null;
    }

    @Override
    public List<Album> queryAlbumBySinger(Integer singerId) {
        String sql = "select * from t_album where author_id = ?";
        return queryForList(Album.class, sql, singerId);
    }

    @Override
    public Album queryAlbumBySingerAndName(Integer singerId, String name) {
        String sql = "select * from t_album where author_id = ? and title=?";
        return queryForOne(Album.class, sql, singerId, name);
    }
}
