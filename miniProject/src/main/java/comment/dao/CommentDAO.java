package comment.dao;

import java.util.List;

import comment.bean.CommentDTO;

public interface CommentDAO {


    void commentSubmit(Integer userId, Integer videoId, String comment);
}
