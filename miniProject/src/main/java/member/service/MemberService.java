package member.service;

import member.bean.MemberDTO;

public interface MemberService {

	public MemberDTO isExistEmail(String email);

	public MemberDTO getMember();

	public MemberDTO isExistPwd(String password);

	public void insertName(MemberDTO memberDTO);

}
