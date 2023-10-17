package kr.co.dao;

import kr.co.vo.Employees;
import java.util.List;

public interface BoardDAO {
	
	// 직원 등록
	public void create(Employees employees) throws Exception;
	
	// 직원 목록 조회
	public List<Employees> list() throws Exception;
	
	// 직원 조회
	public Employees read(int employee_id) throws Exception;

}
