package history.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import history.bean.HistoryDTO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
@Transactional
public class HistoryDAOMyBatis implements HistoryDAO {
    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<HistoryDTO> getVideoHistory(int start, int count,int user_id) {

        System.out.println("DAO");

        Map<String, Object> map = new HashMap<>();
        map.put("start", start);
        map.put("count", count);
        map.put("user_id", user_id);
        return sqlSession.selectList("historySQL.getVideoHistory",map);
    }

    @Override
    public void addHistoryVideo_id(int user_id, int video_id) {
        Map<String, Object> map = new HashMap<>();
        map.put("video_id", video_id);
        map.put("user_id", user_id);
        sqlSession.selectList("historySQL.addHistoryVideo_id",map);
    }

    @Override
    public void deleteHistory(int user_id, int video_id) {
        Map<String, Object> map = new HashMap<>();
        map.put("video_id", video_id);
        map.put("user_id", user_id);
        sqlSession.delete("historySQL.deleteHistory",map);
    }

    @Override
    public void deleteAllHistory(int user_id) {
        Map<String, Object> map = new HashMap<>();

        map.put("user_id", user_id);
        sqlSession.delete("historySQL.deleteAllHistory",map);
    }

}
