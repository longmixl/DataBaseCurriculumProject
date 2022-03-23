package Dao;

import Pojo.Zone;

import java.util.List;

public class ZoneDaoImpl extends BaseDao implements ZoneDao{
    @Override
    public int addZone(Zone zone) {
        String sql = "insert into t_zone (user_id, img_id) values(?, ?)";
        return update(sql, zone.getUser_id(), zone.getImg_id());
    }

    @Override
    public int deleteZone(Integer id) {
        String sql = "delete from t_zone where id = ?";
        return update(sql, id);
    }

    @Override
    public Zone queryZoneById(Integer id) {
        String sql = "select * from t_zone where id = ?";
        return queryForOne(Zone.class, sql, id);
    }

    @Override
    public Zone queryZoneByUserId(Integer id) {
        String sql = "select * from t_zone where user_id = ?";
        return queryForOne(Zone.class, sql, id);
    }

    @Override
    public List<Zone> queryZones() {
        String sql = "select * from t_zone";
        List<Zone> zones = queryForList(Zone.class, sql);
        return zones;
    }

}
