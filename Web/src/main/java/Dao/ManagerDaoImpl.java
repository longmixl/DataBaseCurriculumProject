package Dao;

import Pojo.Manager;

import java.util.List;

public class ManagerDaoImpl extends BaseDao implements ManagerDao{
    @Override
    public Manager queryManagerByName(String name) {
        String sql = "select * from t_manager where name = ?";
        return queryForOne(Manager.class, sql, name);
    }

    @Override
    public Manager queryManagerByNameAndPassword(String name, String password) {
        String sql = "select * from t_manager where name = ? and password = ?";
        return queryForOne(Manager.class, sql, name, password);
    }

    @Override
    public List<Manager> queryManagers() {
        String sql = "select * from t_manager";
        return queryForList(Manager.class, sql);
    }
}
