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
    		<a class="nav-link active" href="/dummy/list">사원목록</a>
  		</li>
  	</ul>
  	
  	<section id="container">
  		<form action="/dummy/update" method="post">
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
  		
  			<button type="submit" class="btn btn-dark update_btn">저장</button>
		</form>
	</section>
</div>  	

<!-- 
<script>
$(document).ready(function() {
    $('.update_btn').on('click', function() {
        // 수정할 데이터를 수집하는 코드
        let employee_id = '${beforeUpdate.employee_id}';
        let name = $("#name").val();
        let email = $("#email").val();
       	let phone_number = $("#phone_number").val();
       	let hire_date = $("#hire_date").val();
        let leave_date = $("#leave_date").val();
        let department_id = $("#department_id").val();
       	let address = $("#address").val();
       	let reg_no = $("#reg_no").val();
        let bank_account = $("#bank_account").val(); 
        let bank_id = $("#bank_id").val();

        // Ajax 요청
        $.ajax({
            url: '/dummy/update',  // 수정 엔드포인트 또는 컨트롤러 URL로 변경
            type: 'POST',
            data: {        
            	"employee_id": employee_id,
                "name": name,
                "email": email,
                "phone_number": phone_number,
                "hire_date": hire_date,
                "leave_date": leave_date,
                "department_id": department_id,
                "address": address,
                "reg_no": reg_no,
                "bank_account": bank_account,
                "bank_id": bank_id
            									},
          	contentType: "application/json; charset=UTF-8",
            success: function(data) {
                alert("성공");
            },
            error: function(xhr, status, error) {
				alert("ERROR : " + status + " : " + error);
            }
        });
    });
});

</script>
 -->
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>

</html>