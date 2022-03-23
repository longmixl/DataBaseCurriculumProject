package Service;

import Dao.LinkDao;
import Dao.LinkDaoImpl;
import Pojo.Link;

public class LinkServiceImpl implements LinkService{
    LinkDao linkDao = new LinkDaoImpl();
    @Override
    public void addLink(Link link) {
        linkDao.addLink(link);
    }

    @Override
    public Link getLinkByName(String name) {
        return linkDao.queryLinkByName(name);
    }

}
