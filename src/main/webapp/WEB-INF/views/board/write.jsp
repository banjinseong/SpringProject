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
<style>
.naver{
	background-image: url('${pageContext.request.contextPath}/resources/img/naverhov.png');
	background-size:105px;
}
.naver:hover{
	background-image: url('${pageContext.request.contextPath}/resources/img/naver.png');
	background-size:105px;
}
</style>
<!-- 상단바 시작 -->
	<header class="p-3 text-bg-dark">
		<div class="container">
	    	<div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
		        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
		          <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"></use></svg>
		        </a>
		
		        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
		          <li><a href="/" class="nav-link px-2 text-white">Home</a></li>
		          <li><a href="#" class="nav-link px-2 text-white">당근</a></li>
		        </ul>
		
		        <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
		          <input type="search" class="form-control form-control-dark text-bg-dark" placeholder="Search..." aria-label="Search">
		        </form>
		
		        <div class="text-end">
    		      <button class="btn naver" id="btn" type="submit" style="width:100px; height:40px"></button>
		          <button type="button" class="btn btn-outline-light me-2" onClick="location.href='/login'">Login</button>
		          <button type="button" class="btn btn-warning" onClick="location.href='/join'">Sign-up</button>
		        </div>
	    	</div>
	    </div>
	</header>
<!-- 상단바 끝 -->

	<div class="container"">
		<div class="row">
		<form action="/board/enroll" method="post">
			<table class="table" style="text-align: center; border: ipx solid #dddddd">
				<thead>
					<tr>
						<th style="text-align: center;"><span style="font-size: 40;" class="badge rounded-pill bg-secondary">글쓰기</span>
					</tr>
				</thead>
				<tbody style="background-color: #eeeeee">
					<tr>
						<td><input type="text" class="form-control" placeholder="글 제목" name="title" maxlength="150">
					</tr>
					<tr>
						<td><textarea type="text" class="form-control" placeholder="글 내용" name="content" maxlength="2048" style="height: 350px;"></textarea>						
					</tr>
				</tbody>				
			</table>
			<input type="submit" class="btn btn-primary pull-right" value="글쓰기">
		</form>
		</div>
	</div>
</body>
</html>
