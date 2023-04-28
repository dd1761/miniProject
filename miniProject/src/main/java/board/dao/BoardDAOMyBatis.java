package board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import board.bean.BoardDTO;
import video.bean.VideoDTO;

@Repository
@Transactional //sql문의 커밋과 클로즈를 대신 해줌 
public class BoardDAOMyBatis implements BoardDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<BoardDTO> getBoardList() {
		return sqlSession.selectList("userSQL.getBoardList");
	}

	@Override
	public void upload(VideoDTO videoDTO) {
		sqlSession.insert("userSQL.upload", videoDTO);
		
	}

	

	
	
	
	
}
