<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Login_Pwd</title>
<link rel="stylesheet" href="/miniProject/css/reset.css">
<link rel="stylesheet" href="/miniProject/css/login_pwd.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
</head>
<body>
<div id="login">
		<div id="header">
		<h1><img src="/miniProject/image/logo1.png" alt="youtube"></h1>
		<h1 id="name"></h1>
		<div id="t">
		<img src="/miniProject/image/p.jpg" alt="프로필이미지" id="profile">
		<div id="email"></div>
		</div>
		<form action="#" method="post" id="login_pwd_form">
				<div class="outBox">
				    <div class="inputBox">
				        <input type="password" id="password">
				        <label for="password">비밀번호 입력</label>
				    </div>
				</div>
				<div id="passwordDiv"></div>
				
				<div class="bottom">
					<a href="#" class="search_password">비밀번호 찾기</a>
					<button type="button" class="btn btn-primary" id="nextbtn" style="width: 80px">다음</button>
				</div>
		</form>
		</div>
		<footer>
			<select name="lang_select" id="lang_select">
				<option value="korean">한국어</option>
				<option value="english">English</option>
			</select>
		</footer>
	</div>
<script src="/miniProject/js/box2.js"></script>
<script src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="/miniProject/js/login_pwd.js"></script>	
</body>
</html>