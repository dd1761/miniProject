package user.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import board.bean.BoardDTO;
import channel.bean.ChannelDTO;
import community.service.CommunityService;
import video.bean.VideoDTO;
import video.service.VideoService;

@Controller
@RequestMapping(value="user")
public class UserController {
	@Autowired
	CommunityService communityService;
	
	@Autowired
	VideoService videoService;
	
	@PostMapping(value="upload", produces = "text/html; charset=UTF-8")
	@ResponseBody
	public String upload(@RequestParam("inputvideo_url") MultipartFile inputvideo_url,
			@RequestParam("inputimage_url") MultipartFile inputimage_url,
            @ModelAttribute VideoDTO videoDTO,
            HttpSession session) {
		
		 
		
		//진짜 폴더
		String filePath = session.getServletContext().getRealPath("/WEB-INF/storage");
		
		System.out.println("실제 폴더 = " + filePath);
		
		
		String videoFileName = UUID.randomUUID().toString() + "_" + inputvideo_url.getOriginalFilename();
		String imageFileName = UUID.randomUUID().toString() + "_" + inputimage_url.getOriginalFilename();
		
		
			
		File videoFile = new File(filePath, videoFileName);
		File imageFile = new File(filePath, imageFileName);
		
		try {
			inputvideo_url.transferTo(videoFile);
			inputimage_url.transferTo(imageFile);
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		//DB
		videoDTO.setVideo_url(videoFileName);
		videoDTO.setThumnail_url(imageFileName);
			
	
		
		 communityService.upload(videoDTO); // channel_id 값을 추가적으로 전달
		
		return "동영상 업로드 완료";
	}
	
	
	
	@GetMapping(value="uploadvideoForm")
	public String playvideo(Model model) {
	    return "youtube_studio/uploadvideoForm";
	}
	
	
	
	
	
	
/*	@GetMapping(value="playvideo")
	public String playvideo(Model model) {
		model.addAttribute("display","");
		model.addAttribute("display3", "./video/video.jsp");
		return "index";
	}
	*/
/*	@GetMapping(value="channelForm")
	public String channelForm(Model model) {
		
		model.addAttribute("display","./channel/channelForm.jsp");
		return "index";
	}*/
	
	@GetMapping(value="boardList")
	public String boardList(Model model) {
		
		model.addAttribute("display","./channel/channelForm.jsp");
		model.addAttribute("display2","../board/boardList.jsp");
		return "index";
	}
	
	@PostMapping(value = "getBoardList")
	@ResponseBody
	public List<BoardDTO> getBoardList(@RequestParam("channel_id") int channel_id){
		System.out.println("getboardlist");
		return communityService.getBoardList(channel_id);
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
	
	@PostMapping(value = "boardDelete")
	@ResponseBody
	public void boardDelete(@RequestParam(required = true) int board_id) {
		communityService.boardDelete(board_id);
	}
	
	@PostMapping(value = "boardUpdate")
	@ResponseBody
	public void boardUpdate(@RequestParam(required = true) String board_text, @RequestParam int board_id, @RequestParam int channel_id) {
		System.out.println(board_text + " " + board_id + " " + channel_id);
		communityService.boardUpdate(board_text, board_id, channel_id);
	}
	
	@GetMapping(value = "boardView")
	public String boardView(@RequestParam int board_id,
							Model model) {
		model.addAttribute("board_id", board_id);
		model.addAttribute("display","./board/contentView.jsp");
		return "index";
	}
	
	@PostMapping(value = "getBoardView")
	@ResponseBody
	public BoardDTO getBoardView(@RequestParam int board_id) {
		System.out.println(board_id);
		return communityService.getBoardView(board_id);
	}
	
	
	@PostMapping(value="channelUser_id")
	@ResponseBody
	public ChannelDTO channelUser_id(@RequestParam int user_id){
		System.out.println("dfsfd " + user_id);
		return communityService.channelUser_id(user_id);
	}
	
	@PostMapping(value = "boardWrite")
	@ResponseBody
	public void boardWrite(@RequestParam int channel_id, @RequestParam int user_id, @RequestParam(required = true) String board_text) {
		System.out.println(channel_id + " " + user_id + " " + board_text);
		communityService.boardWrite(channel_id, user_id, board_text);
	}
	
	@PostMapping(value = "getBoardCount")
	@ResponseBody
	public List<BoardDTO> getBoardCount(@RequestParam("channel_id") int channel_id, @RequestParam("user_id") int user_id){
		System.out.println("controller: channel_id : " + channel_id + "user_id : " + user_id);
		System.out.println("바보");
		return communityService.getBoardCount(channel_id, user_id);
	}
}