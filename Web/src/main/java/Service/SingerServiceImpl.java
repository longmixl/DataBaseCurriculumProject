package Service;

import Dao.SingerDao;
import Dao.SingerDaoImpl;
import Pojo.Singer;

import java.util.List;

public class SingerServiceImpl implements SingerService{
    SingerDao singerDao = new SingerDaoImpl();
    @Override
    public List<Singer> getAllSinger() {
        return singerDao.querySingers();
    }

    @Override
    public Singer getSingerById(Integer id) {
        return singerDao.querySingerById(id);
    }

    @Override
    public void addSinger(Singer singer) {
        Singer singer1 = getSingerByName(singer.getName());
        if(singer1!=null){
            return;
        }
        singerDao.addSinger(singer);
    }

    @Override
    public void deleteSingerById(Integer id) {
        singerDao.deleteSinger(id);
    }

    @Override
    public Singer getSingerByName(String name) {
        return singerDao.querySingerByName(name);
    }
}
