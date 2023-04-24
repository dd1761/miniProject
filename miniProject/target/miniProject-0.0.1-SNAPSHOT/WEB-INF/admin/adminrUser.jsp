<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>유저 관리 페이지</title>
<link rel="stylesheet" href="/miniProject_youtube/css/adminUser.css">
<style type="text/css">
#admin{
	align-items: center;
}
</style>
<meta charset="UTF-8">
</head>
<body>
	<h1>유저 관리</h1>
	<form id="admin">
		<label for="username">유저 이름:</label>
		<input type="text" id="username" name="username" required><br><br>
		
		<label for="email">이메일:</label>
		<input type="email" id="email" name="email" required><br><br>
		
		<label for="password">비밀번호:</label>
		<input type="password" id="password" name="password" required><br><br>
		
		<label for="role">권한:</label>
		<select id="role" name="role">
			<option value="admin">관리자</option>
			<option value="user">일반 사용자</option>
		</select><br><br>
		
		<input type="submit" value="추가">
	</form>
	<br><br>
	
	<table>
		<tr>
			<th>유저 이름</th>
			<th>이메일</th>
			<th>권한</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		<tr>
			<td>John</td>
			<td>john@example.com</td>
			<td>관리자</td>
			<td><button>수정</button></td>
			<td><button>삭제</button></td>
		</tr>
		<tr>
			<td>Mary</td>
			<td>mary@example.com</td>
			<td>일반 사용자</td>
			<td><button>수정</button></td>
			<td><button>삭제</button></td>
		</tr>
	</table>
</body>
</html>
