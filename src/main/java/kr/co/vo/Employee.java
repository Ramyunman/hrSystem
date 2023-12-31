package kr.co.vo;

import java.util.Date;

public class Employee {
	
	private int employee_id;		// 직원번호	
	private String name;			// 성명
	private String email;			// 이메일
	private String phone_number;	// 전화번호
	private String hire_date;		// 입사일
	private String leave_date;		// 퇴사일
	private int department_id;		// 부서번호
	private String address;			// 주소
	private long reg_no;				// 주민번호
	private int bank_id;			// 은행번호
	private String bank_account;	// 급여계좌
	private Department department;
	private Bank bank;
	
	public int getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(int employee_id) {
		this.employee_id = employee_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	
	public String getHire_date() {
		return hire_date;
	}
	public void setHire_date(String hire_date) {
		this.hire_date = hire_date;
	}
	public String getLeave_date() {
		return leave_date;
	}
	public void setLeave_date(String leave_date) {
		this.leave_date = leave_date;
	}
	public int getDepartment_id() {
		return department_id;
	}
	public void setDepartment_id(int department_id) {
		this.department_id = department_id;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public long getReg_no() {
		return reg_no;
	}
	public void setReg_no(long reg_no) {
		this.reg_no = reg_no;
	}
	public int getBank_id() {
		return bank_id;
	}
	public void setBank_id(int bank_id) {
		this.bank_id = bank_id;
	}
	public String getBank_account() {
		return bank_account;
	}
	public void setBank_account(String bank_account) {
		this.bank_account = bank_account;
	}
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	public Bank getBank() {
		return bank;
	}
	public void setBank(Bank bank) {
		this.bank = bank;
	}
	
	
}
