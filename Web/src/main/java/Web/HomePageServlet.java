package Web;

import Dao.AlbumDao;
import Dao.AlbumDaoImpl;
import Pojo.*;
import Service.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class HomePageServlet extends BaseServlet{
    private UserService userService = new UserServiceImpl();
    private SongService songService = new SongServicesImpl();
    private SheetService sheetService = new SheetServiceImpl();
    private AlbumService albumService = new AlbumServiceImpl();
    private ZoneService zoneService = new ZoneServiceImpl();



    protected void enterManager(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        ArrayList<Song> songList = (ArrayList<Song>) songService.getAllSong();
        ArrayList<Sheet> sheetList = (ArrayList<Sheet>) sheetService.getAllSheet();
        ArrayList<Album> albumList = (ArrayList<Album>)  albumService.getAllAlbum();
        req.getSession().setAttribute("sheetList", sheetList);
        req.getSession().setAttribute("songList", songList);
        req.getSession().setAttribute("albumList", albumList);
        System.out.println(albumList);
        req.getRequestDispatcher("/pages/manager/manager.jsp").forward(req, resp);
    }

    protected void homePage(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/index.jsp").forward(req, resp);
    }

    protected void zone(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        User user = userService.getUserByUsername((String) req.getAttribute("username"));
        Zone zone = zoneService.getZoneByUserId(user.getId());
        req.getSession().setAttribute("zone", zone);
        req.getRequestDispatcher("/pages/user/zone.jsp").forward(req, resp);
    }
    
}
