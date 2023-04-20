package user.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import comment.bean.CommentDTO;
import comment.service.CommentService;

@Controller
@RequestMapping(value="user")
public class UserController {
	private CommentService commentService;
	
	@GetMapping(value="playvideo")
	public String playvideo(Model model) {
		model.addAttribute("display","");
		model.addAttribute("display3", "./video/playvideo.jsp");
		return "index";
	}
	
	@GetMapping(value="channelForm")
	public String channelForm(Model model) {
		
		model.addAttribute("display","./channel/channelForm.jsp");
		return "index";
	}
	
	@GetMapping(value="boardList")
	public String boardList(Model model) {
		
		model.addAttribute("display","./channel/channelForm.jsp");
		model.addAttribute("display2","../board/boardList.jsp");
		return "index";
	}
	
	
}








