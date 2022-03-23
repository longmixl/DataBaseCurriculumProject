package Dao;

import Pojo.Link;

import java.util.List;

public interface LinkDao {
    public int addLink(Link link);
    public int deleteLink(Integer id);
    public Link queryLinkById(Integer id);
    public List<Link> queryLinks();
    public Link queryLinkByName(String name);
}
