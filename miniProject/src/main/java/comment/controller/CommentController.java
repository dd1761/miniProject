package comment.controller;

import comment.service.CommentService;
import history.service.HistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Controller
@RequestMapping(value="comment")
public class CommentController {

    @Autowired
    private CommentService commentService;

    // sql 을 실행시킴
    @PostMapping(value = "commentSubmit", consumes = "application/json")
    @ResponseBody
    public void commentSubmit(@RequestBody Map<String, String> requestData) throws UnsupportedEncodingException {
        Integer user_id = Integer.parseInt(requestData.get("user_id"));
        Integer video_id = Integer.parseInt(requestData.get("video_id"));
        String comment = requestData.get("comment");
        comment = java.net.URLDecoder.decode(comment, "UTF-8");
        System.out.println(user_id);
        System.out.println(video_id);
        System.out.println(comment);

        commentService.commentSubmit(user_id,video_id,comment);
    }
}

