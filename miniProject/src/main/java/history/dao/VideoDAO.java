package history.dao;


import history.bean.VideoDTO;

import java.util.List;

public interface VideoDAO {

    List<VideoDTO> getVideoHistory(int start, int count);
}
