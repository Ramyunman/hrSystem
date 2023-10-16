package kr.co.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.Employees;

@Repository
public class hrBoardDAOImpl implements hrBoardDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	// 사원 추가
	@Override
	public void addEmployee(Employees employees) throws Exception {
		sqlSession.insert("boardMapper.insert", employees);
	}

}
