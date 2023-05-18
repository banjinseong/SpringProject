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
				<c:if test="${pageInfo.writer eq login.nickname }">			
					<a href="/board/update?id=${pageInfo.id }" class="btn btn-primary">수정</a>
					<a onclick="return confirm('정말로 삭제하시겠습니까?')" href="/board/delete?id=${pageInfo.id }" class="btn btn-primary">삭제</a>
				</c:if>
			</div>
		</div>
	</div><br>
<!-- 댓글 시작 -->	
<!-- 댓글 목록 보여주기 -->
<div class="container">
	<div class="row">
		<table class="table" style="text-align: center;">
			<tbody>
				<tr>
					<td align="left" bgcolor="beige">댓글</td>
				</tr>
				<c:forEach items="${comment }" var="comment">
				<tr>
					<td>
					<div class="container">
						<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
							<tbody>
								<tr style="text-align: left;">
								<td><c:out value=" ${comment.writer }"/><c:out value=" ${comment.created_date }"/>
								<c:if test="${pageInfo.writer eq login.nickname }">	
									<a onclick="return confirm('정말로 삭제하시겠습니까?')" href="/board/commentdelete?id=${comment.id }&bno=${pageInfo.id }" class="btn btn-warning">삭제</a>
								</c:if>
								</tr>
								<tr style="text-align: left;"><td><c:out value=" ${comment.content }"/></tr>
							</tbody>
						</table>		
					</div>	
					</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
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
		  
		  <form id="moveForm" method="get">
		  <input type="hidden" name="id" value="${pageInfo.id }">
			<input type="hidden" name="pageNum" value="${pageMaker.pg.pageNum }">
			<input type="hidden" name="pageamount" value="${pageMaker.pg.amount }">
			
		</form>
	</div>
</div><br>
<!-- 댓글 목록 보여주기 끝 -->
<!-- 댓글 작성 -->
<c:if test="${not empty sessionScope.login}">		
<div class="container">
	<div class="form-group">
		<form method="post" action="/board/comment">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<tr>
					<td><input type="text" style="height:100px;" class="form-control" placeholder="댓글을 작성하세요." name="content"></td>
					<td><br><br><button type="submit" class="btn-primary">댓글 작성</button></td>
				</tr>
			</table>
			<input type="hidden" name="bno" value="${pageInfo.id }">
		</form>
	</div>
</div>
</c:if>
<!-- 댓글 작성 끝 -->
<!-- 댓글끝 -->
<script>
let moveForm = $("#moveForm");
	$(".pagination a").on("click", function(e){
		 
        e.preventDefault();
        moveForm.find("input[name='pageNum']").val($(this).attr("href"));
        moveForm.attr("action", "/board/view");
        moveForm.submit();
        
    });

</script>
</body>
</html>
