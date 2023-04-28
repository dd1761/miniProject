package board.bean;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardDTO {
	private int board_id;
	private int channel_id;
	private int user_id;
	private String board_text;
	private String upload_date;
	private String channel_name;
	private int like_count;
	private int comment_count;
	private String channel_profile_url;
	private String channel_description;
}
