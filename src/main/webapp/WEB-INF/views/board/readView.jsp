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
  		<input type="hidden" name="employee_id" value="${read.employee_id}">
  			<div class="form-row">
    			<div class="form-group col-md-6">
      				<label for="name">성명</label>
      				<input type="text" class="form-control" id="name" name="name" value="${read.name}" readonly="readonly">
    			</div>
    			<div class="form-group col-md-6">
      				<label for="reg_no">주민번호</label>
      				<input type="text" class="form-control" id="reg_no" name="reg_no" value="${read.reg_no}" readonly="readonly">
    			</div>
  			</div>
  			<div class="form-group">
    			<label for="address">주소</label>
    			<textarea class="form-control" id="address" rows="3" name="address" readonly="readonly">${read.address}</textarea>
			</div>
  			<div class="form-row">
    			<div class="form-group col-md-4">
  					<label for="hire_date">입사일</label>
  					<fmt:formatDate value="${read.hire_date}" pattern="yy/MM/dd" var="formattedHireDate"/>
  					<input type="text" class="form-control" id="hire_date" name="hire_date" value="${formattedHireDate}" readonly="readonly">
				</div>

    			<div class="form-group col-md-4">
      				<label for="department_id">부서명</label>
      				<select id="inputDepatment" class="form-control" name="department_id" value="${read.department.department_name}" readonly="readonly">
        				<option selected>Choose...</option>
        				<option>60</option>
	      			</select>
    			</div>
    			<div class="form-group col-md-4">
  					<label for="hire_date">입사일</label>
  					<fmt:formatDate value="${read.hire_date}" pattern="yy/MM/dd" var="formattedLeaveDate"/>
  					<input type="text" class="form-control" id="hire_date" name="hire_date" value="${formattedLeaveDate}" readonly="readonly">
				</div>
  			</div>
  			<div class="form-row">
    			<div class="form-group col-md-4">
      				<label for="bank_id">급여은행</label>
      				<select id="inputBank" class="form-control" name="bank_id" value="${read.bank_id}" readonly="readonly">
        				<option selected>Choose...</option>
        				<option>12</option>
	      			</select>
    			</div>
    			<div class="form-group col-md-8">
      				<label for="bank_account">급여계좌</label>
      				<input type="text" class="form-control" id="bank_account" name="bank_account" value="${read.bank_account}" readonly="readonly">
	    		</div>
  			</div>
  			<div class="form-group">
    			<label for="phone_number">전화번호</label>
    			<input type="text" class="form-control" id="phone_number" name="phone_number" value="${read.phone_number}" readonly="readonly">
	  		</div>
  			<div class="form-group">
    			<label for="email">이메일</label>
    			<input type="email" class="form-control" id="email" name="email" value="${read.email}" readonly="readonly">
  			</div>
  		
  			<button type="button" class="btn btn-dark beforeUpdate_btn" onclick="window.location.href='/board/beforeUpdate/${read.employee_id}'">수정</button>

		
	</section>
</div>  	
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
<script>


</script>

</html>