package history.service;

import history.bean.HistoryDTO;

import java.util.List;

public interface HistoryService {

    public List<HistoryDTO> getVideoHistory(int page, int count,int user_id);

    void addHistoryVideo_id(int user_id, int video_id);
}
