package video.dao;


import history.bean.HistoryDTO;
import video.bean.VideoDTO;

import java.util.List;

public interface VideoDAO {


    public List<VideoDTO> getVideoById(int user_id, int video_id);

}
