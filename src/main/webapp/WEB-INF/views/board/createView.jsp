<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>사원 등록창</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
	<style>
	
	
	</style>
</head>
<body>

	<h1>인사관리 시스템</h1>

	<ul class="nav">
  		<li class="nav-item">
    		<a class="nav-link active" href="#">사원목록</a>
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
    		<form class="d-flex" role="search">
      			<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
      			<button class="btn btn-outline-success" type="submit">Search</button>
    		</form>
  		</div>
	</nav>
	
	<table class="table table-striped">
  		<thead class="table-dark">
    		<tr>
      			<th scope="col">#</th>
      			<th scope="col">First</th>
      			<th scope="col">Last</th>
      			<th scope="col">Handle</th>
    		</tr>
  		</thead>
  		<tbody>
    		<tr>
      			<th scope="row">
      				<div>
  						<input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="" aria-label="...">
					</div>
				</th>
      			<td>Mark</td>
      			<td>Otto</td>
      			<td>@mdo</td>
    		</tr>
    		<tr>
      			<th scope="row">
      				<div>
  						<input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="" aria-label="...">
					</div>
      			</th>
      			<td>Jacob</td>
      			<td>Thornton</td>
      			<td>@fat</td>
    		</tr>
    		<tr>
      			<th scope="row">
      				<div>
  						<input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="" aria-label="...">
					</div>
      			</th>
      			<td colspan="2">Larry the Bird</td>
      			<td>@twitter</td>
    		</tr>
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
  		<button class="btn btn-secondary" type="button">추가</button>
  		<button class="btn btn-secondary" type="button">삭제</button>
	</div>
	
	
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>

</html>
	
</body>
</html>