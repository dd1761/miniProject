package video.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import video.bean.VideoDTO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
@Transactional
public class VideoDAOMyBatis implements VideoDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<VideoDTO> getVideoById(int user_id, int video_id) {

        System.out.println(user_id+":"+video_id);
        System.out.println("DAO");

        Map<String, Object> map = new HashMap<>();

        map.put("user_id", user_id);
        map.put("video_id", video_id);
        return sqlSession.selectList("videoSQL.getVideoById",map);
    }
    
}
