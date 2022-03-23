package Dao;

import Pojo.Platform;

import java.util.List;

public interface PlatformDao {
    public int addPlatform(Platform platform);
    public int deletePlatform(Integer id);
    public Platform queryPlatformById(Integer id);
    public List<Platform> queryPlatforms();
}
