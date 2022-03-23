package Dao;

import Pojo.Zone;

import java.util.List;

public interface ZoneDao {
    public int addZone(Zone zone);
    public int deleteZone(Integer id);
    public Zone queryZoneById(Integer id);
    public List<Zone> queryZones();
    public Zone queryZoneByUserId(Integer id);
}
