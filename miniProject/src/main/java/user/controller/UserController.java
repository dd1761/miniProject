package user.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import board.bean.BoardDTO;
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
	
	/*
	@PostMapping(value="upload", produces = "text/html; charset=UTF-8")
	@ResponseBody
	public String upload(@RequestParam("inputimage_url") MultipartFile imageFile,
	                     @RequestParam("inputvideo_url") MultipartFile videoFile,
	                     @ModelAttribute VideoDTO videoDTO,
	                     HttpSession session) {

	    // 이미지 파일 처리
	    String imageFilePath = session.getServletContext().getRealPath("/WEB-INF/storage");
	    String imageFileName = UUID.randomUUID().toString() + "_" + imageFile.getOriginalFilename();
	    File imageFileObj = new File(imageFilePath, imageFileName);
	    try {
	        imageFile.transferTo(imageFileObj);
	    } catch (IllegalStateException | IOException e) {
	        e.printStackTrace();
	    }

	    // 영상 파일 처리
	    String videoFilePath = session.getServletContext().getRealPath("/WEB-INF/storage");
	    String videoFileName = UUID.randomUUID().toString() + "_" + videoFile.getOriginalFilename();
	    File videoFileObj = new File(videoFilePath, videoFileName);
	    try {
	        videoFile.transferTo(videoFileObj);
	    } catch (IllegalStateException | IOException e) {
	        e.printStackTrace();
	    }

	    // DB에 저장
	    communityService.upload(videoDTO, imageFileName, videoFileName);

	    return "이미지 및 영상 등록 완료";
	}
	
	*/
	
	@GetMapping(value="uploadvideoForm")
	public String playvideo(Model model) {
	    return "youtube_studio/uploadvideoForm";
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








