<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Join_Name_1</title>
<link rel="stylesheet" href="/miniProject/css/reset.css">
<link rel="stylesheet" href="/miniProject/css/join_name.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
</head>
<body>
<body>
	<div id="join">
		<div id="header">
		<h1><img src="/miniProject/img/logo2.png" alt="youtube"></h1>
		<h1>YouTube 계정 만들기</h1>
		<h2>이름을 입력하세요.</h2>
		<form id="join_name_form" action="/miniProject/member/join_email" method="post">
			<div class="outBox1">
			    <div class="inputBox1">
			        <input type="text" id="last_name" name="last_name">
			        <label for="last_name">성(선택사항)</label>
			    </div>
			</div>
			
			<div class="outBox2">
			    <div class="inputBox2">
			        <input type="text" id="first_name" name="first_name">
			        <label for="first_name">이름</label>
			    </div>
			</div>
			<div id="nameDiv"></div>
			
			<div class="bottom">
				<button type="button" class="btn btn-primary" id="nextBtn" style="width: 80px">다음</button>
			</div>
		</form>
		</div>
	</div>
<script src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="/miniProject/js/box3.js"></script>	
<script src="/miniProject/js/join_name.js"></script>	
</body>
</html>