package like.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class LikeDAOMyBatis implements LikeDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void likeVideoPlus(Map<String, Object> map) {
		
		sqlSession.insert("likeSQL.likeVideoPlus", map);
	}

}
