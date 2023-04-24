package member.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import member.bean.MemberDTO;

@Repository
@Transactional
public class MemberDAOMyBatis implements MemberDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public MemberDTO isExistEmail(String email) {
		return sqlSession.selectOne("memberSQL.isExistEmail", email);
	}

	@Override
	public void insertName(String name) {
		sqlSession.insert("memberSQL.insertName", name);
	}

	@Override
	public MemberDTO isExistPwd(String password, String email) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("password", password);
		map.put("email", email);
		return sqlSession.selectOne("memberSQL.isExistPwd", map);
	}

	@Override
	public List<MemberDTO> searchName(String name) {
		return sqlSession.selectList("memberSQL.searchName", name);

	}

	@Override
	public List<MemberDTO> isExistRrn(String name, String rrn) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("name", name);
		map.put("rrn", rrn);
		return sqlSession.selectList("memberSQL.isExistRrn", map);
	}

	@Override
	public List<MemberDTO> getEmailList(String name) {
		return sqlSession.selectList("memberSQL.getEmailList", name);
	}



	
}
