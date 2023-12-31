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

<link rel="stylesheet" href="css/bootstrap-datepicker.css"> <!-- 스타일 시트 경로를 확인하세요 -->
<script src="js/bootstrap-datepicker.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>

<script>
    $(document).ready(function() {
        $('#datepicker1').datepicker({
        	format: 'yyyy-mm-dd',		// 날짜 형식
        	todayBtn: true,			// 오늘 버튼 표시
        	todayHighlight: true,	// 오늘 날짜 강조 표시
        	autoclose: true		// 날짜 선택 후 달력 자동 닫기
        });
    });
    
    $(document).ready(function() {
        $('#datepicker2').datepicker({
        	format: 'yyyy-mm-dd',		// 날짜 형식
        	todayBtn: true,			// 오늘 버튼 표시
        	todayHighlight: true,	// 오늘 날짜 강조 표시
        	autoclose: true		// 날짜 선택 후 달력 자동 닫기
        });
    });
</script>
<title>직원 등록창</title>
</head>
<body>
<div class="container">
	<header>
		<h1>인사관리 시스템</h1>
	</header>
	
	<hr>
	<ul class="nav">
  		<li class="nav-item">
    		<a class="nav-link active" href="list">사원목록</a>
  		</li>
  	</ul>
  	<hr>
  	
  	<section id="container">
  		<form name="createForm" method="post" action="/board/create">
  			<div class="form-row">
    			<div class="form-group col-md-6">
      				<label for="name">성명</label>
      				<input type="text" class="form-control" id="name" name="name" placeholder="성명">
    			</div>
    			<div class="form-group col-md-6">
      				<label for="reg_no">주민번호</label>
      				<input type="text" class="form-control" id="reg_no" name="reg_no" placeholder="주민번호">
    			</div>
  			</div>
  			<div class="form-group">
    			<label for="address">주소</label>
    			<textarea class="form-control" id="address" rows="3" name="address" placeholder="주소"></textarea>
	  		</div>
  			<div class="form-row">
    			<div class="form-group col-md-4">
      				<label for="hire_date">입사일</label>
	      			<input type="text" class="form-control" id="datepicker1" name="hire_date">
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
      				<label for="leave_date">퇴사일</label>
      				<input type="text" class="form-control" id="datepicker2" name="leave_date">
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
      				<input type="text" class="form-control" id="bank_account" name="bank_account">
	    		</div>
  			</div>
  			<div class="form-group">
    			<label for="phone_number">전화번호</label>
    			<input type="text" class="form-control" id="phone_number" name="phone_number" placeholder="전화번호">
	  		</div>
  			<div class="form-group">
    			<label for="email">이메일</label>
    			<input type="email" class="form-control" id="email" name="email" placeholder="이메일">
  			</div>
  		
  			<button type="submit" class="btn btn-dark create_btn">저장</button>
		</form>
	</section>
</div>  	


<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>


</html>