<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join_Email2_3</title>
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/join_email2.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
</head>
<body>
<div id="join">
		<div id="header">
			<h1><img src="../img/logo2.png" alt="youtube"></h1>
			<h1>이메일 주소 인증</h1>
			
			<form action="/miniProject/member/join_privacy" method="post" id="join_email2_form">
				<div id="aaa" style="font-size:16px;">
				<span id="email">
				${map.email }
				</span>
				(으)로 전송한 인증 코드를 입력하세요. 표시되지 않으면 스팸 폴더를 확인해 보세요.
				</div>
				
				<div class="outBox">
				    <div class="inputBox">
				        <input type="text" id="email_code" name="email_code" disabled="disabled" maxlength="6" oninput="this.value=this.value.replace(/[^0-9]/g,'');">
				        <label for="email_code">코드 입력</label>
				    </div>
				</div>
				
				<div id="codeDiv"></div>
				
				<input type="hidden" id="last_name" name="last_name" value="${map.last_name }"> 
				<input type="hidden" id="first_name" name="first_name" value="${map.first_name }">
				<input type="hidden" id="email" name="email" value="${map.email }">
			</form>
			
			<div class="bottom">
				<a href="javascript:history.back()" class="back">뒤로</a>
				<button type="button" class="btn btn-primary" id="nextBtn" style="width: 80px">다음</button>
			</div>
		</div>
	</div>	
<script src="http://code.jquery.com/jquery-3.6.4.min.js"></script>	
<script src="../js/box5.js"></script>	
<script src="../js/join_email2.js"></script>	
</body>
</html>