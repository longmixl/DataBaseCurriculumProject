package Service;

import Dao.AlbumDao;
import Dao.AlbumDaoImpl;
import Pojo.Album;

import java.util.List;

public class AlbumServiceImpl implements AlbumService{
    AlbumDao albumDao = new AlbumDaoImpl();
    @Override
    public List<Album> getAllAlbum() {
        return albumDao.queryAlbums();
    }

    @Override
    public void addAlbum(Album album) {
        Album album1 = getAlbumBySingerAndName(album.getAuthor_id(), album.getTitle());
        if(album1!=null){
            return;
        }
        albumDao.addAlbum(album);
    }

    @Override
    public void deleteAlbum(Integer id) {
        albumDao.deleteAlbum(id);
    }

    @Override
    public Album getAlbumBySingerAndName(Integer singerId, String name) {
        return albumDao.queryAlbumBySingerAndName(singerId, name);
    }
}
