package like.bean;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class LikeDTO {
	private int like_id;
	private int user_id;
	private int video_id;
	private int comment_id;
	private int board_id;
}
