package comment.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import comment.bean.CommentDTO;

@Repository
@Transactional
public class CommentDAOMyBatis implements CommentDAO {

    @Autowired
    private SqlSession sqlSession;
    @Override
    public void commentSubmit(Integer userId, Integer videoId, String comment) {

            Map<String, Object> map = new HashMap<>();
            map.put("user_id", userId);
            map.put("video_id", videoId);
            map.put("comment_text", comment);

            System.out.println(map);
            sqlSession.insert("commentSQL.commentSubmit", map);
    }
}
