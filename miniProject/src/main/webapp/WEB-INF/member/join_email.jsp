<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Join_Email</title>
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/join_email.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
</head>
<body>
	<div id="join">
		<div id="header">
		<h1><img src="../img/logo2.png" alt="youtube"></h1>
		<h1>기존 이메일 사용</h1>
		<h2>YouTube 계정에 사용할 이메일 주소를 입력하세요</h2>
		<form action="#" method="post" id="join_email_form">
				<div class="outBox">
				    <div class="inputBox">
				        <input type="text" id="email" name="email">
				        <label for="email">이메일 주소</label>
				    </div>
				</div>
				
				<div class="aaa" style="font-size:14px; margin-left:20px; ">이 이메일이 본인 소유인지 확인해야 합니다.</div>
			
				<div class="bottom">
					<button type="button" class="btn btn-primary" id="nextbtn" style="width: 100px">인증코드 보내기</button>
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
<script src="../js/box1.js"></script>	
</body>
</html>