package history.dao;


import history.bean.HistoryDTO;

import java.util.List;

public interface HistoryDAO {

    public List<HistoryDTO> getVideoHistory(int start, int count,int user_id);

    void addHistoryVideo_id(int user_id, int video_id);

    void deleteHistory(int user_id, int video_id);

    void deleteAllHistory(int user_id);
}