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
		<h1>���� �̸��� ���</h1>
		<h2>YouTube ������ ����� �̸��� �ּҸ� �Է��ϼ���</h2>
		<form action="#" method="post" id="join_email_form">
				<div class="outBox">
				    <div class="inputBox">
				        <input type="text" id="email" name="email">
				        <label for="email">�̸��� �ּ�</label>
				    </div>
				</div>
				
				<div class="aaa" style="font-size:14px; margin-left:20px; ">�� �̸����� ���� �������� Ȯ���ؾ� �մϴ�.</div>
			
				<div class="bottom">
					<button type="button" class="btn btn-primary" id="nextbtn" style="width: 100px">�����ڵ� ������</button>
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
<script src="../js/box1.js"></script>	
</body>
</html>