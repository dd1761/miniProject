package comment.service;

import java.util.List;

import comment.bean.CommentDTO;

public interface CommentService {


    void commentSubmit(Integer userId, Integer videoId, String comment);

    void deleteCommentUseByCommentId(int comment_id);
}
