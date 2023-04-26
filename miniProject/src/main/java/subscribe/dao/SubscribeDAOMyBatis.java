package subscribe.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public void subscribeOff(int userId,int channelId){

		int user_id = userId;
		int channel_id = channelId;
		Map<String, Object> map = new HashMap<>();
		map.put("user_id", user_id);
		map.put("channel_id", channel_id);

		sqlSession.delete("subscribeSQL.subscribeOff", map);
	}
	@Override
	public void subscribeOn(int userId,int channelId){

		int user_id = userId;
		int channel_id = channelId;
 		Map<String, Object> map = new HashMap<>();
		map.put("user_id", user_id);
		map.put("channel_id", channel_id);

		sqlSession.update("subscribeSQL.subscribeOn", map);
	}

}
