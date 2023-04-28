package board.dao;

import java.util.List;

import board.bean.BoardDTO;
import video.bean.VideoDTO;

public interface BoardDAO {

	public List<BoardDTO> getBoardList();

	public void upload(VideoDTO videoDTO);
	
	

}
