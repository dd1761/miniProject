package like.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import like.bean.LikeDTO;
import like.service.LikeService;
import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping(value="like")
public class LikeController {
	
	@Autowired
	private LikeService likeService;
	
	@PostMapping(value="likeVideoPlus")
	@ResponseBody
	public void likePlus(@RequestParam int user_id, @RequestParam int video_id) {
		System.out.println("user_id=" + user_id);
		System.out.println("video_id=" + video_id);
		
		Map<String, Object> map = new HashMap<>();
		map.put("user_id", user_id);
		map.put("video_id", video_id);
		
		likeService.likeVideoPlus(map);
	}
	
	@PostMapping(value="getUserLikeInfo")
	@ResponseBody
	public List<LikeDTO> getUserLikeInfo(@RequestParam int user_id, @RequestParam int video_id) {
		
		System.out.println("likecontroller의 user_id값 : " + user_id);
		System.out.println("likecontroller의 video_id값 : " + video_id);
		
		
		return likeService.getUserLikeInfo(user_id, video_id);
	}
	
	@PostMapping(value="likeVideoDelete")
	@ResponseBody
	public void likeVideoDelete(@RequestParam int user_id, @RequestParam int video_id) {
		
		System.out.println("likecontrollerDelete의 user_id값 : " + user_id);
		System.out.println("likecontrollerDelete의 video_id값 : " + video_id);
		
		likeService.likeVideoDelete(user_id, video_id);
	}
	
	@PostMapping(value="likeCommentPlus")
	@ResponseBody
	public void likeCommentPlus(@RequestParam int user_id, @RequestParam int comment_id) {
	    System.out.println("댓글의 user_id의 값" + user_id);
	    System.out.println("댓글의 comment_id의 값" + comment_id);
	    
	    likeService.likeCommentPlus(user_id, comment_id);
	}

	@PostMapping(value="likeCommentDelete")
	@ResponseBody
	public void likeCommentDelete(@RequestParam int user_id, @RequestParam int comment_id) {
		
		likeService.likeCommentDelete(user_id, comment_id);
	}







}
