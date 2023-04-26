<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/youtube_test/css/dashboard.css">
</head>
<body>
   
	   <div id="page-title" >
   		  <div class="title-text">채널 대시보드</div>
      	  <div id="upload-icon"><img alt="동영상 업로드" src="/youtube_test/image/upload_2.png"></div>
      	  <div id="write-icon"><img alt="게시물 작성" src="/youtube_test/image/write.png"></div>
   	   </div>
   

	<main id="main">
		<div id="upload-box">
			<div id="upload-image">
				<img src="/youtube_test/image/upload_illustrator.png">
			</div>
			<div id="upload-text">최근 동영상의 측정항목을 보고 싶으신가요?
시작하려면 동영상을 업로드하고 게시하세요.
			</div>
			<div id="upload-button">
				<img src="/youtube_test/image/videoUploadBtn.png">
			</div>
		</div>
		
		<div id="analyze-box">
			<div id="analyze-title">채널 분석</div>
			<div id="hyunjae">현재 구독자 수</div>
			<div id="subscribe-su">50만</div>
			<hr/>
			<div id="summary">요약</div>
			<div id="views">조회수                                               10만 - </div>
			<hr/>
			<div id="hot-video">인기 동영상</div>
			<div id="gijun">조회수</div>
			
		</div>
	</main>
		<div id="comment-box">
			<div id="comment-title">최신 댓글</div>
			<article class="article">
				<a href="#"><img src="/youtube_test/image/jhhat.jpeg" class="profile-img"></a>
				<a href="#"><img src="/youtube_test/image/thumbnail1.png" class="thumnail"></a>
				<div class="content-info">
					<p class="subject">글 게시자<span>작성일</span></p>
					<p class="content">게시글 내용입니다.</p>
				</div>
			</article>
			<div id="plus"><a href="#">더보기</a></div>
			
		</div>
		
		<div id="subscriber-box">
			<div id="subscriber-title">최근 구독자 수</div>
			<article class="article2">
				<a href="#"><img src="/youtube_test/image/jhhat.jpeg" class="profile-img2"></a>
				<div class="subscriber-info">
					<p><a href="#" class="subscriber_name">구독자 이름</a></p>
					<p><a href="#" class="subscriber_su">구독자 16명</a></p>
				</div>
			</article>
			<div id="allSubscriber"><a href="#">모두 보기</a></div>
			
		</div>
	
	


</body>
</html>
