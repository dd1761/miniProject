package community.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import board.bean.BoardDTO;
import channel.bean.ChannelDTO;


public interface CommunityService {

	public List<BoardDTO> getBoardList(int channel_id);

	public void boardDelete(int board_id);

	public void boardUpdate(String board_text, int board_id, int channel_id);

	public ChannelDTO channelUser_id(int board_id);

	public void boardWrite(int channel_id, int user_id, String board_text);

	public BoardDTO getBoardView(int board_id);

	public List<BoardDTO> getBoardCount(int channel_id, int user_id);


	

}
