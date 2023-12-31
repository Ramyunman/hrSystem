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
	<link rel="stylesheet" href="js/bootstrap-datepicker.css"> <!-- 스타일 시트 경로를 확인하세요 -->
    <script src="js/bootstrap-datepicker.js"></script>
<style>
.table-striped {
	margin-top: 20px;
}
</style>
</head>
<body>

<div class="container">
	<h1>인사관리 시스템</h1>

	<hr>
	<ul class="nav">
  		<li class="nav-item">
    		<a class="nav-link active" href="list">사원목록</a>
  		</li>
  	</ul>
  	<hr>
  	
  	<div class="container">
  		<div class="row">
    		<div class="col"></div>
    		<div class="col-6 search" style="display: flex; flex-direction: row;">
     		 	
     		 	<div class="form-check form-check-inline">
    				<input class="form-check-input" type="radio" name="searchType" id="inlineRadio1" value="all" ${scri.searchType == 'null' ? 'checked' : ''}>
    				<label class="form-check-label" for="inlineRadio1">전체</label>
				</div>
				<div class="form-check form-check-inline">
    				<input class="form-check-input" type="radio" name="searchType" id="inlineRadio2" value="working" ${scri.searchType == 'working' ? 'checked' : ''}>
    				<label class="form-check-label" for="inlineRadio2">근무자</label>
				</div>
				<div class="form-check form-check-inline">
    				<input class="form-check-input" type="radio" name="searchType" id="inlineRadio3" value="left" ${scri.searchType == 'left' ? 'checked' : ''}>
    				<label class="form-check-label" for="inlineRadio3">퇴사자</label>
				</div>

				<form class="form-inline my-2 my-lg-0">
      				<input class="form-control mr-sm-2" type="text" name="keyword" id="keywordInput" value="${scri.keyword}" placeholder="Search" aria-label="Search">
      				<button class="btn btn-outline-success my-2 my-sm-0" id="searchBtn" type="button">검색</button>
      				<script>
    					$(function() {
        					$('#searchBtn').click(function() { 
            				// URL 조립
           					 var url = "list" + '${pageMaker.makeQuery(1)}' +
                				"&searchType=" + $("input[name='searchType']:checked").val() + // 라디오 버튼 선택 값 가져오기
                				"&keyword=" + encodeURIComponent($('#keywordInput').val());

            				// 검색 결과 페이지로 이동
            				window.location.href = url;
        					});
    					});
					</script>
    			</form>	
    		</div>
    		<div class="col"></div>
  		</div>
	</div>
  	
    
	<form role="form" name="listForm">
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
      					<td><input type="checkbox" name="list_checkbox"></td>
      					<td><a href="/board/readView?employee_id=${list.employee_id}"><c:out value ="${list.employee_id}"/></a></td>
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
  				<!-- 이전 페이지 버튼 표시  -->
    			<c:if test="${pageMaker.prev}">
    				<li class="page-item">
    					<a class="page-link" href="list${pageMaker.makeSearch(pageMaker.startPage - 1)}" aria-label="Previous">
        					<span aria-hidden="true">&laquo;</span>
        				</a>
        			</li>
    			</c:if>
    		
    			<!-- 페이지 번호 버튼 표시 -->
    			<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
	    			<li class="page-item"><a class="page-link" href="list${pageMaker.makeSearch(idx)}">${idx}</a></li>
    			</c:forEach>
    		
    			<!-- 다음 페이지 버튼 표시 -->
    			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
    				<li class="page-item">
      					<a class="page-link" href="list${pageMaker.makeSearch(pageMaker.endPage + 1)}" aria-label="Next">
        					<span aria-hidden="true">&raquo;</span>
      					</a>
    				</li>
    			</c:if>
  			</ul>
		</nav>
	</form>
	
	<div class="d-grid gap-2 d-md-block">
  		<button class="btn btn-dark create_btn" type="button" onclick="window.location.href='createView'">추가</button>
  		<button class="btn btn-dark delete_btn" type="button">삭제</button>
  		<button id="ajaxButton">Send AJAX Request</button>	
	</div>
	
</div>	
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
<script>
$(document).ready(function() {
    $("#ajaxButton").click(function() {
        let employeeIds = [];  // 여러 개의 employeeId를 저장할 배열을 선언합니다.

        // 체크된 체크박스 값을 가져옵니다.
        $("input[name=list_checkbox]:checked").each(function() {
            // 체크박스의 부모는 <td>입니다.
            // <td>의 부모는 <tr>이므로 그것을 선택합니다.
            var tr = $(this).parent().parent();
            var td = tr.children();

            // 체크박스 옆의 <td>에서 list.employee_id를 가져옵니다.
            var employeeId = td.find(".list.employee_id").text();
            employeeIds.push(employeeId);  // 배열에 추가합니다.


            // 콘솔에 employee_id 출력
            console.log("employee_id: " + employeeId);
        });

        // 배열을 JSON 데이터로 변환합니다.
        var data = JSON.stringify(employeeIds);

        $.ajax({
            url: "/board/ajaxRequest",
            type: "POST",
            data: data,
            contentType: "application/json",
            success: function(response) {
                console.log("서버 응답: " + response);
            },
            error: function(xhr, status, error) {
                console.error("에러: " + error);
            }
        });
    });
});
</script>

</body>
  





</html>
	
</body>
</html>