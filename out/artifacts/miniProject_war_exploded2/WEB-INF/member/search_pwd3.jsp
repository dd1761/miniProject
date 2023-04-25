<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search_Pwd3</title>
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/search_pwd3.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
</head>
<body>
	<div id="search">
		<div id="header">
			<h1><img src="../img/logo2.png" alt="youtube"></h1>
			<h1>비밀번호 변경</h1>
			
			<div id="t">
			<img src="../img/p.jpg" alt="프로필이미지" id="profile">
			<a href="#" class="email" style="text-decoration: none;">
			<span id="email">${email }</span>
			</a>
			</div>
			
			<h4>
			안전한 비밀번호를 만드세요
			<br><br>
			다른 웹사이트에서 사용하지 않는 안전한 새 비밀번호를 만드세요.
			</h4>
			
			<div class="outBox1">
			    <div class="inputBox1">
			        <input type="password" id="password" name="password">
			        <label for="pwd">비밀번호 생성</label>
			    </div>
			</div>
			<div class="outBox2">
			    <div class="inputBox2">
			        <input type="password" id="repwd" name="repwd">
			        <label for="repwd">확인</label>
			    </div>
			</div>
			
			<div id="pwdDiv"></div>
			
			<div class="bottom">
				<a href="#" class="pass">건너뛰기</a>
				<button type="button" class="btn btn-primary" id="nextBtn" style="width: 130px">비밀번호 저장</button>
			</div>
		</div>
	</div>	
<script src="../js/box6.js"></script>	
<script src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="../js/search_pwd3.js"></script>	
</body>
</html>