package history.controller;

import history.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import history.bean.VideoDTO;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping(value="history")
public class VideoController {

	@Autowired
	private VideoService videoService;

	@GetMapping(value="historyList")
	public String playvideo(Model model) {
		model.addAttribute("display","");
		model.addAttribute("display4", "./history/history.jsp");
		return "index";
	}

	//처음 페이지
/*	@GetMapping(value="/main")
	public String test() {

		return "history/history";
	}*/


	// sql 을 실행시킴
	@PostMapping(value="getVideoHistory")
	@ResponseBody
	public List<VideoDTO> getVideoHistory(@RequestParam(value ="page",required=false) Integer page, @RequestParam(value ="count",required=false) Integer count) {
		page = Optional.ofNullable(page).orElse(1);
		count = Optional.ofNullable(count).orElse(5);
		System.out.println("controller");
		return videoService.getVideoHistory(page,count);
	}




}
