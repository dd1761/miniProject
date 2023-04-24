package history.bean;

import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Getter
@Setter
public class HistoryDTO {
	/*private int video_id;*/
	// Video ���̺� Į��
	private String video_title;
	private String video_description;
	private LocalDateTime upload_date;
	private int channel_id;
	private String video_url;
	private String thumnail_url;
	private int views;
	
	// History ���̺� Į�� 
	private int history_id;
	private int user_id;
	private int video_id;
	private LocalDateTime watch_date;
	
	// Channel ���̺� Į��

	private String channel_name;
	private String channel_profile_url;


}