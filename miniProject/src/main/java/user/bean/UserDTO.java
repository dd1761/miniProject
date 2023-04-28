package user.bean;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Data
public class UserDTO {
	private int user_id;
	private String name;
	private String password;
	private String profile_url;
	private String rnn;
	private String nickname;
	private String email;
	private String profile_image;
}