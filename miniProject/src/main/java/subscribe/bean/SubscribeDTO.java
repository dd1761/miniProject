package subscribe.bean;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SubscribeDTO {

	private int subscription_id;
	private int user_id;
	private int channel_id;
	
	
	private String channel_name;
	private String channel_description;
	
	private String channel_profile_url;
	private String channel_banner_url;
}
