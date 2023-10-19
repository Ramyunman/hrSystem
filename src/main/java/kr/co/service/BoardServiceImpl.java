package kr.co.service;

import java.util.List;


import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.vo.Employee;

import kr.co.vo.SearchCriteria;
import kr.co.dao.BoardDAO;
import kr.co.vo.Criteria;
@Service
public class BoardServiceImpl implements BoardService {
	
	@Inject
	private BoardDAO dao;
	
	// 직원 추가
	@Override
	public void create(Employee employee) throws Exception {
		dao.create(employee);
	}

	// 직원 목록 조회
	@Override
	public List<Employee> list(Criteria cri) throws Exception {
		return dao.list(cri);
	}
	
	// 직원 총 인원수
	@Override
	public int listCount() throws Exception {
		return dao.listCount();
	}
	
	// 직원 정보 조회
	@Override
	public Employee read(int employee_id) throws Exception {
		return dao.read(employee_id);
	}
	
	// 직원 수정
	@Override
	public void update(Employee employee) throws Exception {
		dao.update(employee);
	}
		
	// 직원 삭제
	@Override
	public void delete(int employee_id) throws Exception {
		dao.delete(employee_id);
	}

	
}
