package Dao;

import Pojo.Album;

import java.util.List;

public interface AlbumDao {
    public int addAlbum(Album album);
    public int deleteAlbum(Integer id);
    public Album queryAlbumById(Integer id);
    public List<Album> queryAlbums();
    public List<Album> queryAlbumsByPartName(String partName);
    public List<Album> queryAlbumBySinger(Integer singerId);
    public Album queryAlbumBySingerAndName(Integer singerId, String name);
}
