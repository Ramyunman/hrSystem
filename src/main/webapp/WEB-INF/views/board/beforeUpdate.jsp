<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<title>직원 정보창</title>
</head>

<body>
<div class="container">
	<header>
		<h1>인사관리 시스템</h1>
	</header>
	
	<ul class="nav">
  		<li class="nav-item">
    		<a class="nav-link active" href="/board/list">사원목록</a>
  		</li>
  	</ul>
  	
  	<section id="container">
  		<form name="readForm" method="post" action="/board/update">
  			<input type="hidden" name="employee_id" value="${beforeUpdate.employee_id}">
  			<div class="form-row">
    			<div class="form-group col-md-6">
      				<label for="name">성명</label>
      				<input type="text" class="form-control" id="name" name="name" value="${beforeUpdate.name}">
    			</div>
    			<div class="form-group col-md-6">
      				<label for="reg_no">주민번호</label>
      				<input type="text" class="form-control" id="reg_no" name="reg_no" value="${beforeUpdate.reg_no}">
    			</div>
  			</div>
  			<div class="form-group">
    			<label for="address">주소</label>
    			<textarea class="form-control" id="address" rows="3" name="address">${beforeUpdate.address}</textarea>
			</div>
  			<div class="form-row">
    			<div class="form-group col-md-4">
  					<label for="hire_date">입사일</label>
  					<input type="text" class="form-control" id="hire_date" name="hire_date" value="${beforeUpdate.hire_date}">
				</div>
    			<div class="form-group col-md-4">
      				<label for="department_id">부서명</label>
      				<select id="inputDepatment" class="form-control" name="department_id" value="${beforeUpdate.department_id}">
        				<option selected>Choose...</option>
        				<option>60</option>
	      			</select>
    			</div>
    			<div class="form-group col-md-4">
  					<label for="hire_date">퇴사일</label>
  					<input type="text" class="form-control" id="leave_date" name="leave_date" value="${beforeUpdate.leave_date}">
				</div>
  			</div>
  			<div class="form-row">
    			<div class="form-group col-md-4">
      				<label for="bank_id">급여은행</label>
      				<select id="inputBank" class="form-control" name="bank_id" value="${beforeUpdate.bank_id}">
        				<option selected>Choose...</option>
        				<option>12</option>
	      			</select>
    			</div>
    			<div class="form-group col-md-8">
      				<label for="bank_account">급여계좌</label>
      				<input type="text" class="form-control" id="bank_account" name="bank_account" value="${beforeUpdate.bank_account}">
	    		</div>
  			</div>
  			<div class="form-group">
    			<label for="phone_number">전화번호</label>
    			<input type="text" class="form-control" id="phone_number" name="phone_number" value="${beforeUpdate.phone_number}">
	  		</div>
  			<div class="form-group">
    			<label for="email">이메일</label>
    			<input type="email" class="form-control" id="email" name="email" value="${beforeUpdate.email}">
  			</div>
  		
  			<button type="button" class="btn btn-dark update_btn">저장</button>
		</form>
	</section>
</div>  	

<script>
$(document).ready(function() {
    $('.update_btn').on('click', function() {
        // 수정할 데이터를 수집하는 코드
        let EmployeeId = '${beforeUpdate.employee_id}';
        let Name = '${beforeUpdate.name}';
        let Email = '${beforeUpdate.email}';
       	let PhoneNumber = '${beforeUpdate.phone_number}';
       	let HireDate = '${beforeUpdate.hire_date}';
        let LeaveDate = '${beforeUpdate.leave_date}';
        let DepartmentId = '${beforeUpdate.department_id}';
       	let Address = '${beforeUpdate.address}';
       	let RegNo = '${beforeUpdate.reg_no}';
        let BankAccount = '${beforeUpdate.bank_account}';
        let BankId = '${beforeUpdate.bank_id}';
        
        // Ajax 요청
        $.ajax({
            url: '/board/update',  // 수정 엔드포인트 또는 컨트롤러 URL로 변경
            type: 'POST',
            data: {
                employee_id: EmployeeId,
                name: Name,
                email: Email,
                phone_number: PhoneNumber,
                hire_date: HireDate,
                leave_date: LeaveDate,
                department_id: DepartmentId,
                address: Address,
                reg_no: RegNo,
                bank_account: BankAccount,
                bank_id: BankId
            },
            success: function(response) {
                // 성공적인 응답 처리
                if (response.success) {
                    alert('수정이 완료되었습니다.');
                    // 여기서 페이지를 다시 로드하거나, 다른 동작을 수행할 수 있음
                } else {
                    alert('수정에 실패했습니다.');
                }
            },
            error: function(xhr, status, error) {
                // 오류 처리
                alert('오류 발생: ' + error);
            }
        });
    });
});

</script>

	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>

</html>