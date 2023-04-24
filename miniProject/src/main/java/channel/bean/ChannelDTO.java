package channel.bean;

import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Component;

import java.sql.Timestamp;

@Getter
@Setter
@Component
public class ChannelDTO {
	private int channel_id;
	private String channel_name;
	private String channel_description;
	private int user_id;
	private String channel_profile_url;
	private String channel_banner_url;

}
