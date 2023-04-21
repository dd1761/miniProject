package video.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import video.bean.VideoDTO;
import video.dao.VideoDAO;

import java.util.List;

@Service
public class VideoServiceImpl implements VideoService {

    @Autowired
    private VideoDAO videoDAO;


    @Override
    public List<VideoDTO> getVideoById(int user_id, int video_id) {
        List<VideoDTO> list = videoDAO.getVideoById(user_id, video_id);
        return list;
    }

}
