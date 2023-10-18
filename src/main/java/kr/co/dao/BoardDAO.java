package kr.co.dao;

import kr.co.vo.Employee;
import java.util.List;

public interface BoardDAO {
	
	// 직원 등록
	public void create(Employee employee) throws Exception;
	
	// 직원 목록 조회
	public List<Employee> list() throws Exception;
	
	// 직원 정보 조회
	public Employee read(int employee_id) throws Exception;

}
