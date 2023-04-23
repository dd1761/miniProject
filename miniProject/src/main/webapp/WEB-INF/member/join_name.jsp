<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Join_Name</title>
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/join_name.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
</head>
<body>
<body>
	<div id="join">
		<div id="header">
		<h1><img src="../img/logo2.png" alt="youtube"></h1>
		<h1>YouTube ���� �����</h1>
		<h2>�̸��� �Է��ϼ���.</h2>
		<form id="join_name_form">
				<div class="outBox1">
				    <div class="inputBox1">
				        <input type="text" id="last_name" name="last_name">
				        <label for="last_name">��(���û���)</label>
				    </div>
				</div>
				
				<div class="outBox2">
				    <div class="inputBox2">
				        <input type="text" id="first_name" name="first_name">
				        <label for="first_name">�̸�</label>
				    </div>
				</div>
				<div id="nameDiv"></div>
				
				<div class="bottom">
					<button type="button" class="btn btn-primary" id="nextBtn" style="width: 80px">����</button>
				</div>
		</form>
		</div>
		<footer>
			<select name="lang_select" id="lang_select">
				<option value="korean">�ѱ���</option>
				<option value="english">English</option>
			</select>
		</footer>
	</div>
<script src="../js/box3.js"></script>	
<script src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="../js/join_name.js"></script>	
</body>
</html>