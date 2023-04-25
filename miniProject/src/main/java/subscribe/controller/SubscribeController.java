package subscribe.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import subscribe.bean.SubscribeDTO;
import subscribe.service.SubscribeService;

@Controller
@RequestMapping(value="subscribe")
public class SubscribeController {

	@Autowired
	SubscribeService subscribeService;
	
	@PostMapping(value="subscribelist")
	@ResponseBody
	public List<SubscribeDTO> subscribelist(@RequestParam int user_id){
		
		return subscribeService.subscribelist(user_id);
	}
	
}
