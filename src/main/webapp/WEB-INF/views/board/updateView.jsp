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
<title>사원 등록 창</title>
</head>
<body>
<div class="container">
	<h1>인사관리 시스템</h1>
	<ul class="nav">
  		<li class="nav-item">
    		<a class="nav-link active" href="#">사원목록</a>
  		</li>
  	</ul>
  	
  	<form>
  		<div class="form-row">
    		<div class="form-group col-md-6">
      			<label for="inputName">성명</label>
      			<input type="text" class="form-control" id="inputName" placeholder="성명">
    		</div>
    		<div class="form-group col-md-6">
      			<label for="inputJumin">주민번호</label>
      			<input type="text" class="form-control" id="inputJumin" placeholder="주민번호">
    		</div>
  		</div>
  		<div class="form-group">
    		<label for="exampleFormControlTextarea1">주소</label>
    		<textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="주소"></textarea>
  		</div>
  		<div class="form-row">
  			<div class="form-group col-md-4">
      			<label for="inputHire">입사일</label>
      			<input type="text" class="form-control" id="inputHire">
    		</div> 
    		<div class="form-group col-md-4">
      			<label for="inputDepartment">부서명</label>
      			<select id="inputDepartment" class="form-control">
        			<option selected>Choose...</option>
        			<option>...</option>
      			</select>
    		</div>
    		<div class="form-group col-md-4">
      			<label for="inputRetire">퇴사일</label>
      			<input type="text" class="form-control" id="inputRetire">
    		</div>
  		</div>
  		<div class="form-row">
    		<div class="form-group col-md-4">
      			<label for="inputBank">급여은행</label>
      			<select id="inputBank" class="form-control">
        			<option selected>Choose...</option>
        			<option>...</option>
      			</select>
    		</div>
    		<div class="form-group col-md-8">
      			<label for="inputMoney">급여계좌</label>
      			<input type="text" class="form-control" id="inputMoney">
    		</div>
  		</div>
  		
  		<div class="form-group">
    		<label for="exampleFormPhone">전화번호</label>
    		<input type="text" class="form-control" id="exampleFormPhone" placeholder="전화번호">
  		</div>
  		
  		 <div class="form-group">
    		<label for="exampleFormEmail">이메일</label>
    		<input type="email" class="form-control" id="exampleFormEmail" placeholder="이메일">
  		</div>
  		
  		
  		<button type="submit" class="btn btn-dark addEmployee">저장</button>
	</form>
</div>  	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>