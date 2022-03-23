package Web;

import Pojo.*;
import Service.*;
import Utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class ManagerServlet extends BaseServlet{
    private SheetService sheetService = new SheetServiceImpl();
    private SongService songService = new SongServicesImpl();
    private AlbumService albumService = new AlbumServiceImpl();
    private SingerService singerService = new SingerServiceImpl();
    private LinkService linkService = new LinkServiceImpl();

    protected void list(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        ArrayList<Sheet> sheetList = (ArrayList<Sheet>) sheetService.getAllSheet();
        ArrayList<Song> songList = (ArrayList<Song>) songService.getAllSong();
        ArrayList<Album> albumList = (ArrayList<Album>) albumService.getAllAlbum();
        ArrayList<Singer> singerList = (ArrayList<Singer>) singerService.getAllSinger();
        ArrayList<CompleteSong> completeSongList = new ArrayList<>();
        for(int i=0; i<songList.size(); i++){
            completeSongList.add(songService.toCompleteSong(songList.get(i)));
        }
        req.getSession().setAttribute("completeSongList", completeSongList);
        req.getSession().setAttribute("sheetList", sheetList);
        req.getSession().setAttribute("albumList", albumList);
        req.getRequestDispatcher("/pages/manager/manager.jsp").forward(req, resp);
    }

    protected void deleteSong(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        int songId = Integer.parseInt(req.getParameter("songId"));
        songService.deleteSong(songId);
        resp.sendRedirect(req.getContextPath() + "/managerServlet?action=list");
    }

    protected void updateSong(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        Song song = WebUtils.copyParamToBean(req.getParameterMap(), new Song());
        songService.updateSong(song);
        resp.sendRedirect(req.getContextPath() + "/managerServlet?action=list");
    }

    protected void addSong(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        String songName = req.getParameter("songName");
        String albumName = req.getParameter("albumName");
        String singerName = req.getParameter("singerName");
        String songLink = req.getParameter("songLink");
        Singer singer = singerService.getSingerByName(singerName);
        if(singer==null){
            singer = new Singer(null, singerName, null, null, null, null);
            singerService.addSinger(singer);
            singer = singerService.getSingerByName(singerName);
        }
        Album album = new Album();
        try{
            album = albumService.getAlbumBySingerAndName(singer.getId(), albumName);
        }catch (Exception e){

        }
        if(album==null){
            album = new Album(null, singer.getId(), albumName, null, null, null);
            albumService.addAlbum(album);
            album = albumService.getAlbumBySingerAndName(singer.getId(), albumName);
        }
        Link link = new Link(null, songLink);
        linkService.addLink(link);
        link = linkService.getLinkByName(songLink);
        Song song = new Song(null, songName, singer.getId(), 0, link.getId(), album.getId());
        songService.addSong(song);
        //songService.addSong(song);
        resp.sendRedirect(req.getContextPath() + "/managerServlet?action=list");
    }

    protected void addAlbum(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        Album album = WebUtils.copyParamToBean(req.getParameterMap(), new Album());
        albumService.addAlbum(album);
        resp.sendRedirect(req.getContextPath() + "/managerServlet?action=list");
    }



}
