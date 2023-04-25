package member.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import mail.service.MailService;
import member.bean.MemberDTO;
import member.service.MemberService;

@Controller
@RequestMapping(value="member")
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private MailService mailService;
	
	//**************login******************
	@GetMapping(value="login_id")
	public String login_id() {
		return "member/login_id";
	}
	
	@GetMapping(value="login_pwd")
	public String login_pwd(@RequestParam String email, Model model) {
		System.out.println(email);
		model.addAttribute("email", email);
		return "member/login_pwd";
	}
		
	@PostMapping(value="isExistEmail")
	@ResponseBody
	public MemberDTO isExistEmail(@RequestParam String email) {
		return memberService.isExistEmail(email);
	}
	
	@PostMapping(value="isExistPwd")
	@ResponseBody
	public MemberDTO isExistPwd(@RequestParam String password, @RequestParam String email) {
		return memberService.isExistPwd(password, email);
	}

	//**************join******************
	@GetMapping(value="join_name")
	public String join_name() {
		return "member/join_name";
	}
	
	@PostMapping(value="insertName")
	@ResponseBody 
	public void insertName(@RequestParam String name) {
		memberService.insertName(name);
	}
	
	@GetMapping(value="join_email")
	public String join_eamil() {
		return "member/join_email";
	}
	
	@GetMapping(value="join_email2")
	public String join_email2(@RequestParam String email, Model model) {
		System.out.println(email);
		model.addAttribute("email", email);
		return "member/join_email2";
	}
	
	//이메일 인증
	@GetMapping("/mailCheck")
	@ResponseBody
	public String mailCheck(String email) {
		System.out.println("이메일 인증 요청이 들어옴!");
		System.out.println("이메일 인증 이메일 : " + email);
		return mailService.joinEmail(email);
	}
	
	//**************search******************
	@GetMapping(value="search_email1")
	public String search_email1() {
		return "member/search_email1";
	}
	
	@PostMapping(value="searchName")
	@ResponseBody
	public List<MemberDTO> searchName(@RequestParam String name) {
		return memberService.searchName(name);
	}
	
	@GetMapping(value="search_email2")
	public String search_email2(@RequestParam String name, Model model) {
		model.addAttribute("name", name);
		return "member/search_email2";
	}
	
	@PostMapping(value="isExistRrn")
	@ResponseBody
	public List<MemberDTO> isExistRrn(@RequestParam String name, @RequestParam String rrn) {
		return memberService.isExistRrn(name, rrn);
	}
	
	@GetMapping(value="search_email3")
	public String search_email3(@RequestParam String name, Model model) {
		model.addAttribute("name", name);
		return "member/search_email3";
	}
	
	@PostMapping(value="getEmailList")
	@ResponseBody
	public List<MemberDTO> getEmailList(@RequestParam String name) {
		return memberService.getEmailList(name);
	}
	
	@GetMapping(value="login_pwd2")
	public String login_pwd2(@RequestParam String email, Model model) {
		System.out.println(email);
		model.addAttribute("email", email);
		return "member/login_pwd";
	}
	
//	loginOk.js에서 index에서 로그인이 되어있는 상태라면 오른쪽 상단 user의 drop바를 뿌려줌.
	@PostMapping(value="loginOk")
	@ResponseBody
	public MemberDTO loginOk(@RequestParam int user_id) {
		System.out.println(user_id);
		return memberService.loginOk(user_id);
	}
	
	@PostMapping(value="logout")
	public String logout(HttpSession session){
		session.invalidate();
		return "index";
	}
}
