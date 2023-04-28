<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인_id</title>
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/design_id.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
</head>
<body>
	<div id="login">
		<div id="header">
		<h1><img src="../img/logo2.png" alt="youtube"></h1>
		<h1>로그인</h1>
		<h2>YouTube로 이동</h2>
		<form action="#" method="post" id="login_id_form">
				<div class="outBox">
				    <div class="inputBox">
				        <input type="text" id="email" name="">
				        <label for="email">이메일 입력</label>
				    </div>
				</div>
				
				<div id="a">
				<a href="#" style="text-decoration: none;">이메일을 잊으셨나요?</a>
				</div>

				<div class="bottom">
					<a href="#" class="join">계정 만들기</a>
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
<script src="../js/box.js"></script>	
</body>
</html>