package like.service;

import java.util.List;
import java.util.Map;

import like.bean.LikeDTO;

public interface LikeService {

	void likeVideoPlus(Map<String, Object> map);

	List<LikeDTO> getUserLikeInfo(int user_id, int video_id);

	void likeVideoDelete(int user_id, int video_id);

}
