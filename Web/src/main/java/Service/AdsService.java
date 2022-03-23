package Service;

import Pojo.Link;

import java.util.List;

public interface AdsService {
    public List<Link> getAllAds();
    public Link getAdsById(Integer id);
    public void addAds(Link link);
    public void deleteAds(Integer id);
}
