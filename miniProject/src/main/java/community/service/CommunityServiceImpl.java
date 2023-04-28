package community.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import board.bean.BoardDTO;
import board.dao.BoardDAO;
import video.bean.VideoDTO;

@Service
public class CommunityServiceImpl implements CommunityService {
	@Autowired
	private BoardDAO boardDAO;
	
	@Override
	public List<BoardDTO> getBoardList() {
		return boardDAO.getBoardList();
	}

	@Override
	public void upload(VideoDTO videoDTO) {
		boardDAO.upload(videoDTO);
	}

	

	
	
	
}
