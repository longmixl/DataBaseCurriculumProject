package Web;

import Pojo.*;
import Service.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class ZoneServlet extends BaseServlet{
    private ZoneService zoneService = new ZoneServiceImpl();
    private SheetService sheetService = new SheetServiceImpl();
    private SongService songService = new SongServicesImpl();
    protected void list(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {
        ArrayList<Sheet> personalSheets = (ArrayList<Sheet>)
                sheetService.getSheetByUserId((Integer) req.getAttribute("id"));//notice the id is userid
        User user = (User) req.getSession().getAttribute("user");
        Zone zone = zoneService.getZoneByUserId(user.getId());
        if(zone==null){
            zone = new Zone(null, user.getId(), null);
            zoneService.addZone(zone);
            zone = zoneService.getZoneByUserId(user.getId());
        }
        CompleteZone completeZone = zoneService.toCompleteZone(zone);
        req.getSession().setAttribute("userCompleteZone", completeZone);
        req.getRequestDispatcher("/pages/user/zone.jsp").forward(req, resp);
    }

    protected void addSongIntoSheet(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        int songIdToAdd = Integer.parseInt(req.getParameter("songIdToAdd"));
        int sheetIdToAdd = Integer.parseInt(req.getParameter("sheetIdToAdd"));
        sheetService.addSongIntoSheet(songIdToAdd, sheetIdToAdd);
        System.out.println("songId: "+songIdToAdd +" sheetId: "+sheetIdToAdd);
        resp.sendRedirect(req.getContextPath() + "/userServlet?action=list");
    }

    protected void deleteSheet(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        sheetService.deleteSheet((Integer) req.getAttribute("sheetId"));
        resp.sendRedirect(req.getContextPath() + "/zoneServlet?action=list");
    }

    protected void logOff(HttpServletRequest req, HttpServletResponse resp){

    }

    protected void deleteSong(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Integer songIdToDel = Integer.parseInt(req.getParameter("songIdToDelete"));
        Integer sheetId = Integer.parseInt(req.getParameter("sheetId"));
        System.out.println("songIdToDel: " + songIdToDel +" sheetId: "+sheetId);
        sheetService.deleteSongFromSheet(sheetId, songIdToDel);
        resp.sendRedirect(req.getContextPath() + "/zoneServlet?action=list");
    }

    protected void addSheet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        User user = (User) req.getSession().getAttribute("user");
        String sheetName = req.getParameter("sheetName");
        Sheet sheet = new Sheet(null, user.getId(), sheetName, 0, null);
        sheetService.addSheet(sheet);
        resp.sendRedirect(req.getContextPath() + "/zoneServlet?action=list");
    }

    protected void search(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<Song> searchRes = (ArrayList<Song>) songService.getSongByPartName(req.getParameter("searchName"));
        ArrayList<CompleteSong> completeSearch = new ArrayList<>();
        for(int i=0; i<searchRes.size(); i++){
            completeSearch.add(songService.toCompleteSong(searchRes.get(i)));
        }
        req.getSession().setAttribute("searchRes", completeSearch);
        req.getRequestDispatcher("pages/user/searchResult.jsp").forward(req,resp);
    }
}
