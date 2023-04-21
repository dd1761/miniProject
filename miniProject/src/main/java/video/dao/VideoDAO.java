package video.dao;


import history.bean.HistoryDTO;

import java.util.List;

public interface VideoDAO {

    List<HistoryDTO> getVideoHistory(int start, int count);
}
