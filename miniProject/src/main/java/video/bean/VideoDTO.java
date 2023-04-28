package video.bean;

import lombok.Getter;
import lombok.Setter;
import java.sql.Timestamp;

@Getter
@Setter
public class VideoDTO {
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

	/*��۾���� �̸�*/
	private int comment_id;
	private String commenter_name;
	private String profile_url;
	private Timestamp comment_date;

	//�߰�
	private String user_name;
	private String user_profile_url;
	private int is_subscribed;
	
	//영상의 댓글들 좋아요 수
	private int user_liked_comment;


	private int commenter_id;
	
	private int user_liked_video;
}
