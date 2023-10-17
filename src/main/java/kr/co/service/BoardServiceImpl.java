package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.vo.Employees;
import kr.co.dao.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Inject
	private BoardDAO dao;
	
	// 직원 추가
	@Override
	public void create(Employees employees) throws Exception {
		dao.create(employees);
	}

	// 직원 목록 조회
	public List<Employees> list() throws Exception {
		return dao.list();
	}
	
	// 직원 조회
	public Employees read(int employee_id) throws Exception {
		return dao.read(employee_id);
	}
}
