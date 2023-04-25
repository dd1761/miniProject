<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join_Email2</title>
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/join_email2.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
</head>
<body>
<div id="join">
		<div id="header">
			<h1><img src="../img/logo2.png" alt="youtube"></h1>
			<h1>이메일 주소 인증</h1>
			<h2 id="email" style="font-size:15px; margin-right:50xp; margin-left:50xp;">
			${email }
			</h2>
		
			<div class="outBox">
			    <div class="inputBox">
			        <input type="text" id="email_code" name="email_code" disabled="disabled">
			        <label for="email_code">코드 입력</label>
			    </div>
			</div>
			<div id="mail-check-warn"></div>
			
			<div class="bottom">
				<a href="/miniProject/member/join_email" class="back">뒤로</a>
				<button type="button" class="btn btn-primary" id="next btn" style="width: 80px">다음</button>
			</div>
	
		</div>
		<footer>
			<select name="lang_select" id="lang_select">
				<option value="korean">한국어</option>
				<option value="english">English</option>
			</select>
		</footer>
	</div>
<script src="http://code.jquery.com/jquery-3.6.4.min.js"></script>	
<script src="../js/box5.js"></script>	
<script src="../js/join_email2.js"></script>	
</body>
</html>