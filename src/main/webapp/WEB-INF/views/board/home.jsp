<%@page import="java.io.Console"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" 
    rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" 
    crossorigin="anonymous">
	<title>Home</title>
	<script
	  src="https://code.jquery.com/jquery-3.4.1.js"
	  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	  crossorigin="anonymous"></script>
</head>
<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" 
    crossorigin="anonymous"></script>
<style>
.naver{
	background-image: url("${pageContext.request.contextPath}/resources/img/naverhov.png");
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
					<c:forEach items="${list }" var="list">
						<tr onmouseover="this.style.background='#eeeeee'" onmouseout="this.style.background='white'">
							<td style="text-align: left;"><c:out value="${list.id }"/>
							<td style="text-align: left;"><a href="/board/view/?id=${list.id }"><c:out value="${list.title }"/></a>
							<td style="text-align: left;"><c:out value="${list.writer }"/>
							<td style="text-align: left;"><c:out value="${list.created_date }"/>
							<td style="text-align: left;"><c:out value="${list.view }"/>
						</tr>
					</c:forEach>
				</tbody>
			</table>
<!-- 게시판 내용 끝 -->
		</div>
		<form action="/board/enroll" method="get">
		<input style="float:right" type="submit" class="btn btn-primary pull-right" value="글쓰기">
		</form>
<!-- 페이지 번호 시작 -->
		
		<nav aria-label="Page navigation example">
		  <ul id="pagination" class="pagination page">
		  <c:if test="${pageMaker.prev}">
		    <li class="page-item">
		      <a class="page-link" href="${pageMaker.startPage-1}" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		    </c:if>
		    <c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
		    	<li class="page-item ${pageMaker.pg.pageNum == num ? "active":"" }"><a class="page-link" href="${num }">${num }</a></li>
		    	
			</c:forEach>
			<c:if test="${pageMaker.next}">
		    <li class="page-item">
		      <a class="page-link" href="${pageMaker.endPage + 1 }" aria-label="next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		    </c:if>
		  </ul>
		</nav>
		
		<!-- 이부분 무슨 뜻인지 아직 모름 -->
		<form id="moveForm" method="get">
			<input type="hidden" name="pageNum" value="${pageMaker.pg.pageNum }">
			<input type="hidden" name="pageamount" value="${pageMaker.pg.amount }">
			
		</form>
		<!-- 이부분 무슨 뜻인지 아직 모름 -->
<!-- 페이지 번호 끝 -->
	</div>
<!-- 중단바 끝 --><br>
<!-- 등록 확인 스크립트 -->
<script>
	$(document).ready(function(){
	    
	    let result = '<c:out value="${result}"/>';
	    
	    checkAlert(result);
	    
	    function checkAlert(result){
	        
	        if(result === ''){
	            reutrn;
	        }
	        
	        if(result === "enroll sucess"){
	            alert("등록이 완료되었습니다.");
	        }
	        
	    }    
	    
	});
	let moveForm = $("#moveForm");
	$(".pagination a").on("click", function(e){
		 
        e.preventDefault();
        moveForm.find("input[name='pageNum']").val($(this).attr("href"));
        moveForm.attr("action", "/board/home");
        moveForm.submit();
        
    });
</script>
</body>
</html>