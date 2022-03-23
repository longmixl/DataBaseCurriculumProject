package Service;

import Dao.SheetDao;
import Dao.SheetDaoImpl;
import Pojo.Sheet;
import Pojo.Sheet_Song;

import java.util.ArrayList;
import java.util.List;

public class SheetServiceImpl implements SheetService{
    SheetDao sheetDao = new SheetDaoImpl();
    @Override
    public List<Sheet> getAllSheet() {
        return sheetDao.querySheets();
    }

    @Override
    public List<Sheet> getSheetByUserId(Integer id) {
        return sheetDao.querySheetsByAuthor(id);
    }

    @Override
    public void addSongIntoSheet(Integer songId, Integer sheetId) {
        ArrayList<Sheet_Song> sheet_songs= (ArrayList<Sheet_Song>) sheetDao.querySongIdBySheetId(sheetId);
        Sheet_Song s_s = new Sheet_Song(sheetId, songId);
        if(!sheet_songs.contains(s_s)){
            sheetDao.addSongIntoSheet(songId, sheetId);
        }
    }

    @Override
    public void deleteSheet(Integer id) {
        sheetDao.deleteSheet(id);
    }

    @Override
    public List<Sheet_Song> getSongIdBySheetId(Integer id) {
       return sheetDao.querySongIdBySheetId(id);
    }

    @Override
    public void deleteSongFromSheet(Integer sheetId, Integer songId) {
        sheetDao.deleteSongFromSheet(sheetId, songId);
    }

    @Override
    public int getSheetNumByUserId(Integer id) {
        ArrayList<Sheet> sheets = (ArrayList<Sheet>) getAllSheet();
        int res = 0;
        for(int i=0; i<sheets.size(); i++){
            if(sheets.get(i).getUser_id()==id){
                res++;
            }
        }
        return res;
    }

    @Override
    public void addSheet(Sheet sheet) {
        ArrayList<Sheet> sheets = (ArrayList<Sheet>) getSheetByUserId(sheet.getUser_id());
        for(int i=0; i<sheets.size(); i++){
            if(sheets.get(i).getName().replaceAll(" ", "").equals(sheet.getName())){
                return;
            }
            System.out.println(sheets.get(i).getName()+"  "+sheet.getName());
        }
        sheetDao.addSheet(sheet);
    }
}
