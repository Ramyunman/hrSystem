<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>직원 목록창</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


	<style>
	
	</style>
</head>
<body>

<div class="container">
	<h1>인사관리 시스템</h1>

	<ul class="nav">
  		<li class="nav-item">
    		<a class="nav-link active" href="list">사원목록</a>
  		</li>
  	</ul>
  	
  	<nav class="navbar bg-body-tertiary">
  		<div class="container-fluid">
    		<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
  				<label class="form-check-label" for="inlineRadio1">전체</label>
			</div>
			<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
  				<label class="form-check-label" for="inlineRadio2">근무자</label>
			</div>
			<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">
  				<label class="form-check-label" for="inlineRadio3">퇴사자</label>
			</div>
  			<form class="form-inline">
    			<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
    			<i class="fas fa-search" aria-hidden="true"></i>
  			</form>
  		</div>
	</nav>
	
	<table class="table table-striped">
  		<thead class="table-dark">
    		<tr>
      			<th scope="col">선택</th>
      			<th scope="col">사원번호</th>
      			<th scope="col">성명</th>
      			<th scope="col">주민번호</th>
      			<th scope="col">부서명</th>
      			<th scope="col">직위</th>
      			<th scope="col">입사일</th>
      			<th scope="col">퇴사일</th>
      			<th scope="col">Email</th>
    		</tr>
  		</thead>
  		<tbody>
  			<c:forEach items="${list}" var="list">
    			<tr>
      				<td>
            			<input type="checkbox" class="checkbox-class" name="selectedItems" value="${item.itemId}">
            		</td>
      				<td><a href="${pageContext.request.contextPath}/board/readView/${list.employee_id}">${list.employee_id}</a></td>

      				<td><c:out value="${list.name}"/></td>
      				<td><c:out value="${list.reg_no}"/></td>
      				<td><c:out value="${list.department.department_name}"/></td>
      				<td>직위</td>
      				<td><fmt:formatDate value="${list.hire_date}" pattern="yyyy-MM-dd"/></td>
      				<td><fmt:formatDate value="${list.leave_date}" pattern="yyyy-MM-dd"/></td>
      				<td><c:out value="${list.email}"/></td>
    			</tr>
    		</c:forEach>
  		</tbody>
	</table>
	
	<nav aria-label="Page navigation example">
  		<ul class="pagination">
    		<li class="page-item">
      			<a class="page-link" href="#" aria-label="Previous">
        			<span aria-hidden="true">&laquo;</span>
     			</a>
    		</li>
    		<li class="page-item"><a class="page-link" href="#">1</a></li>
    		<li class="page-item"><a class="page-link" href="#">2</a></li>
    		<li class="page-item"><a class="page-link" href="#">3</a></li>
    		<li class="page-item">
      			<a class="page-link" href="#" aria-label="Next">
        			<span aria-hidden="true">&raquo;</span>
      			</a>
    		</li>
  		</ul>
	</nav>
	
	<div class="d-grid gap-2 d-md-block">
  		<button class="btn btn-dark create_btn" type="button" onclick="window.location.href='createView'">추가</button>
  		<button class="btn btn-dark delete_btn" type="button">삭제</button>
	</div>
</div>	
	
	
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>

</html>
	
</body>
</html>