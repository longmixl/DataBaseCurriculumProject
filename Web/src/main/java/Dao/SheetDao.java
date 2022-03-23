package Dao;

import Pojo.Sheet;
import Pojo.Sheet_Song;

import java.util.List;

public interface SheetDao {
    public int addSheet(Sheet sheet);
    public int deleteSheet(Integer id);
    public Sheet querySheetById(Integer id);
    public List<Sheet> querySheets();
    public List<Sheet> querySheetsByAuthor(Integer authorId);
    public List<Sheet> querySheetsByPartName(String partName);
    public int addSongIntoSheet(Integer songId, Integer sheetId);
    public List<Sheet_Song> querySongIdBySheetId(Integer sheetId);
    public int deleteSongFromSheet(Integer sheetId, Integer songId);
}
