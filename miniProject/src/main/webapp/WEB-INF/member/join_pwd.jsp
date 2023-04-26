<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join_Pwd_6</title>
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/join_pwd.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
</head>
<body>
	<div id="join">
		<div id="header">
		<h1><img src="../img/logo2.png" alt="youtube"></h1>
		<h1>안전한 비밀번호 만들기</h1>
		<h2 style="font-size: 18px">문자, 숫자, 기호를 조합하여 안전한 비밀번호를 만드세요.</h2>
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
				<button type="button" class="btn btn-primary" id="nextBtn" style="width: 80px">다음</button>
			</div>
			
			<input type="hidden" id="last_name" value="${map.last_name }"> 
			<input type="hidden" id="first_name" value="${map.first_name }">
			<input type="hidden" id="email" value="${map.email }">
			<input type="hidden" id="year" value="${map.year }">
			<input type="hidden" id="month" value="${map.month }">
			<input type="hidden" id="date" value="${map.date }">
			<input type="hidden" id="gender" value="${map.gender }">
			<input type="hidden" id="phone" value="${map.phone }">
			<input type="hidden" id="rrn_1" value="${map.rrn_1 }">
			<input type="hidden" id="rrn_2" value="${map.rrn_2 }">
		</div>
	</div>
<script src="http://code.jquery.com/jquery-3.6.4.min.js"></script>	
<script src="../js/box6.js"></script>	
<script src="../js/join_pwd.js"></script>	
</body>
</html>