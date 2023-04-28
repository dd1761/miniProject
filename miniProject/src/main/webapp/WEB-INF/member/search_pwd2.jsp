<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search_Pwd2</title>
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/search_pwd2.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
</head>
<body>
	<div id="search">
		<div id="header">
		<h1><img src="../img/logo2.png" alt="youtube"></h1>
		<h1>다시 사용해 주셔서 감사합니다</h1>
		
		<div id="t">
		<img src="../img/p.jpg" alt="프로필이미지" id="profile">
		<div id="email">${email }</div>
		</div>
		
		<h4>
		비밀번호를 잊어버렸다면 지금 업데이트할 수 있습니다.
		</h4>
		
		<div class="bottom">
			<a href="#" class="pwd">비밀번호 업데이트</a>
			<button type="button" class="btn btn-primary" id="nextBtn" style="width: 80px">계속</button>
		</div>

		</div>
	</div>
<script src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="../js/search_pwd2.js"></script>			
</body>
</html>