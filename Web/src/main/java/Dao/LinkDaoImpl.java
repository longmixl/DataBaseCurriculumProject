package Dao;

import Pojo.Link;

import java.util.List;

public class LinkDaoImpl extends BaseDao implements LinkDao{
    @Override
    public int addLink(Link link) {
        String sql = "insert into t_url(url) values(?)";
        return update(sql, link.getUrl());
    }

    @Override
    public int deleteLink(Integer id) {
        String sql = "delete from t_url where id = ?";
        return update(sql, id);
    }

    @Override
    public Link queryLinkById(Integer id) {
        String sql = "select * from t_url where id = ?";
        return queryForOne(Link.class, sql, id);
    }

    @Override
    public List<Link> queryLinks() {
        String sql = "select * from t_url";
        return queryForList(Link.class, sql);
    }

    @Override
    public Link queryLinkByName(String name) {
        String sql = "select * from t_url where url = ?";
        return queryForOne(Link.class, sql, name);
    }


}
