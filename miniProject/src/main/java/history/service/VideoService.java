package history.service;

import history.bean.VideoDTO;

import java.util.List;

public interface VideoService {

    public List<VideoDTO> getVideoHistory(int page, int count);
}
