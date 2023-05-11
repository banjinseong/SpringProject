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
	<%@ include file="/WEB-INF/views/header.jsp" %>
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
						<td><input type="text" class="form-control" required="required" placeholder="글 제목" name="title" maxlength="150">
					</tr>
					<tr>
						<td><textarea type="text" class="form-control" required="required" placeholder="글 내용" name="content" maxlength="2048" style="height: 350px;"></textarea>						
					</tr>
				</tbody>				
			</table>
			<input type="submit" class="btn btn-primary pull-right" value="글쓰기">
		</form>
		</div>
	</div>
</body>
</html>
