package Dao;

import Pojo.Sheet;
import Pojo.Sheet_Song;

import java.util.List;

public class SheetDaoImpl extends BaseDao implements SheetDao{
    @Override
    public int addSheet(Sheet sheet) {
        String sql = "insert into t_sheet(user_id," +
                "name,num,img_id) values(?,?,?,?)";
        return update(sql, sheet.getUser_id(), sheet.getName(),
                sheet.getNum(), sheet.getImg_id());
    }

    @Override
    public int deleteSheet(Integer id) {
        String sql ="delete from t_sheet where id = ?;" +
                "delete from t_sheet_song where sheet_id = ?";
        return update(sql, id, id);
    }

    @Override
    public Sheet querySheetById(Integer id) {
        String sql = "select * from t_sheet where id = ?";
        return queryForOne(Sheet.class, sql, id);
    }

    @Override
    public List<Sheet> querySheets() {
        String sql = "select * from t_sheet";
        return queryForList(Sheet.class, sql);
    }

    @Override
    public List<Sheet> querySheetsByAuthor(Integer authorId) {
        String sql = "select * from t_sheet where user_id = ?";
        return queryForList(Sheet.class, sql, authorId);
    }

    @Override
    public List<Sheet> querySheetsByPartName(String partName) {
        return null;
    }

    @Override
    public int addSongIntoSheet(Integer songId, Integer sheetId) {
        String sql = "insert into t_sheet_song values (?, ?)";
        return update(sql, sheetId, songId);
    }

    @Override
    public List<Sheet_Song> querySongIdBySheetId(Integer sheetId) {
        String sql = "select * from t_sheet_song where sheet_id = ?";
        return queryForList(Sheet_Song.class, sql, sheetId);
    }

    @Override
    public int deleteSongFromSheet(Integer sheetId, Integer songId) {
        String sql = "delete from t_sheet_song where sheet_id=? and song_id=?";
        return update(sql, sheetId, songId);
    }
}
