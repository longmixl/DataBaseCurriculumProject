package Dao;

import Pojo.Singer;

import java.util.List;

public class SingerDaoImpl extends BaseDao implements SingerDao{

    @Override
    public int addSinger(Singer singer) {
        String sql = "insert into t_singer (name, gender, " +
                "region, birth, img_id) values(?, ?, ?, ?, ?)";
        return update(sql, singer.getName(), singer.getGender(),
                singer.getRegion(), singer.getBirth(),
                singer.getImg_id());
    }

    @Override
    public int deleteSinger(Integer singerId) {
        String sql = "delete from t_singer where id = ?";
        return update(sql, singerId);
    }

    @Override
    public Singer querySingerById(Integer id) {
        String sql = "select * from t_singer where id = ?";
        return queryForOne(Singer.class, sql, id);
    }

    @Override
    public List<Singer> querySingers() {
        String sql = "select * from t_singer";
        return queryForList(Singer.class, sql);
    }

    @Override
    public Singer querySingerByName(String name) {
        String sql = "select * from t_singer where name = ?";
        return queryForOne(Singer.class, sql, name);
    }
}
