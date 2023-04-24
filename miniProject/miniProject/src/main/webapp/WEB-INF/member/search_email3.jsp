<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search_Email3</title>
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/search_email3.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
</head>
<body>
<body>
	<div id="search">
		<div id="header">
		<h1><img src="../img/logo2.png" alt="youtube"></h1>
		<h1>이메일 확인</h1>
			<table id="emailListTable">

			</table>
		</div>
		<footer>
			<select name="lang_select" id="lang_select">
				<option value="korean">한국어</option>
				<option value="english">English</option>
			</select>
		</footer>
	</div>
	<input type="hidden" id="name" name="name" value="${name }" />
<script src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="../js/search_email3.js"></script>		
</body>
</body>
</html>