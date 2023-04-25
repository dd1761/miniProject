<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Join_Email_2</title>
<link rel="stylesheet" href="/miniProject/css/reset.css">
<link rel="stylesheet" href="/miniProject/css/join_email.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
</head>
<body>
	<div id="join">
		<div id="header">
			<h1><img src="/miniProject/img/logo2.png" alt="youtube"></h1>
			<h1>기존 이메일 사용</h1>
			<h2>YouTube 계정에 사용할 이메일 주소를 입력하세요</h2>
			<form action="/miniProject/member/join_email2" method="post" id="join_email_form">
				<div class="outBox">
				    <div class="inputBox">
				        <input type="email" id="email" name="email" value="">
				        <label for="email">이메일 주소</label>
				    </div>
				</div>
				<div id="emailDiv" class="result-email result-check"></div>
				
				<div class="aaa" style="font-size:14px; margin-left:20px; ">이 이메일이 본인 소유인지 확인해야 합니다.</div>
			
				<div class="bottom">
					<button type="button" class="btn btn-primary" id="nextBtn" style="width: 100px">인증코드 보내기</button>
				</div>
				
				<input type="hidden" name="last_name" value="${map.last_name }"> 
				<input type="hidden" name="first_name" value="${map.first_name }"> 
			</form>
		</div>
	</div>
	
<script src="http://code.jquery.com/jquery-3.6.4.min.js"></script>	
<script src="/miniProject/js/box1.js"></script>	
<script src="/miniProject/js/join_email.js"></script>
<script>
$(function(){
	$('#email').focus();
});
</script>
</body>
</html>