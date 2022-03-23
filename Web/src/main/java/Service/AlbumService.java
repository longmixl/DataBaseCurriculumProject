package Service;

import Pojo.Album;

import javax.persistence.criteria.CriteriaBuilder;
import java.util.List;

public interface AlbumService {
    public List<Album> getAllAlbum();
    public void addAlbum(Album album);
    public void deleteAlbum(Integer id);
    public Album getAlbumBySingerAndName(Integer singerId, String name);
}
