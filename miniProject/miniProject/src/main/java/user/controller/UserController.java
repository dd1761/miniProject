package user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import board.bean.BoardDTO;
import community.service.CommunityService;
import history.bean.VideoDTO;
import history.service.VideoService;
import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping(value="user")
public class UserController {
	@Autowired
	CommunityService communityService;
	
	@Autowired
	VideoService videoService;
	
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
	
	@PostMapping(value = "getBoardList")
	@ResponseBody
	public List<BoardDTO> getBoardList(){
		return communityService.getBoardList();
	}
	
	
	@GetMapping(value = "videosearch")
	public String videosearch(@RequestParam String videotitle, Model model) {
		
		model.addAttribute("display", "");
		model.addAttribute("display5", "./search/videosearch.jsp");
		
		
		return "index";
	}
	
	@PostMapping(value = "searchVideo")
	@ResponseBody
	public List<VideoDTO> searchVideo(@RequestParam String videotitle){
		//index.js로 돌아가서 받아온 데이터를 가지고 searchvideo로 넘어가야함
		System.out.println(videotitle);
		return videoService.searchVideo(videotitle);
	}
	
	@PostMapping(value = "mainContainerVideo")
	@ResponseBody
	public List<VideoDTO> mainContainerVideo(){
		
		return videoService.mainContainerVideo();
	}
}








