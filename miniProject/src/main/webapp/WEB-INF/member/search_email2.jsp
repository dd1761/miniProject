<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Search_Email2</title>
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/search_email2.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
</head>
<body>
	<div id="search">
		<div id="header">
		<h1><img src="../img/logo2.png" alt="youtube"></h1>
		<h1>이메일 찾기</h1>
		<h2>주민번호를 입력하세요.</h2>
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
				<a href="/miniProject/member/search_email1" class="back">뒤로</a>
				<button type="button" class="btn btn-primary" id="nextBtn" style="width: 80px">다음</button>
			</div>
		</div>
	</div>
	
	<input type="hidden" id="name" name="name" value="${name }" />
<script src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="../js/box4.js"></script>
<script src="../js/search_email2.js"></script>		
</body>
</html>