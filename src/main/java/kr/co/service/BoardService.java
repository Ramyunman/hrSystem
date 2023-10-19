package kr.co.service;

import java.util.List;

import kr.co.vo.Employee;
import kr.co.vo.SearchCriteria;

public interface BoardService {
	
	// 직원 등록
	public void create(Employee employee) throws Exception;
	
	// 직원 목록 조회
	public List<Employee> list() throws Exception;
	
	// 직원 정보 조회
	public Employee read(int employee_id) throws Exception;
	
	// 직원 수정
	public void update(Employee employee) throws Exception;
		
	// 직원 삭제
	public void delete(int employee_id) throws Exception;
	
	// 총 직원 수
	public int listCount(SearchCriteria scri) throws Exception;
}
