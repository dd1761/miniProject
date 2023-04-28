package board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections4.map.HashedMap;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import board.bean.BoardDTO;
import channel.bean.ChannelDTO;

@Repository
@Transactional //sql문의 커밋과 클로즈를 대신 해줌 
public class BoardDAOMyBatis implements BoardDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<BoardDTO> getBoardList(int channel_id) {
		return sqlSession.selectList("userSQL.getBoardList", channel_id);
	}

	@Override
	public void boardDelete(int board_id) {
		sqlSession.delete("userSQL.boardDelete", board_id);
		
	}

	@Override
	public void boardUpdate(String board_text, int board_id, int channel_id) {
		Map<String, Object> map = new HashedMap<String, Object>();
		map.put("board_text", board_text);
		map.put("board_id", board_id);
		map.put("channel_id", channel_id);
		sqlSession.update("userSQL.boardUpdate", map);
		
	}

	@Override
	public ChannelDTO channelUser_id(int user_id) {
//		System.out.println("dsfsdfsdfsdf  "+user_id);
		ChannelDTO channelDTO = sqlSession.selectOne("userSQL.channelUser_id", user_id);
//		System.out.println(channelDTO);
		return channelDTO;
		
	}

	@Override
	public void boardWrite(int channel_id, int user_id, String board_text) {
		Map<String, Object> map = new HashedMap<String, Object>();
		map.put("channel_id", channel_id);
		map.put("user_id", user_id);
		map.put("board_text", board_text);
		sqlSession.insert("userSQL.boardWrite", map);
		
	}

	@Override
	public BoardDTO getBoardView(int board_id) {
		BoardDTO boardDTO = sqlSession.selectOne("userSQL.getBoardView", board_id);
		return boardDTO;
	}

	@Override
	public List<BoardDTO> getBoardCount(int channel_id, int user_id) {
		System.out.println(user_id+":"+channel_id);
		System.out.println("DAO");
		
		Map<String, Object> map = new HashMap<>();

        map.put("user_id", user_id);
        map.put("channel_id", channel_id);
		
		return sqlSession.selectList("userSQL.getBoardCount", map);
	}

	

//	@Override
//	public List<ChannelDTO> boardWrite(int user_id) {
//		return sqlSession.selectList("userSQL.boardWrite",user_id);
//	}

}
