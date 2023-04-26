<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>영상 관리 페이지</title>
<link rel="stylesheet" href="/miniProject_youtube/css/adminViedo.css">
<meta charset="UTF-8">
</head>
<body>
	<h1>영상 관리</h1>
	<form>
		<label for="title">제목:</label>
		<input type="text" id="title" name="title" required><br><br>
		
		<label for="description">설명:</label>
		<textarea id="description" name="description" required></textarea><br><br>
		
		<label for="url">URL:</label>
		<input type="url" id="url" name="url" required><br><br>
		
		<input type="submit" value="추가">
	</form>
	<br><br>
	
	<table>
		<tr>
			<th>채널명</th>
			<th>제목</th>
			<th>설명</th>
			<th>URL</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		<tr>
			<td>Baboob</td>
			<td>How to make pancakes</td>
			<td>Learn how to make delicious pancakes</td>
			<td>https://www.youtube.com/watch?v=1l_GG6LnC5k</td>
			<td><button>수정</button></td>
			<td><button>삭제</button></td>
		</tr>
		<tr>
			<td>Aespa</td>
			<td>Introduction to HTML</td>
			<td>Learn the basics of HTML</td>
			<td>https://www.youtube.com/watch?v=UB1O30fR-EE</td>
			<td><button>수정</button></td>
			<td><button>삭제</button></td>
		</tr>
	</table>
</body>
</html>
