package Service;

import Pojo.Link;

import java.util.List;

public interface LinkService {
    public void addLink(Link link);
    public Link getLinkByName(String name);
}
