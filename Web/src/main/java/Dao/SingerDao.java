package Dao;

import Pojo.Singer;

import java.util.List;

public interface SingerDao {
    public int addSinger(Singer singer);
    public int deleteSinger(Integer singerId);
    public Singer querySingerById(Integer id);
    public List<Singer> querySingers();
    public Singer querySingerByName(String name);
}
