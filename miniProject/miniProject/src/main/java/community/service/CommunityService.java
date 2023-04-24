package community.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import board.bean.BoardDTO;


public interface CommunityService {

	public List<BoardDTO> getBoardList();

}
