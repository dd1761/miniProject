package subscribe.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
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

	@PostMapping(value="subscribeOn")
	@ResponseBody
	public void subscribeOn(@RequestParam int user_id, @RequestParam int channel_id){
		System.out.println("userid : "+user_id);
		System.out.println("channelid : "+channel_id);
		subscribeService.subscribeOn(user_id,channel_id);
	}


	@PostMapping(value="subscribeOff")
	@ResponseBody
	public void subscribeOff(@RequestParam int user_id, @RequestParam int channel_id){
		System.out.println("userid : "+user_id);
		System.out.println("channelid : "+channel_id);
		subscribeService.subscribeOff(user_id,channel_id);

	}
}
