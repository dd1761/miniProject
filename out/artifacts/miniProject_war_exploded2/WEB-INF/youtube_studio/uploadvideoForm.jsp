<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="../css/uploadvideoForm.css">



</head>
<body>


	<form id="uploadForm" onsubmit="return validateForm()">
		<table border="1">
			<tr>
				<td>채널아이디</td>
				<td><input type="hidden" name="channel_id"
					value="${param.channel_id}">${param.channel_id}</td>
			</tr>
			<tr>
				<td>비디오 제목 <span style="color: red">*필수항목*</span></td>
				<td><input type="text" name="video_title" required></td>
			</tr>
			<tr>
				<td>비디오 내용</td>
				<td><textarea name="video_description" cols="100%" rows="10"
						maxlength="200"></textarea></td>
			</tr>
			<div style="text-align: center;">
				<div style="display: inline-block;">
					<h5>
						영상 업로드 <span style="color: red">*필수항목*</span>
					</h5>
					<div style="position: relative;">
						<video id="showImg" controls></video>
						<img id="camera" src="../image/camera2.png" width="100px"
							height="100px" alt="camera"
							style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); cursor: pointer;">
						<input type="file" name="inputvideo_url" id="img"
							style="visibility: hidden; cursor: pointer;">
					</div>
				</div>
				<div style="display: inline-block;">
					<h5>
						썸네일 업로드 <span style="color: red">*필수항목*</span>
					</h5>
					<div style="position: relative;">
						<img id="showImg2" controls> <img id="camera2"
							src="../image/camera.png" width="100px" height="100px"
							alt="camera2"
							style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); cursor: pointer;">
						<input type="file" name="inputimage_url" id="img2"
							style="visibility: hidden; cursor: pointer;">
					</div>
				</div>
			</div>
			<tr>
				<td colspan="2" style="text-align: center;"><input
					type="submit" id="uploadBtn" value="등록"></td>
			</tr>
		</table>
	</form>
	<div id="loading"
		style="display: none; position: fixed; top: 0; left: 0; width: 100%; height: 100%; background-color: rgba(0, 0, 0, 0.5);">
		<div
			style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); color: white;">
			로딩중...</div>
	</div>



	<script type="text/javascript"
		src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
	<script type="text/javascript" src="../js/upload.js"></script>
</body>
</html>