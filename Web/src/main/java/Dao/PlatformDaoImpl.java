package Dao;

import Pojo.Platform;

import java.util.List;

public class PlatformDaoImpl extends  BaseDao implements PlatformDao{
    @Override
    public int addPlatform(Platform platform) {
        String sql = "insert into t_platform (name, ads_id, img_id) values(?, ?, ?)";
        return update(sql, platform.getName(), platform.getAds_id(),
                platform.getImg_id());
    }

    @Override
    public int deletePlatform(Integer id) {
        String sql = "delete from t_platform where id = ?";
        return update(sql, id);
    }

    @Override
    public Platform queryPlatformById(Integer id) {
        String sql = "select * from t_platform where id = ?";
        return queryForOne(Platform.class, sql, id);
    }

    @Override
    public List<Platform> queryPlatforms() {
        String sql = "select * from t_platform";
        return queryForList(Platform.class, sql);
    }
}
