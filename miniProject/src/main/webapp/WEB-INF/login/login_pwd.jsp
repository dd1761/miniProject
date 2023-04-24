<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인_pwd</title>
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/design_pwd.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
</head>
<body>
	<div id="login">
		<div id="header">
		<h1><img src="../img/logo2.png" alt="youtube"></h1>
		<h1>이름받아오기</h1>
		<h2>
		<a href="#">
		<img src="../img/p.jpg" alt="프로필이미지" id="profile" style="width:20px; height:20px; border-radius:100px; padding: auto;">
		아이디입력창으로 이동
		</a>
		</h2>
		<form action="#" method="post" id="login_pwd_form">
				<div class="outBox">
				    <div class="inputBox">
				        <input type="password" id="pwd" name="">
				        <label for="pwd">비밀번호 입력</label>
				    </div>
				</div>
				<div class="bottom">
					<a href="#" class="search_pwd">비밀번호 찾기</a>
					<button type="button" class="btn btn-primary" id="next btn" style="width: 80px">다음</button>
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
<script src="../js/box2.js"></script>	
</body>
</html>