package kr.co.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.Employees;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	// 사원 등록
	@Override
	public void create(Employees employees) throws Exception {
		sqlSession.insert("boardMapper.insert", employees);
	}

}
