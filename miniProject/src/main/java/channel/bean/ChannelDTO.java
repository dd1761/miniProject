package channel.bean;

import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Component;

import java.sql.Timestamp;
import java.util.Date;

@Getter
@Setter
@Component
public class ChannelDTO {
	private int video_id;
	private int channel_id;
	private String video_title;
	private String video_description;
	private String video_url;
	private int views;
	private Date upload_date;
	private int is_subscribed;
	private String thumnail_url;
	private String channel_name;
	private String channel_description;
	private int subscriber_count;
	private String profile_url;
}