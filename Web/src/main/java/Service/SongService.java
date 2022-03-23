package Service;

import Pojo.CompleteSong;
import Pojo.Sheet;
import Pojo.Song;

import java.util.List;

public interface SongService {
    public List<Song> getAllSong();
    public void deleteSong(Integer id);
    public void addSong(Song song);
    public void updateSong(Song song);
    public CompleteSong toCompleteSong(Song song);
    public List<Song> getSongByPartName(String partName);
}
