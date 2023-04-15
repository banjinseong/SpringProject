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
	background-image: url('resources/img/naverhov.png');
	background-size:105px;
}
.naver:hover{
	background-image: url('resources/img/naver.png');
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
<!-- 메인 시작 -->
<main>
  <div class="album py-5 bg-light">
    <div class="container">

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
        <div class="col">
          <div class="card shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="자리표시자: 썸네일" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">صورة مصغرة</text></svg>

            <div class="card-body">
              <p class="card-text"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">추가 콘텐츠에 대한 자연스러운 소개로 아래에 지원 텍스트가 있는 더 넓은 카드입니다. </font><font style="vertical-align: inherit;">이 내용은 조금 더 깁니다.</font></font></p>
              <div class="d-flex justify-content-between align-items-center">
                <font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><h5>\10000원</h5></font></font>                
                <small class="text-muted"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">9분</font></font></small>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="자리표시자: 썸네일" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">صورة مصغرة</text></svg>

            <div class="card-body">
              <p class="card-text"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">추가 콘텐츠에 대한 자연스러운 소개로 아래에 지원 텍스트가 있는 더 넓은 카드입니다. </font><font style="vertical-align: inherit;">이 내용은 조금 더 깁니다.</font></font></p>
              <div class="d-flex justify-content-between align-items-center">
                <font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><h5>\10000원</h5></font></font>                
                <small class="text-muted"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">9분</font></font></small>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="자리표시자: 썸네일" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">صورة مصغرة</text></svg>

            <div class="card-body">
              <p class="card-text"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">추가 콘텐츠에 대한 자연스러운 소개로 아래에 지원 텍스트가 있는 더 넓은 카드입니다. </font><font style="vertical-align: inherit;">이 내용은 조금 더 깁니다.</font></font></p>
              <div class="d-flex justify-content-between align-items-center">
                <font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><h5>\10000원</h5></font></font>                
                <small class="text-muted"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">9분</font></font></small>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
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
    </div>
  </div>
</main>
<!-- 메인 끝 -->
</body>
</html>
