package comment.bean;

import java.sql.Time;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CommentDTO {
	private int comment_id;
	private String comment_text;
	private int user_id;
	private int video_id;
	private Time upload_date;
	private int board_id;
}
