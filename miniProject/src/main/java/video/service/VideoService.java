package video.service;

import history.bean.HistoryDTO;
import video.bean.VideoDTO;

import java.util.List;

public interface VideoService {



    public List<VideoDTO> getVideoById(int user_id, int video_id);
}
