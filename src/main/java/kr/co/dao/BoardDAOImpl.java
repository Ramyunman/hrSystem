package kr.co.dao;

import java.util.List;


import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.Employee;
import kr.co.vo.Criteria;
import kr.co.vo.SearchCriteria;


@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	// 직원 등록
	@Override
	public void create(Employee employee) throws Exception {
		sqlSession.insert("boardMapper.insert", employee);
	}
	
	// 직원 목록 조회
	@Override
	public List<Employee> list(SearchCriteria scri) throws Exception {
		return sqlSession.selectList("boardMapper.listPage", scri);
	}
	
	// 직원 총 인원수
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return sqlSession.selectOne("boardMapper.listCount", scri);
	}
	// 직원 정보 조회
	@Override
	public Employee read(int employee_id) throws Exception {
		return sqlSession.selectOne("boardMapper.read", employee_id);
	}
	
	// 직원 수정
	@Override
	public void update(Employee employee) throws Exception {
		sqlSession.update("boardMapper.update", employee);
	}
		
	// 직원 삭제
	@Override
	public void delete(int employee_id) throws Exception {
		sqlSession.delete("boardMapper.delete", employee_id);
	}
	
}
