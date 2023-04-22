package channel.bean;

import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Component;

import java.sql.Timestamp;

@Getter
@Setter
@Component
public class ChannelDTO {
	private int video_id;
	private String video_title;
	private String video_description;
	private Timestamp upload_date;
	private int channel_id;

	private String video_url;
	private String thumnail_url;
	private int views;
	private int video_like_count;
	private String channel_name;
	private int subscriber_count;
	private String comment_text;
	private int comment_like_count;

	/*댓글쓴사람 이름*/
	private String commenter_name;
	private String profile_url;
	private Timestamp comment_date;

}
