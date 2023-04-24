package history.dao;


import history.bean.HistoryDTO;

import java.util.List;

public interface HistoryDAO {

    public List<HistoryDTO> getVideoHistory(int start, int count);
}
