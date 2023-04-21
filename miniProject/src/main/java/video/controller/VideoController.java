package video.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import board.bean.BoardDTO;
import community.service.CommunityService;

@Controller
@RequestMapping(value="video")
public class VideoController {
    @Autowired
    CommunityService communityService;

    @GetMapping(value="playvideo")
    public String playvideo(Model model) {
        model.addAttribute("display","");
        model.addAttribute("display3", "./video/playvideo.jsp");
        return "index";
    }

}








