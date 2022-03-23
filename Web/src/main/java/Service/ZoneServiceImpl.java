package Service;

import Dao.*;
import Pojo.*;

import java.util.ArrayList;

public class ZoneServiceImpl implements ZoneService{
    ZoneDao zoneDao = new ZoneDaoImpl();
    SheetDao sheetDao = new SheetDaoImpl();
    SongDao songDao = new SongDaoImpl();
    SongService songService = new SongServicesImpl();
    UserDao userDao = new UserDaoImpl();

    @Override
    public Zone getZoneByUserId(Integer id) {
        return zoneDao.queryZoneByUserId(id);
    }

    @Override
    public CompleteSheet toCompleteSheet(Sheet sheet) {
        ArrayList<CompleteSong> completeSongs = new ArrayList<>();
        CompleteSheet completeSheet = new CompleteSheet();
        ArrayList<Sheet_Song> sheetSongs = (ArrayList<Sheet_Song>) sheetDao.querySongIdBySheetId(sheet.getId());
        for(int i=0; i<sheetSongs.size(); i++){
            completeSongs.add(songService.toCompleteSong(songDao.querySongById(sheetSongs.get(i).getSong_id())));
        }
        completeSheet.setId(sheet.getId());
        completeSheet.setName(sheet.getName());
        completeSheet.setNum(sheet.getNum());
        completeSheet.setSheetSongs(completeSongs);
        return completeSheet;
    }

    @Override
    public CompleteZone toCompleteZone(Zone zone) {
        ArrayList<CompleteSheet> completeSheets = new ArrayList<>();
        ArrayList<Sheet> sheets = (ArrayList<Sheet>) sheetDao.querySheetsByAuthor(zone.getUser_id());
        CompleteZone completeZone = new CompleteZone();
        for(int i=0; i<sheets.size();i++){
            completeSheets.add(toCompleteSheet(sheets.get(i)));
        }
        completeZone.setId(zone.getId());
        completeZone.setUsername(userDao.queryUserById(zone.getUser_id()).getUsername());
        completeZone.setUserSheets(completeSheets);
        return completeZone;
    }

    @Override
    public void addZone(Zone zone) {
        zoneDao.addZone(zone);
    }


}
