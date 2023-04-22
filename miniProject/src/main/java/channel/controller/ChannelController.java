package channel.controller;

import channel.service.ChannelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping(value="channel")
public class ChannelController {
    @Autowired
    private ChannelService channelService;


    @GetMapping(value="main")
    public String channelForm(Model model) {

        model.addAttribute("display","./channel/channelForm.jsp");
        return "index";
    }

    //1. 비디오재생 main 페이지
/*    @GetMapping(value="main")
    public String playvideo(@RequestParam("video_id") int video_id, Model model) {

        model.addAttribute("display","");
        model.addAttribute("display3", "./video/video.jsp");
        return "index";
    }*/

    /*2.  main 페이지 에서 자바스크립트 실행시키면서 동적으로 가지고오기*/
    // 이때 필요한 파라미터 :1. user_id (세션값으로 받아올거임) 2.video_id
   /* @PostMapping(value="getVideoById")
    @ResponseBody
    public List<VideoDTO> getVideoById(@RequestParam("user_id") int user_id,@RequestParam("video_id") int video_id) {

        System.out.println("controller : video_id : " + video_id +"user_id : " + video_id);

        return videoService.getVideoById(user_id,video_id);
    }
*/
}








