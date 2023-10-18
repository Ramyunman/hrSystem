package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.vo.Employee;
import kr.co.dao.BoardDAO;

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
	public List<Employee> list() throws Exception {
		return dao.list();
	}
	
	// 직원 정보 조회
	public Employee read(int employee_id) throws Exception {
		return dao.read(employee_id);
	}
}
