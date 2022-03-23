package Dao;

import Pojo.Pics;

import java.util.List;

public interface PicsDao {
    public int addPics(Pics pics);
    public int deletePics(Integer id);
    public List<Pics> queryPics();
    public Pics queryPicsById(Integer id);
}
