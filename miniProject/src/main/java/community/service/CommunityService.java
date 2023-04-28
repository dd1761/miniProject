package community.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import board.bean.BoardDTO;
import video.bean.VideoDTO;


public interface CommunityService {

	public List<BoardDTO> getBoardList();

	public void upload(VideoDTO videoDTO);

	

	
}
