package channel.controller;

import channel.bean.ChannelDTO;
import channel.service.ChannelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping(value="channel")
public class ChannelController {
    @Autowired
    private ChannelService channelService;


    /**/
    @GetMapping(value="main")
    public String channelForm(Model model) {

        model.addAttribute("display","./channel/channelForm.jsp");
        return "index";
    }


/*    2.  main 페이지 에서 자바스크립트 실행시키면서 동적으로 가지고오기
    // 이때 필요한 파라미터 :1. user_id (세션값으로 받아올거임) 2.channel_id*/
    @PostMapping(value="getChannelForm")
    @ResponseBody
    public List<ChannelDTO> getChannelForm(@RequestParam("user_id") int user_id, @RequestParam("channel_id") int channel_id) {

        System.out.println("controller : channel_id : " + channel_id +"user_id : " + user_id);

        return channelService.getChannelForm(user_id,channel_id);
    }
}








