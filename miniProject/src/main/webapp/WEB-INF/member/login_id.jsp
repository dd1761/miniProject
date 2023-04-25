<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Login_Id</title>
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/login_id.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">	
</head>
<body>
	<div id="login">
		<div id="header">
		<h1><img src="../img/logo2.png" alt="youtube"></h1>
		<h1>로그인</h1>
		<h2>YouTube로 이동</h2>
		<form id="login_id_form">
				<div class="outBox">
				    <div class="inputBox">
				        <input type="text" id="email" name="email">
				        <label for="email">이메일 입력</label>
				    </div>
				</div>
				<div id="emailDiv"></div>
				
				<div id="a">
				<a href="/miniProject/member/search_email1"  style="display:flex; text-decoration: none; margin-left: 20px; margin-top: 30px;">이메일을 잊으셨나요?</a>
				</div>

				<div class="bottom">
					<a href="/miniProject/member/join_name" class="join">계정 만들기</a>
					<button type="button" class="btn btn-primary" id="nextBtn" style="width: 80px">다음</button>
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
<script src="/miniProject/js/box1.js"></script>	
<script src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="/miniProject/js/login_id.js"></script>
</body>
</html>