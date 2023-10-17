package kr.co.dao;

import kr.co.vo.Employees;

public interface BoardDAO {
	
	// 사원 등록
	public void create(Employees employees) throws Exception;

}
