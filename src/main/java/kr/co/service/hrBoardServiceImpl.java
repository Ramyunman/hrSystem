package kr.co.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.vo.Employees;
import kr.co.dao.hrBoardDAO;

@Service
public class hrBoardServiceImpl implements hrBoardService {
	
	@Inject
	private hrBoardDAO dao;
	
	// 사원 추가
	@Override
	public void create(Employees employees) throws Exception {
		dao.create(employees);
	}

}
