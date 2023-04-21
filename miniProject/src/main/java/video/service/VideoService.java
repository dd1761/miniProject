package video.service;

import history.bean.HistoryDTO;

import java.util.List;

public interface VideoService {

    public List<HistoryDTO> getVideoHistory(int page, int count);
}
