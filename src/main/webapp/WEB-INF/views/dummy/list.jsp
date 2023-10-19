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
  	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


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
  		<div class="container-fluid search">
    		<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="hl">
  				<label class="form-check-label" for="inlineRadio1">전체</label>
			</div>
			<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="h">
  				<label class="form-check-label" for="inlineRadio2">근무자</label>
			</div>
			<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="l">
  				<label class="form-check-label" for="inlineRadio3">퇴사자</label>
			</div>
  			<form class="form-inline my-2 my-lg-0">
      			<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
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
      				<td>
      					<a href="/dummy/readView?employee_id=${list.employee_id}"><c:out value ="${list.employee_id}"/></a>
      				</td>

      				<td><c:out value="${list.name}"/></td>
      				<td><c:out value="${list.reg_no}"/></td>
      				<td><c:out value="${list.department.department_name}"/></td>
      				<td>과장</td>
      				<td><c:out value="${list.hire_date}"/></td>
      				<td><c:out value="${list.leave_date}"/></td>
      				<td><c:out value="${list.email}"/></td>
    			</tr>
    		</c:forEach>
  		</tbody>
	</table>
	
	
				
	<nav aria-label="Page navigation example">
  		<ul class="pagination justify-content-center">
    		<c:if test="${pageMaker.prev}">
    			<li class="page-item">
      				<a class="page-link" href="list${pageMaker.makeQuery(pageMaker.startPage - 1}" aria-label="Previous">
        				<span aria-hidden="true">&laquo;</span>
     				</a>
    			</li>
    		</c:if>
    		<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
    			<li class="page-item"><a class="page-link" href="list${pageMaker.makeQuery(idx)}">${idx}</a></li>
    		</c:forEach>
    		
    		<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
    			<li class="page-item">
      				<a class="page-link" href="list${pageMaker.makeQuery(pageMaker.endPage + 1)}" aria-label="Next">
        				<span aria-hidden="true">&raquo;</span>
      				</a>
    			</li>
    		</c:if>
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