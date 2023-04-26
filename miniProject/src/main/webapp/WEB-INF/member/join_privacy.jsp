<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join_Privacy_4</title>
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/join_privacy.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
</head>
<body>
	<div id="join">
		<div id="header">
		<h1><img src="../img/logo2.png" alt="youtube"></h1>
		<h1>기본 정보</h1>
		<h2>생일과 성별, 핸드폰번호 입력</h2>
		<form action="/miniProject/member/join_privacy2" method="post" id="join_privacy_form">
				<ul>
					<li>
						<input type="text" id="year" name="year" placeholder="연도">
						
						<select name="month" id="month">
							<option value="비공개">월</option>
							<option value="1">1월</option>
							<option value="2">2월</option>
							<option value="3">3월</option>
							<option value="4">4월</option>
							<option value="5">5월</option>
							<option value="6">6월</option>
							<option value="7">7월</option>
							<option value="8">8월</option>
							<option value="9">9월</option>
							<option value="10">10월</option>
							<option value="11">11월</option>
							<option value="12">12월</option>
						</select>
						
						<input type="text" id="date" name="date" placeholder="일">
					</li>
					<li>
						<select name="gender" id="gender">
							<option value="비공개">비공개</option>
							<option value="남자">남자</option>
							<option value="여자">여자</option>
							<option value="풍자">성소수자</option>
						</select>
						
						<input type="text" id="phone" name="phone" placeholder="핸드폰번호">
					</li>	
				</ul>
				<input type="hidden" name="last_name" value="${map.last_name }">
				<input type="hidden" name="first_name" value="${map.first_name }">
				<input type="hidden" name="email" value="${map.email }">
				
			</form>
			<div class="bottom">
				<button type="button" class="btn btn-primary" id="nextBtn" style="width: 80px; margin-left: 310px;">다음</button>
			</div>
		</div>
	</div>
<script src="http://code.jquery.com/jquery-3.6.4.min.js"></script>		
<script>
$('#nextBtn').click(function(){
	$('#join_privacy_form').submit();
});
</script>	
</body>
</html>