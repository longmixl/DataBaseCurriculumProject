package Service;

import Pojo.Singer;

import java.util.List;

public interface SingerService {
    public List<Singer> getAllSinger();
    public Singer getSingerById(Integer id);
    public void addSinger(Singer singer);
    public void deleteSingerById(Integer id);
    public Singer getSingerByName(String name);
}
