package Service;

import Dao.*;
import Pojo.CompleteSong;
import Pojo.Sheet;
import Pojo.Song;

import java.util.List;

public class SongServicesImpl implements SongService{
    private SongDao songDao = new SongDaoImpl();
    private SheetDao sheetDao = new SheetDaoImpl();
    private SingerDao singerDao = new SingerDaoImpl();
    private AlbumDao albumDao = new AlbumDaoImpl();
    private LinkDao linkDao = new LinkDaoImpl();
    private PicsDao picsDao = new PicsDaoImpl();
    @Override
    public List<Song> getAllSong() {
        return songDao.querySongs();
    }

    @Override
    public void deleteSong(Integer id) {
        songDao.deleteSong(id);
        songDao.deleteSongSheetRecordBySong(id);
    }

    @Override
    public void addSong(Song song) {
        songDao.addSong(song);
    }

    @Override
    public void updateSong(Song song) {
        songDao.updateSong(song);
    }

    @Override
    public CompleteSong toCompleteSong(Song song) {
        CompleteSong completeSong = new CompleteSong();
        completeSong.setId(song.getId());
        completeSong.setName(song.getName());
        completeSong.setAuthorName(singerDao.querySingerById(song.getAuthor_id()).getName());
        completeSong.setAlbumName(albumDao.queryAlbumById(song.getAlbum_id()).getTitle());
        completeSong.setAds(linkDao.queryLinkById(song.getAds_id()).getUrl());
        return completeSong;
    }

    @Override
    public List<Song> getSongByPartName(String partName) {
        return songDao.querySongByPartName(partName);
    }


}
