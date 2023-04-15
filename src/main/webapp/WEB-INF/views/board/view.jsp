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
<!-- 상단바 끝 --><br>

	<div class="container">
		<div class="row">	
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="3" style="background-color: #eeeeee; text-align: center;">게시판 글보기
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 20%">글제목
						<td colspan="2">${pageInfo.title }
					</tr>
					<tr>
						<td>작성자</td>
						<td colspan="2">${pageInfo.writer }</td>
					</tr>
					<tr>
						<td>수정일자</td>
						<td colspan="2">${pageInfo.modified_date }</td>
					</tr>
					<tr>  
						<td>내용</td>
						<td colspan="2" style="text-align: left;">
						<div style="min-height:200px">
							${pageInfo.content }
						</div>
						</td>
					</tr>			
				</tbody>				
			</table>
			<div class="btn_wrap">
				<a href="/" class="btn btn-primary">목록</a>			
				<a href="" class="btn btn-primary">수정</a>
				<a onclick="return confirm('정말로 삭제하시겠습니까?')" href="" class="btn btn-primary">삭제</a>
			</div>
		</div>
	</div>
				

</body>
</html>
