package Service;

import Pojo.CompleteSheet;
import Pojo.CompleteZone;
import Pojo.Sheet;
import Pojo.Zone;

public interface ZoneService {
    public Zone getZoneByUserId(Integer id);
    public CompleteSheet toCompleteSheet(Sheet sheet);
    public CompleteZone toCompleteZone(Zone zone);
    public void addZone(Zone zone);
}
