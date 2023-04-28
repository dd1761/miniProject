package member.dao;

import java.util.List;
import java.util.Map;

import member.bean.MemberDTO;
import user.bean.UserDTO;

public interface MemberDAO {

	public MemberDTO isExistEmail(String email);

	public void insertName(String name);

	public MemberDTO isExistPwd(String password, String email);

	public List<MemberDTO> searchName(String name);

	public List<MemberDTO> isExistRrn(String name, String rrn);

	public List<MemberDTO> getEmailList(String name);

	public MemberDTO loginOk(int user_id);
	
	public void insertMember(Map<String, Object> map);

	public MemberDTO isExistPwd2(String email);

	public void UpdatePwd(String email, String password);

	public MemberDTO getAccount(int user_id);

	public void updateAccount(Map<String, Object> map);

	public MemberDTO getDeleteMember(Map<Object, Object> map);

	public void DeleteMember(int user_id);

	public void upload(String profile_url, int user_id);

	public MemberDTO getChannelMember(String email);

	


}
