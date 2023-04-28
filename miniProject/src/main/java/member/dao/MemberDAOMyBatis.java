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
import user.bean.UserDTO;

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

	@Override
	public MemberDTO loginOk(int user_id) {
		
		return sqlSession.selectOne("memberSQL.loginOk", user_id);
	}

	@Override
	public void insertMember(Map<String, Object> map) {
		sqlSession.insert("memberSQL.insertMember", map);
		
	}

	@Override
	public MemberDTO isExistPwd2(String email) {
		return sqlSession.selectOne("memberSQL.isExistPwd2", email);
	}

	@Override
	public void UpdatePwd(String email, String password) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("password", password);
		map.put("email", email);
		sqlSession.update("memberSQL.UpdatePwd", map);
	}
	
	@Override
	public MemberDTO getAccount(int user_id) {
		return sqlSession.selectOne("memberSQL.getAccount", user_id);
	}

	@Override
	public void updateAccount(Map<String, Object> map) {
		sqlSession.update("memberSQL.updateAccount", map);
	}

	@Override
	public MemberDTO getDeleteMember(Map<Object, Object> map) {
		return sqlSession.selectOne("memberSQL.getDeleteMember", map);
	}

	@Override
	public void DeleteMember(int user_id) {
		sqlSession.delete("memberSQL.DeleteMember", user_id);
	}

	@Override
	public void upload(String profile_url, int user_id) {
		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("profile_url", profile_url);
		map.put("user_id", user_id);
		System.out.println("user_id = " + user_id+"_");
		System.out.println("profile_url = " + profile_url);
		if(profile_url.equals(user_id+"_")) {
			return;
		}
		sqlSession.update("memberSQL.upload", map);
	}
	
	@Override
	public MemberDTO getChannelMember(String email) {
		return sqlSession.selectOne("memberSQL.getChannelMember", email);
	}

	@Override
	public void write(MemberDTO memberDTO) {
		sqlSession.insert("memberSQL.write", memberDTO);
		
	}
	
	
	
	
}
