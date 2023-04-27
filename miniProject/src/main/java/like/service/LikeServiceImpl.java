package like.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import like.bean.LikeDTO;
import like.dao.LikeDAO;

@Service
public class LikeServiceImpl implements LikeService {
	
	@Autowired
	private LikeDAO likeDAO;

	@Override
	public void likeVideoPlus(Map<String, Object> map) {
		
		likeDAO.likeVideoPlus(map);
	}

	@Override
	public List<LikeDTO> getUserLikeInfo(int user_id, int video_id) {
		
		return likeDAO.getUserLikeInfo(user_id, video_id);
	}

	@Override
	public void likeVideoDelete(int user_id, int video_id) {
		
		likeDAO.likeVideoDelete(user_id, video_id);
	}

	@Override
	public void likeCommentPlus(int user_id, int comment_id) {
		
		likeDAO.likeCommentPlus(user_id, comment_id);
	}

	@Override
	public void likeCommentDelete(int user_id, int comment_id) {
		
		likeDAO.likeCommentDelete(user_id, comment_id);
	}

}
