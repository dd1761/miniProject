package comment.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import comment.bean.CommentDTO;
import comment.dao.CommentDAO;



import org.springframework.stereotype.Service;

@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentDAO commentDAO;
    @Override
    public void commentSubmit(Integer userId, Integer videoId, String comment) {
        commentDAO.commentSubmit(userId,videoId,comment);
    }
}
