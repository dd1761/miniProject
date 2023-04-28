package community.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import board.bean.BoardDTO;
import board.dao.BoardDAO;
import channel.bean.ChannelDTO;
import video.bean.VideoDTO;

@Service
public class CommunityServiceImpl implements CommunityService {
	@Autowired
	private BoardDAO boardDAO;
	
	@Override
	public List<BoardDTO> getBoardList(int channel_id) {
		return boardDAO.getBoardList(channel_id);
	}

	@Override
	public void boardDelete(int board_id) {
		boardDAO.boardDelete(board_id);
		
	}

	@Override
	public void boardUpdate(String board_text, int board_id, int channel_id) {
		boardDAO.boardUpdate(board_text, board_id, channel_id);
		
	}

	@Override
	public ChannelDTO channelUser_id(int user_id) {
		return boardDAO.channelUser_id(user_id);
		
	}

	@Override
	public void boardWrite(int channel_id, int user_id, String board_text) {
		boardDAO.boardWrite(channel_id, user_id, board_text);
		
	}

	@Override
	public BoardDTO getBoardView(int board_id) {
		return boardDAO.getBoardView(board_id);
	}

	@Override
	public List<BoardDTO> getBoardCount(int channel_id, int user_id) {
		List<BoardDTO> list = boardDAO.getBoardCount(channel_id, user_id);
		return list;
	}

	@Override
	public void upload(VideoDTO videoDTO) {
		boardDAO.upload(videoDTO);
		
	}


	

//	@Override
//	public List<ChannelDTO> boardWrite(int user_id) {
//		return boardDAO.boardWrite(user_id);
//	}
	
	
}
