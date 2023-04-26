<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search_Pwd1</title>
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/search_pwd1.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
</head>
<body>
<div id="search">
		<div id="header">
			<h1><img src="../img/logo2.png" alt="youtube"></h1>
			<h1>계정 복구</h1>
			<h2>계정 보호를 위해 YouTube에서 본인 확인을 진행합니다.</h2>
			
			<div id="t">
			<img src="../img/p.jpg" alt="프로필이미지" id="profile">
			<a href="#" class="email" style="text-decoration: none;">
			<span id="email">${email }</span>
			</a>
			</div>
			
			<h4>
			인증 코드가 포함된 이메일이 ${email } (으)로 전송되었습니다.
			</h4>
		
			<div class="outBox">
			    <div class="inputBox">
			        <input type="text" id="email_code" name="email_code" disabled="disabled" maxlength="6" oninput="this.value=this.value.replace(/[^0-9]/g,'');">
			        <label for="email_code">코드 입력</label>
			    </div>
			</div>
			<div id="codeDiv"></div>
			<div class="bottom">
				<button type="button" class="btn btn-primary" id="nextBtn" style="width: 80px">다음</button>
			</div>
		</div>
	</div>
<script src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="../js/box5.js"></script>	
<script src="../js/search_pwd1.js"></script>	
</body>
</html>