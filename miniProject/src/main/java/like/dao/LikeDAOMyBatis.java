package like.dao;

import java.util.List;
import java.util.Map;

import org.apache.commons.collections4.map.HashedMap;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import like.bean.LikeDTO;

@Repository
@Transactional
public class LikeDAOMyBatis implements LikeDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void likeVideoPlus(Map<String, Object> map) {
		
		sqlSession.insert("likeSQL.likeVideoPlus", map);
	}

	@Override
	public List<LikeDTO> getUserLikeInfo(int user_id, int video_id) {
		
		Map<String, Object> map = new HashedMap<>();
		map.put("user_id", user_id);
		map.put("video_id", video_id);
		
		return sqlSession.selectList("likeSQL.getUserLikeInfo", map);
	}

	@Override
	public void likeVideoDelete(int user_id, int video_id) {
		
		Map<String, Object> map = new HashedMap<>();
		map.put("user_id", user_id);
		map.put("video_id", video_id);
		
		sqlSession.delete("likeSQL.likeVideoDelete", map);
		
	}

	@Override
	public void likeCommentPlus(int user_id, int comment_id) {
		
		Map<String, Object> map = new HashedMap<>();
		map.put("user_id", user_id);
		map.put("comment_id", comment_id);
		
		sqlSession.insert("likeSQL.likeCommentPlus", map);
		
	}

	@Override
	public void likeCommentDelete(int user_id, int comment_id) {
		
		Map<String, Object> map = new HashedMap<>();
		map.put("user_id", user_id);
		map.put("comment_id", comment_id);
		
		sqlSession.delete("likeSQL.likeCommentDelete", map);
		
	}

}
