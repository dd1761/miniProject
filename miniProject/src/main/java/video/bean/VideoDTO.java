package video.bean;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class VideoDTO {
	private int user_id;
	private String name;
	private String password;
	private String profile_url;
	private String rnn;
}
