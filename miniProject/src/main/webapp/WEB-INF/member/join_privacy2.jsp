<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join_rrn_5</title>
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/join_privacy2.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
</head>
<body>
<body>
	<div id="join">
		<div id="header">
		<h1><img src="../img/logo2.png" alt="youtube"></h1>
		<h1>인증 정보</h1>
		<h2>주민번호 입력</h2>
		<form action="/miniProject/member/join_pwd" method="post" id="join_privacy2_form">
			<div class="box">
				<div class="outBox1">
				    <div class="inputBox1">
				        <input type="text" id="rrn_1" name="rrn_1" maxlength="6" oninput="this.value=this.value.replace(/[^0-9]/g,'');">
				        <label for="rrn_1">앞(6자리)</label>
					</div>
				</div>	
				-
				<div class="outBox2">
				    <div class="inputBox2">
				        <input type="password" id="rrn_2" name="rrn_2" maxlength="7" oninput="this.value=this.value.replace(/[^0-9]/g,'');">
				        <label for="rrn_2">뒤(7자리)</label>
					</div>
				</div>
			</div>	
			
			<div id="rrnDiv"></div>
			
			<div class="bottom">
				<a href="javascript:history.back()" class="back">뒤로</a>
				<button type="button" class="btn btn-primary" id="nextBtn" style="width: 80px">다음</button>
			</div>
			
			<input type="hidden" name="last_name" value="${map.last_name }"> 
			<input type="hidden" name="first_name" value="${map.first_name }">
			<input type="hidden" name="email" value="${map.email }">
			<input type="hidden" name="year" value="${map.year }">
			<input type="hidden" name="month" value="${map.month }">
			<input type="hidden" name="date" value="${map.date }">
			<input type="hidden" name="gender" value="${map.gender }">
			<input type="hidden" name="phone" value="${map.phone }">
		</form>
		</div>
	</div>
<script src="http://code.jquery.com/jquery-3.6.4.min.js"></script>	
<script src="../js/box4.js"></script>	
<script src="../js/join_privacy2.js"></script>	
	
</body>
</html>