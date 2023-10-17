package kr.co.service;

import java.util.List;

import kr.co.vo.Employees;

public interface BoardService {
	
	// 직원 등록
	public void create(Employees employees) throws Exception;
	
	// 직원 목록 조회
	public List<Employees> list() throws Exception;

}
