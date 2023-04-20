package member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import member.bean.MemberDTO;
import member.service.MemberService;

@Controller
@RequestMapping(value="member")
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@GetMapping(value="login_id")
	public String writeForm() {
		return "member/login_id";
	}
	
	@GetMapping(value="login_pwd")
	public String login_pwd() {
		
		return "member/login_pwd";
	}
		
	@PostMapping(value="isExistEmail")
	@ResponseBody
	public MemberDTO isExistEmail(@RequestParam String email) {

		return memberService.isExistEmail(email);
	}
	
	@PostMapping(value="getMember")
	@ResponseBody
	public MemberDTO getMember() {
		return memberService.getMember();
	}
	
	@PostMapping(value="isExistPwd")
	@ResponseBody
	public MemberDTO isExistPwd(@RequestParam String password) {
		
		return memberService.isExistPwd(password);
	}
	
	@GetMapping(value="join_name")
	public String join_name() {
		return "member/join_name";
	}
	
	@PostMapping(value="insertName")
	@ResponseBody 
	public void insertName(@ModelAttribute MemberDTO memberDTO) {
		memberService.insertName(memberDTO);
	}
	

}
