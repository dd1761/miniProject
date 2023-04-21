package video.dao;

import history.bean.HistoryDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
@Transactional
public class VideoDAOMyBatis implements VideoDAO {
    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<HistoryDTO> getVideoHistory(int start, int count) {
        int user_id = 4;
        System.out.println("DAO");

        Map<String, Object> map = new HashMap<>();
        map.put("start", start);
        map.put("count", count);
        map.put("user_id", user_id);
        return sqlSession.selectList("videoSQL.getVideoHistory",map);
    }
    
}
