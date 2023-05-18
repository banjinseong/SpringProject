<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
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
				<c:if test="${empty sessionScope.login}">
		        <div class="text-end">
    		      <button class="btn naver" id="btn" type="submit" style="width:100px; height:40px"></button>
		          <button type="button" class="btn btn-outline-light me-2" onClick="location.href='/member/login'">login</button>
		          <button type="button" class="btn btn-warning" onClick="location.href='/member/join'">Sign-up</button>
		        	
		        </div>
		        <c:out value="${sessionScope.login }"></c:out>
		        </c:if>
		        <c:if test="${not empty sessionScope.login}">
				    <!-- 세션 값이 있을 때의 처리 -->
				    <div class="text-end">
				    	<c:out value="${sessionScope.login.nickname }님 안녕하세요."></c:out>
				    	<button type="button" class="btn btn-info" onClick="location.href='/member/logout'">logout</button>
				    </div>
				</c:if>
	    	</div>
	    </div>
	</header>
<!-- 상단바 끝 --><br>
</body>
</html>