package member.dao;

import member.bean.MemberDTO;

public interface MemberDAO {

	public MemberDTO isExistEmail(String email);

	public MemberDTO getMember();

	public MemberDTO isExistPwd(String password);

	public void insertName(MemberDTO memberDTO);

}
