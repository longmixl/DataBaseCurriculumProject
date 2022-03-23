package Service;

import Dao.UserDao;
import Dao.UserDaoImpl;
import Pojo.User;

public class UserServiceImpl implements UserService{
    private UserDao userDao = new UserDaoImpl();

    @Override
    public void registUser(User user) {
        userDao.saveUser(user);
    }

    @Override
    public User login(User user) {
        System.out.println("username:" + user.getUsername()+" password:"+user.getPassword());
        return userDao.queryUserByUsernameAndPassword(user.getUsername(),
                user.getPassword());
    }

    @Override
    public boolean existsUsername(String username) {

        if (userDao.queryUserByUsername(username) == null) {
            // 等于null,说明没查到，没查到表示可用
            return false;
        }

        return true;

    }

    @Override
    public User getUserByUsername(String username) {
        return userDao.queryUserByUsername(username);
    }
}
