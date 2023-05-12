<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
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
