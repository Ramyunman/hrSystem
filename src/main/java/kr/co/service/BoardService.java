package kr.co.service;

import java.util.List;

import kr.co.vo.Employee;

public interface BoardService {
	
	// 직원 등록
	public void create(Employee employee) throws Exception;
	
	// 직원 목록 조회
	public List<Employee> list() throws Exception;
	
	// 직원 정보 조회
	public Employee read(int employee_id) throws Exception;
	
	// 직원 정보 수정 전
	public Employee beforeUpdate(int employee_id) throws Exception;	

	// 직원 수정
	public void update(Employee employee) throws Exception;
		
	// 직원 삭제
	public void delete(int employee_id) throws Exception;
}
