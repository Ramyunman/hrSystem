package kr.co.service;

import kr.co.vo.Employees;

public interface BoardService {
	
	// 사원 등록
	public void create(Employees employees) throws Exception;

}
