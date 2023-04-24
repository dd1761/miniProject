package member.dao;

import java.util.List;

import member.bean.MemberDTO;

public interface MemberDAO {

	public MemberDTO isExistEmail(String email);

	public void insertName(String name);

	public MemberDTO isExistPwd(String password, String email);

	public List<MemberDTO> searchName(String name);

	public List<MemberDTO> isExistRrn(String name, String rrn);

	public List<MemberDTO> getEmailList(String name);

	public MemberDTO loginOk(int user_id);

	

	


}
