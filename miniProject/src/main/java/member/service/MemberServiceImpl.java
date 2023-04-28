package member.service;

import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import member.bean.MemberDTO;
import member.dao.MemberDAO;
import user.bean.UserDTO;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDAO;
	@Autowired
	private HttpSession session;

//	카카오
	@Override
	public void write(MemberDTO memberDTO) {

	    
	        memberDAO.write(memberDTO);
	    
	}
	
	
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
		MemberDTO memberDTO = memberDAO.isExistPwd(password, email);
		if(memberDTO != null)
			session.setAttribute("user_id", memberDTO.getUser_id());
		return memberDTO;
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

	@Override
	public MemberDTO loginOk(int user_id) {
		
		return memberDAO.loginOk(user_id);
	}
	
	@Override
	public void insertMember(Map<String, Object> map) {
		 memberDAO.insertMember(map);
	}

	@Override
	public MemberDTO isExistPwd2(String email) {
		MemberDTO memberDTO = memberDAO.isExistPwd2(email);
		if(memberDTO != null)
			session.setAttribute("user_id", memberDTO.getUser_id());
		return memberDTO;
	}

	@Override
	public void UpdatePwd(String email, String password) {
		memberDAO.UpdatePwd(email, password);	
	}

	@Override
	public MemberDTO getAccount(int user_id) {
		return memberDAO.getAccount(user_id);
	}

	@Override
	public void updateAccount(Map<String, Object> map) {
		memberDAO.updateAccount(map);
	}

	@Override
	public MemberDTO getDeleteMember(Map<Object, Object> map) {
		return memberDAO.getDeleteMember(map);
	}

	@Override
	public void DeleteMember(int user_id) {
		memberDAO.DeleteMember(user_id);
	}

	@Override
	public void upload(String profile_url, int user_id) {
		memberDAO.upload(profile_url, user_id);
		
	}

	@Override
	public MemberDTO getChannelMember(String email) {
		return memberDAO.getChannelMember(email);
	}


	

	
	
	
}
