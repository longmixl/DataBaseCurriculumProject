package Dao;

import Pojo.User;
import Dao.BaseDao;

public class UserDaoImpl extends BaseDao implements UserDao{
    @Override
    public User queryUserByUsername(String username) {
        String sql = "select * from t_user where username = ?";
        return queryForOne(User.class, sql, username);
    }

    @Override
    public User queryUserByUsernameAndPassword(String username, String password) {
        String sql = "select * " +
                "from t_user where username = ? and password = ?";
        return queryForOne(User.class, sql, username,password);
    }

    @Override
    public User queryUserById(Integer id) {
        String sql = "select * from t_user where id = ?";
        return queryForOne(User.class, sql, id);
    }

    @Override
    public int saveUser(User user) {
        String sql = "insert into t_user(username,password,gender, email, is_admin) " +
                "values(?,?,?,?,?)";
        return update(sql, user.getUsername(),user.getPassword(),user.getGender(),
                user.getEmail(), user.getIs_admin());
    }
}
