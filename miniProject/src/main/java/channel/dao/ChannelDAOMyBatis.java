package channel.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import channel.bean.ChannelDTO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
@Transactional
public class ChannelDAOMyBatis implements ChannelDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<ChannelDTO> getChannelForm(int user_id, int channel_id) {

        System.out.println("DAO user_id : "+user_id);

        Map<String, Object> map = new HashMap<>();

        map.put("user_id", user_id);
        map.put("channel_id", channel_id);
        return sqlSession.selectList("channelSQL.getChannelForm",map);

    }

	@Override
	public ChannelDTO myChannel(int user_id) {
		
		return sqlSession.selectOne("channelSQL.myChannel", user_id);
	}

	@Override
	public void insertChannelMember(Map<String, Object> map) {
		sqlSession.insert("channelSQL.insertChannelMember",map);
		
	}

/*    @Override
    public List<ChannelDTO> getVideoById(int user_id, int video_id) {

        System.out.println(user_id+":"+video_id);
        System.out.println("DAO");

        Map<String, Object> map = new HashMap<>();

        map.put("user_id", user_id);
        map.put("video_id", video_id);
        return sqlSession.selectList("videoSQL.getVideoById",map);
    }*/

}
