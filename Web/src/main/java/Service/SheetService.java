package Service;

import Pojo.Sheet;
import Pojo.Sheet_Song;

import java.util.List;

public interface SheetService {
    public List<Sheet> getAllSheet();
    public List<Sheet> getSheetByUserId(Integer id);
    public void addSongIntoSheet(Integer songId, Integer sheetId);
    public void deleteSheet(Integer id);
    public List<Sheet_Song> getSongIdBySheetId(Integer id);
    public void deleteSongFromSheet(Integer sheetId, Integer songId);
    public int getSheetNumByUserId(Integer id);
    public void addSheet(Sheet sheet);
}
