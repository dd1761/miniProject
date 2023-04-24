package history.service;

import history.bean.HistoryDTO;

import java.util.List;

public interface HistoryService {

    public List<HistoryDTO> getVideoHistory(int page, int count);
}
