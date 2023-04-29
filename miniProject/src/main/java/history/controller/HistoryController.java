package history.controller;

import history.service.HistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import history.bean.HistoryDTO;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping(value="history")
public class HistoryController {

	@Autowired
	private HistoryService historyService;

	@GetMapping(value="historyList")
	public String playvideo(Model model) {
		model.addAttribute("display","");
		model.addAttribute("display4", "./history/history.jsp");
		return "index";
	}


	// sql 을 실행시킴
	@PostMapping(value="getVideoHistory")
	@ResponseBody
	public List<HistoryDTO> getVideoHistory(@RequestParam(value ="page",required=false) Integer page, @RequestParam(value ="count",required=false) Integer count,@RequestParam int user_id) {
		page = Optional.ofNullable(page).orElse(1);
		count = Optional.ofNullable(count).orElse(5);
		System.out.println("user_id : " + user_id);
		System.out.println("controller");
		return historyService.getVideoHistory(page,count,user_id);
	}

	@PostMapping(value="addHistoryVideo_id")
	@ResponseBody
	public void addHistoryVideo_id(@RequestParam int user_id,@RequestParam int video_id) {

		historyService.addHistoryVideo_id(user_id,video_id);
	}

	@PostMapping(value="deleteHistory")
	@ResponseBody
	public void deleteHistory(@RequestParam int user_id,@RequestParam int video_id) {

		historyService.deleteHistory(user_id,video_id);
	}
	@PostMapping(value="deleteAllHistory")
	@ResponseBody
	public void deleteAllHistory(@RequestParam int user_id) {

		historyService.deleteAllHistory(user_id);
	}


}