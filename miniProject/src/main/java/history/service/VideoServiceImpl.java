package history.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import history.bean.VideoDTO;
import history.dao.VideoDAO;

import java.util.List;

@Service
public class VideoServiceImpl implements VideoService {
    @Autowired
    private VideoDAO videoDAO;

    @Override
    public List<VideoDTO> getVideoHistory(int page, int count) {
        System.out.println("service1");
        int start = ((page-1) * count)+1;
        count = count * page;
        List<VideoDTO> list = videoDAO.getVideoHistory(start, count);
        System.out.println("service2");
        System.out.println(list);
        return list;
    }


	@Override
	public List<VideoDTO> searchVideo(String video_title) {
		
		return videoDAO.searchVideo(video_title);
	}

	@Override
	public List<VideoDTO> mainContainerVideo() {
		
		return videoDAO.mainContainerVideo();
	}

}
