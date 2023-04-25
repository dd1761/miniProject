package subscribe.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import subscribe.bean.SubscribeDTO;

@Repository
@Transactional
public class SubscribeDAOMyBatis implements SubscribeDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<SubscribeDTO> subscribelist(int user_id) {
		
		return sqlSession.selectList("subscribeSQL.subscribelist", user_id);
	}

	@Override
	public void subscribeOff(int userId) {
		sqlSession.update("subscribeSQL.subscribeOff", userId);
	}

	@Override
	public void subscribeOn(int userId) {
		sqlSession.update("subscribeSQL.subscribeOn", userId);
	}

}
