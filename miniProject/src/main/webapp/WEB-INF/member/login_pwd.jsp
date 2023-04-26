<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Login_Password</title>
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/login_pwd.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
</head>
<body>
<div id="login">
		<div id="header">
		<h1><img src="../img/logo2.png" alt="youtube"></h1>
		<h1 id="name"></h1>
		
		<div id="t">
			<img src="../img/p.jpg" alt="프로필이미지" id="profile">
			<div id="email">${email }</div>
		</div>
		
		<div class="outBox">
		    <div class="inputBox">
		        <input type="password" id="password" name="">
		        <label for="password">비밀번호 입력</label>
		    </div>
		</div>
		
		<div id="passwordDiv"></div>
			
		<div class="bottom">
			<div class="search_password" id="search_password">비밀번호 찾기</div>
			<button type="button" class="btn btn-primary" id="nextBtn" style="width: 80px">다음</button>
		</div>
	</div>
</div>
<script src="http://code.jquery.com/jquery-3.6.4.min.js"></script>	
<script src="../js/box2.js"></script>
<script src="../js/login_pwd.js"></script>	
</body>
</html>