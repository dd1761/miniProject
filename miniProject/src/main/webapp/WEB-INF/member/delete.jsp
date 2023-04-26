<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/delete.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
</head>
<body>
<div id="delete">
		<div id="header">
		<h1><img src="../img/logo2.png" alt="youtube"></h1>
		<h1>회원탈퇴</h1>
		<h2 style="font-size: 18px">비밀번호를 입력해 주세요.</h2>
			<div class="outBox1">
			    <div class="inputBox1">
			        <input type="password" id="password" name="password">
			        <label for="password">비밀번호</label>
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
				<a href="javascript:history.back()" class="back">뒤로</a>
				<button type="button" class="btn btn-danger" id="nextBtn" style="width: 90px">회원탈퇴</button>
			</div>
		</div>
	</div>
	<input type="hidden" id="user_id" name="user_id" value="${user_id }">
<script src="http://code.jquery.com/jquery-3.6.4.min.js"></script>	
<script src="../js/box6.js"></script>	
<script src="../js/delete.js"></script>
</body>
</html>