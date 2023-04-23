package member.service;

import java.util.List;
import java.util.Map;

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
	public void insertName(String name) {
		memberDAO.insertName(name);
	}

	@Override
	public MemberDTO isExistPwd(String password, String email) {
		return memberDAO.isExistPwd(password, email);
	}

	@Override
	public List<MemberDTO> searchName(String name) {
		return memberDAO.searchName(name);
	}

	@Override
	public List<MemberDTO> isExistRrn(String name, String rrn) {
		return memberDAO.isExistRrn(name, rrn);
	}

	@Override
	public List<MemberDTO> getEmailList(String name) {
		return memberDAO.getEmailList(name);
	}



	

}
