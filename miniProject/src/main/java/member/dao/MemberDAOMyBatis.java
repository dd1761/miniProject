package member.dao;

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
	public MemberDTO getMember() {
		return sqlSession.selectOne("memberSQL.getMember");
	}

	@Override
	public MemberDTO isExistPwd(String password) {
		return sqlSession.selectOne("memberSQL.isExistPwd", password);
	}

	@Override
	public void insertName(MemberDTO memberDTO) {
		
	}
	

}
