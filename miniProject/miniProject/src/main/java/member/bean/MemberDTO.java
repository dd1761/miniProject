package member.bean;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberDTO {
	private int user_id;
	private String name;
	private String email;
	private String password;
	private String profile_url;
	private String rrn;
}
