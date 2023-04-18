package user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="user")
public class UserController {
	
	@GetMapping(value="playvideo")
	public String playvideo() {
		
		return "video/playvideo";
	}
	
	@GetMapping(value="channelForm")
	public String channelForm(Model model) {
		
		model.addAttribute("display","./channel/channelForm.jsp");
		return "index";
	}
}









