<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	

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
      					<td><input type="checkbox" name="list_checkbox" value="${list.employee_id}"></td>
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