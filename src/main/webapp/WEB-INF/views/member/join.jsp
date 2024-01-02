<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" 
    rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" 
    crossorigin="anonymous">
	<title>Home</title>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" 
    crossorigin="anonymous"></script>
</head>
<body>
    <script
	  src="https://code.jquery.com/jquery-3.4.1.js"
	  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
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
<%@ include file="/WEB-INF/views/header.jsp" %>
<!-- 상단바 끝 -->
    
<!-- 회원가입 시작 -->

<main class="form-signin w-50 m-auto text-center">
  <form action="/member/join" method="post">
    <h1 class="h3 mb-3 fw-normal">Please sign up</h1>

    <div class="form-floating">
      <input type="text" class="form-control" maxlength="14" required="required" id="user_id" placeholder="Id" name="username">
      <label for="floatingInput">Id&nbsp;&nbsp;&nbsp;<span id="idChk"></span></label>   
    </div>
    
    <div class="form-floating">
      <input type="text" class="form-control" maxlength="10" required="required" id="user_name" placeholder="Name" name="nickname">
      <label for="floatingInput">Name&nbsp;&nbsp;&nbsp;<span id="nameChk"></span></label>
    </div>
    
    <div class="form-floating">
      <input type="password" class="form-control" required="required" id="user_pw" placeholder="Password" name="password">
      <label for="floatingPassword">Password&nbsp;&nbsp;&nbsp;<span id="pwChk"></span></label>
    </div>
    
    <div class="form-floating">
      <input type="email" class="form-control" required="required" id="user_email" placeholder="name@example.com" name="email">
      <label for="floatingInput">Email address&nbsp;&nbsp;&nbsp;<span id="emailChk"></span></label>
    </div>
    
    <br>
    <button class="w-100 btn btn-lg btn-primary" type="submit" id="signup-btn">Sign in</button>
  </form>
</main>
<!-- 회원가입 끝 -->
<!-- Footer-->
	<%@ include file="/WEB-INF/views/footer.jsp" %>

<script>
$(document).ready(function(){
    
	
    //각 입력값들의 유효성 검증을 위한 정규표현식을 변수로 선언.
       const getIdCheck = RegExp(/^[a-zA-Z0-9]{4,14}$/);
       const getPwCheck = RegExp(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/);
       const getNameCheck = RegExp(/^[가-힣]+$/);
       
    // 입력값 중 하나라도 만족하지 못한다면 회원가입 처리를 막기위한 논리형 변수 선언.
   	 let chk1 = false, chk2 = false, chk3 = false;
   	    
    //회원가입시 사용자의 입력값 검증!
    
    //1. ID입력값 검증 
    $('#user_id').blur(function() {//keyup: 키 입력할때마다 반응, blur:커서가 다른곳으로 이동할때 반응
    	if(!getIdCheck.test($(this).val())) {//정규표현식이 틀렸다면
            $(this).css('background-color', 'pink');
            $('#idChk').html('<b style="font-size: 14px; color: red">[영문자, 숫자조합 4-14로쓰세요]</b>');
            chk1 = false;
         }
    	else{//아이디 중복확인 ajax 사용, 특정 호직이 실행이 끝날 때까지 기다리지 않고 먼저 코드를 샐행 (페이지 전환 없이 통신)
       	 
         	//ID중복 확인 통신을 위해 입력값을 가져오기
         	const id = $(this).val();
         
         	//ajax 호출.
         	//클라이언트에서 서버와 비동기 통신을 진행하는 ajax함수.
         	$.ajax({
         		 type :'post', // 서버에 전송하는 http방식
         		 url :'/member/checkId', // 서버 요청 url
         		 headers : {
         			 'Content-Type' : 'application/json'
         		 },
         		 dataType : 'text', //서버로 부터 응답받을 데이터의 형태 
        		 data : id, // 서버로 전송할 데이터 // 위에서 지정한 const id 
        		 success : function(result) { // 매개변수에 통신성공시 데이터가 저장된다.
					//서버와 통신성공시 실행할 내용 작성.
					console.log('통신 성공!' + result);
        		 	if(result === 'available'){
        		 		 $('#user_id').css('background-color', 'aqua');
        		 		 $('#idChk').html('<b style="font-size: 14px; color: green">[아이디 사용이 가능하다.]</b>');
        		 		 chk1 = true;
        		 	}else{
        		 		 $('#user_id').css('background-color', 'pink');
        		 		 $('#idChk').html('<b style="font-size: 14px; color: red">[아이디 중복!.]</b>');
        		 		 chk1 = false;
        		 	}
				},
				error : function (status, error) { //통신에 실패했을때
					console.log('통신실패');
					console.log(status, error)
				}
          	}); // end ajax(아이디 중복 확인)
		}
    });
    
  //2. 이름 검증 
    $('#user_name').blur(function() {
    	 if(!getNameCheck.test($(this).val())){
			 $(this).css('background-color', 'pink');
		 	 $('#nameChk').html('<b style="font-size: 14px; color: red">[이름은 한글 이외에 다른 값은 입력 할 수 없습니다. ]</b>');
		 	 chk2 = false;
    	 }
    	else{
       	 
         	const name = $(this).val();
         
         	//ajax 호출.
         	//클라이언트에서 서버와 비동기 통신을 진행하는 ajax함수.
         	$.ajax({
         		 type :'post', // 서버에 전송하는 http방식
         		 url :'/member/checkName', // 서버 요청 url
         		 headers : {
         			 'Content-Type' : 'application/json'
         		 },
         		 dataType : 'text', //서버로 부터 응답받을 데이터의 형태 
        		 data : name, // 서버로 전송할 데이터 // 위에서 지정한 const id 
        		 success : function(result) { // 매개변수에 통신성공시 데이터가 저장된다.
					//서버와 통신성공시 실행할 내용 작성.
					console.log('통신 성공!' + result);
        		 	if(result === 'available'){
        		 		 $('#user_name').css('background-color', 'aqua');
        		 		 $('#nameChk').html('<b style="font-size: 14px; color: green">[사용이 가능하다.]</b>');
        		 		 chk2 = true;
        		 	}else{
        		 		 $('#user_name').css('background-color', 'pink');
        		 		 $('#nameChk').html('<b style="font-size: 14px; color: red">[이름 중복!.]</b>');
        		 		 chk2 = false;
        		 	}
				},
				error : function (status, error) { //통신에 실패했을때
					console.log('통신실패');
					console.log(status, error)
				}
          	}); // end ajax(아이디 중복 확인)
		}
    });
  
  //3.pw검사
    $('#user_pw').blur(function() {
		
  	  if(!getPwCheck.test($(this).val()) || $(this).val().length < 8){
  		  $(this).css('background-color', 'pink');
		 	  $('#pwChk').html('<b style="font-size: 14px; color: red">[특수 문자 포함 8글자 이상 !]</b>');
		 	 chk3 = false;
  	  }// 통과
  	  else{
  		  $(this).css('background-color', 'aqua');
		 	  $('#pwChk').html('<b style="font-size: 14px; color: green">[비밀번호 입력 완료!]</b>');
		 	 chk3 = true;
  	  }
  	  
	});
  
    $('#signup-btn').click(function() {
		
		if(!(chk1 && chk2 && chk3)){
			alert("회원가입 조건에 맞지 않습니다.");
			event.preventDefault();
		}
    });
});
</script>
</body>
</html>
