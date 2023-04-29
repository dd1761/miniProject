package user.bean;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserDTO {
	private int user_id;
	private String name;
	private String password;
	private String profile_url;
	private String rnn;
}
