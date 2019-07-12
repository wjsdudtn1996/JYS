package com.ys.nd.dao;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.ys.nd.vo.MemberVO;

public class MemberDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	
	public int getLogin(MemberVO mVO) {
		return sqlSession.selectOne("mSQL.memCnt" , mVO);
	}
	
	public int getMembCnt(MemberVO mVO) {
		int cnt = 0;
		
		return cnt;
	}
	
	public int getIdCnt(String id) {
		
		return sqlSession.selectOne("mSQL.idCnt", id);
	}
	
}
