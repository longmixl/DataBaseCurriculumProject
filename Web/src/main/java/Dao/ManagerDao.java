package Dao;

import Pojo.Manager;

import java.util.List;

public interface ManagerDao {
    public Manager queryManagerByName(String name);
    public Manager queryManagerByNameAndPassword(String name, String password);
    public List<Manager> queryManagers();
}
