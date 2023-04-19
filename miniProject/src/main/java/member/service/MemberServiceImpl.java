package member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import member.bean.MemberDTO;
import member.dao.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDAO;

	@Override
	public MemberDTO isExistEmail(String email) {
		return memberDAO.isExistEmail(email);
	}

	@Override
	public MemberDTO getMember() {
		return memberDAO.getMember();
	}

	@Override
	public MemberDTO isExistPwd(String password) {
		return memberDAO.isExistPwd(password);
	}

	@Override
	public void insertName(MemberDTO memberDTO) {
		memberDAO.insertName(memberDTO);
	}


}
