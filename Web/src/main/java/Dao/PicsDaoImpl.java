package Dao;

import Pojo.Pics;

import java.util.List;

public class PicsDaoImpl extends BaseDao implements PicsDao {
    @Override
    public int addPics(Pics pics) {
        String sql = "insert into t_pics (name, ads) values(?, ?)";
        return update(sql, pics.getName(), pics.getAds());
    }

    @Override
    public int deletePics(Integer id) {
        String sql = "delete from t_pics where id = ?";
        return update(sql, id);
    }

    @Override
    public List<Pics> queryPics() {
        String sql = "select * from t_pics";
        return queryForList(Pics.class, sql);
    }

    @Override
    public Pics queryPicsById(Integer id) {
        String sql = "select * from t_pics where id = ?";
        return queryForOne(Pics.class, sql);
    }
}
