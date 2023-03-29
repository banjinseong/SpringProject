<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" 
    rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" 
    crossorigin="anonymous">
	<title>Home</title>
</head>
<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" 
    crossorigin="anonymous"></script>
<!-- 상단바 시작 -->
	<header class="p-3 text-bg-dark">
		<div class="container">
	    	<div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
		        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
		          <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"></use></svg>
		        </a>
		
		        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
		          <li><a href="home.jsp" class="nav-link px-2 text-secondary">Home</a></li>
		          <li><a href="#" class="nav-link px-2 text-white">Features</a></li>
		          <li><a href="#" class="nav-link px-2 text-white">Pricing</a></li>
		          <li><a href="#" class="nav-link px-2 text-white">FAQs</a></li>
		          <li><a href="#" class="nav-link px-2 text-white">About</a></li>
		        </ul>
		
		        <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
		          <input type="search" class="form-control form-control-dark text-bg-dark" placeholder="Search..." aria-label="Search">
		        </form>
		
		        <div class="text-end">
		          <button type="button" class="btn btn-outline-light me-2">Login</button>
		          <button type="button" class="btn btn-warning">Sign-up</button>
		        </div>
	    	</div>
	    </div>
	</header>
<!-- 상단바 끝 --><br>

<!-- 중단바 시작  -->
	<div class="container"">
		<div class="row">
<!-- 게시판내용 시작 -->
			<table class="table" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th width="15%" style="background-color: black; color: white; text-align: left;">번호
						<th width="55%" style="background-color: black; color: white; text-align: center;">제목
						<th width="10%" style="background-color: black; color: white; text-align: left;">작성자
						<th width="10%" style="background-color: black; color: white; text-align: left;">작성일
						<th width="10%" style="background-color: black; color: white; text-align: left;">조회수
					</tr>
				</thead>
				<tbody>
<!-- db값 가져오기-->
					<tr onmouseover="this.style.background='#eeeeee'" onmouseout="this.style.background='white'">
						<td style="text-align: left;">번호1
						<td style="text-align: left;"><a href="#">제목1</a>
						<td style="text-align: left;">작성자1
						<td style="text-align: left;">작성일1
						<td style="text-align: left;">조회수1
					</tr>
					<tr onmouseover="this.style.background='#eeeeee'" onmouseout="this.style.background='white'">
						<td style="text-align: left;">번호2
						<td style="text-align: left;"><a href="#">제목2</a>
						<td style="text-align: left;">작성자2
						<td style="text-align: left;">작성일2
						<td style="text-align: left;">조회수2
					</tr>
				</tbody>
			</table>
<!-- 게시판 내용 끝 -->
		</div>
		<button style="float:right;" type="button" class="btn btn-primary">글쓰기</button>
<!-- 페이지 번호 시작 -->
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
<!-- 페이지 번호 끝 -->
	</div>
<!-- 중단바 끝 --><br>
  
</body>
</html>
