<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>직원 정보창</title>
</head>
<script type="text/javascript">
	$(document).ready(function() {
		var formObj = $("form[name='updateForm']");

		$(".cancel_btn").on("click", function() {
			event.preventDefault();
			location.href = "/dummy/list";
		})
		
		// 수정
		$(".update_btn").on("click", function() {
			formObj.attr("action", "/dummy/update");
			formObj.attr("method", "post");
			formObj.submit();
		})
	})
	
	
	
	
</script>
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
	  		<form name="updateForm" role="form" method="post" action="/dummy/update">
  				<input type="hidden" name="employee_id" value="${update.employee_id}" readonly="readonly">
  				<div class="form-row">
    				<div class="form-group col-md-6">
      					<label for="name">성명</label>
      					<input type="text" class="form-control" id="name" name="name" value="${update.name}">
    				</div>
    				<div class="form-group col-md-6">
      					<label for="reg_no">주민번호</label>
      					<input type="text" class="form-control" id="reg_no" name="reg_no" value="${update.reg_no}">
    				</div>
  				</div>
  				<div class="form-group">
    				<label for="address">주소</label>
    				<textarea class="form-control" id="address" rows="3" name="address">${update.address}</textarea>
				</div>
  				<div class="form-row">
    				<div class="form-group col-md-4">
  						<label for="hire_date">입사일</label>
  						<input type="text" class="form-control" id="hire_date" name="hire_date" value="${update.hire_date}">
					</div>
    				<div class="form-group col-md-4">
      					<label for="department_id">부서명</label>
      					<select id="inputDepatment" class="form-control" name="department_id">
        					<option value="10">관리부</option>
        					<option value="20">영업부</option>
        					<option value="30">구매부</option>
        					<option value="40">인사부</option>
        					<option value="50">배송부</option>
        					<option value="60">IT사업부</option>
	      				</select>
    				</div>
    				<div class="form-group col-md-4">
  						<label for="hire_date">퇴사일</label>
  						<input type="text" class="form-control" id="leave_date" name="leave_date" value="${update.leave_date}">
					</div>
  				</div>
  				<div class="form-row">
    				<div class="form-group col-md-4">
      					<label for="bank_id">급여은행</label>
      					<select id="inputBank" class="form-control" name="bank_id">
        					<option value="10">국민은행</option>
        					<option value="11">기업은행</option>
        					<option value="12">우리은행</option>
        					<option value="13">농협은행</option>
	      				</select>
    				</div>
    				<div class="form-group col-md-8">
      					<label for="bank_account">급여계좌</label>
      					<input type="text" class="form-control" id="bank_account" name="bank_account" value="${update.bank_account}">
	    			</div>
  				</div>
  				<div class="form-group">
    				<label for="phone_number">전화번호</label>
    				<input type="text" class="form-control" id="phone_number" name="phone_number" value="${update.phone_number}">
	  			</div>
  				<div class="form-group">
    				<label for="email">이메일</label>
    				<input type="email" class="form-control" id="email" name="email" value="${update.email}">
  				</div>
  		
  				<button type="submit" class="btn btn-dark update_btn">저장</button>
  				<button type="submit" class="btn btn-dark cancel_btn">취소</button>
			</form>
		</section>
	</div>  	

	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>

</html>