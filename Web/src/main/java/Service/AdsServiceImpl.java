package Service;

import Dao.LinkDao;
import Dao.LinkDaoImpl;
import Pojo.Link;
import sun.plugin.javascript.navig.LinkArray;

import java.util.List;

public class AdsServiceImpl implements AdsService{
    LinkDao linkDao = new LinkDaoImpl();
    @Override
    public List<Link> getAllAds() {
        return linkDao.queryLinks();
    }

    @Override
    public Link getAdsById(Integer id) {
        return linkDao.queryLinkById(id);
    }

    @Override
    public void addAds(Link link) {
        linkDao.addLink(link);
    }

    @Override
    public void deleteAds(Integer id) {
        linkDao.deleteLink(id);
    }
}
