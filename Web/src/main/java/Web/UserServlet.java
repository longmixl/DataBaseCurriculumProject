package Web;

import Dao.UserDao;
import Dao.UserDaoImpl;
import Pojo.CompleteSong;
import Pojo.Sheet;
import Pojo.Song;
import Pojo.User;
import Service.*;
import Utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class UserServlet extends BaseServlet {
    private UserService userService = new UserServiceImpl();
    private SongService songService = new SongServicesImpl();
    private SheetService sheetService = new SheetServiceImpl();

    private UserDao userDao = new UserDaoImpl();
    protected void list(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");
        ArrayList<Song> songList = (ArrayList<Song>) songService.getAllSong();
        ArrayList<Sheet> userSheets = (ArrayList<Sheet>) sheetService.getSheetByUserId(user.getId());
        req.getSession().setAttribute("userSheets", userSheets);
        ArrayList<CompleteSong> completeSongList = new ArrayList<>();
        for(int i=0; i<songList.size(); i++){
            completeSongList.add(songService.toCompleteSong(songList.get(i)));
        }
        req.getSession().setAttribute("completeSongList", completeSongList);
        req.getRequestDispatcher("/pages/user/after_login.jsp").forward(req, resp);
    }
    protected void login(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {


        String username = req.getParameter("username");
        String password = req.getParameter("password");
        User loginUser = userService.
                login(new User(null, username, password, null, null, 0));


        if (loginUser == null) {
            req.setAttribute("msg", username);
            req.setAttribute("username", username);
            req.getRequestDispatcher("index.jsp")
                    .forward(req, resp);
        } else {
            ArrayList<Song> songList = (ArrayList<Song>) songService.getAllSong();
            ArrayList<Sheet> userSheets = (ArrayList<Sheet>) sheetService.getSheetByUserId(loginUser.getId());
            req.getSession().setAttribute("userSheets", userSheets);
            ArrayList<CompleteSong> completeSongList = new ArrayList<>();
            for(int i=0; i<songList.size(); i++){
                completeSongList.add(songService.toCompleteSong(songList.get(i)));
            }
            req.getSession().setAttribute("user", loginUser);
            req.getSession().setAttribute("completeSongList", completeSongList);
            req.getRequestDispatcher("pages/user/after_login.jsp")
                    .forward(req, resp);
        }
        System.out.println(req.getSession().getAttribute("user"));
    }

    protected void register(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        //  ?????????????????????
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String email = req.getParameter("email");
        String gender = req.getParameter("gender");

        User user = WebUtils.copyParamToBean(req.getParameterMap(), new User());



//       ?????? ?????????????????????
        if (userService.existsUsername(username)) {
            System.out.println("?????????[" + username + "]?????????!");

            // ???????????????????????????Request??????
            req.setAttribute("msg", "????????????????????????");
            req.setAttribute("username", username);
            req.setAttribute("email", email);

//        ??????????????????
            req.getRequestDispatcher("/pages/common/register.jsp").forward(req, resp);
        } else {
            //      ??????
//                ??????Sservice??????????????????
            userService.registUser(new User(null, username, password, gender, email, 0));
//
//        ??????index.jsp
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        }
//
//        // ???????????????????????????Request??????
//        req.setAttribute("msg", "?????????????????????");
//        req.setAttribute("username", username);
//        req.setAttribute("email", email);
//
//        System.out.println("?????????[" + code + "]??????");
//        req.getRequestDispatcher("/pages/user/regist.jsp").forward(req, resp);


    }
}
