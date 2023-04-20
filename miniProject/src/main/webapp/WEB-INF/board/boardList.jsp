<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<!DOCTYPE html>
<html>
<head>
<title>커뮤니티 게시판</title>
<link rel="stylesheet" href="/miniProject/css/board.css">
</head>
<body>

	<div class="write">
		<section>
			<article>
				<div class="write_head">
					<img src="/miniProject/img/jhhat.jpeg" class="profile-img">
					<p class="subject">글 게시자</p>
					<span>공개 상태 공개</span>
				</div>
				<div class="write_main">
					<textarea placeholder="팬을 위해 새로운 소식을 올려보세요." id="dialog"></textarea>
				</div>
				<div class="write_footer">
					<div id="write_reset">취소</div>
					<div id="write_post">게시</div>
				</div>
			</article>
		</section>

	</div> <!-- write div -->

	<div>
		<div class="board_navigation">
			<a href="#" class="current-page">게시됨</a>
		</div>
	</div>


	<div class="list">
		<section id="section">
			<%-- <article class="article">
				<div class="board_head">
					<img src="/miniProject/img/jhhat.jpeg" class="profile-img"> <a
						href="#"><img src="/miniProject/img/show-more.png"
						class="show-more-img"></a>
					<p class="subject">글 게시자</p>
					<span>작성일</span>
				</div>
				<div class="content-info">
					<p class="content-1">게시글 내용입니다.</p>
				</div>
				<div class="btn">
						<a href="#"> <img src="/miniProject/img/like.png" id="likeBtn">
						</a><span id="likesu">605</span> <a href="#"> <img
							src="/miniProject/img/dislike.png" id="dislikeBtn">
						</a> <a href="#"> <img src="/miniProject/img/share.png"
							id="shareBtn">
						</a> <a href="#"> <img src="/miniProject/img/messages.png"
							id="dapBtn">
						</a><span id="dapsu">7</span>
					</div>
				
			</article>
			<article class="article">
				<div class="board_head">
					<img src="/miniProject/img/jhhat.jpeg" class="profile-img"> <a
						href="#"><img src="/miniProject/img/show-more.png"
						class="show-more-img"></a>
					<p class="subject">글 게시자</p>
					<span>작성일</span>
				</div>
				<div class="content-info">

					<p class="content-1">게시글 내용입니다.</p>
					<p>
						<a href="#"> <img src="/miniProject/img/like.png" id="likeBtn">
						</a><span id="likesu">605</span> <a href="#"> <img
							src="/miniProject/img/dislike.png" id="dislikeBtn">
						</a> <a href="#"> <img src="/miniProject/img/share.png"
							id="shareBtn">
						</a> <a href="#"> <img src="/miniProject/img/messages.png"
							id="dapBtn">
						</a><span id="dapsu">7</span>
					</p>
					<div class="tooltip" id="likeBtnTooltip">
						<p>좋아요</p>
					</div>
				</div>
			</article>
			<article>
				<div class="board_head">
					<img src="/miniProject/img/jhhat.jpeg" class="profile-img"> <a
						href="#"><img src="/miniProject/img/show-more.png"
						class="show-more-img"></a>
					<p class="subject">글 게시자</p>
					<span>작성일</span>
				</div>
				<div class="content-info">

					<p class="content-1">게시글 내용입니다.</p>
					<p>
						<a href="#"> <img src="/miniProject/img/like.png" id="likeBtn">
						</a><span id="likesu">605</span> <a href="#"> <img
							src="/miniProject/img/dislike.png" id="dislikeBtn">
						</a> <a href="#"> <img src="/miniProject/img/share.png"
							id="shareBtn">
						</a> <a href="#"> <img src="/miniProject/img/messages.png"
							id="dapBtn">
						</a><span id="dapsu">7</span>
					</p>
					<div class="tooltip" id="likeBtnTooltip">
						<p>좋아요</p>
					</div>
				</div>

			</article>
			<article>
				<div class="board_head">
					<img src="/miniProject/img/jhhat.jpeg" class="profile-img"> <a
						href="#"><img src="/miniProject/img/show-more.png"
						class="show-more-img"></a>
					<p class="subject">글 게시자</p>
					<span>작성일</span>
				</div>
				<div class="content-info">

					<p class="content-1">게시글 내용입니다.</p>
					<p>
						<a href="#"> <img src="/miniProject/img/like.png" id="likeBtn">
						</a><span id="likesu">605</span> <a href="#"> <img
							src="/miniProject/img/dislike.png" id="dislikeBtn">
						</a> <a href="#"> <img src="/miniProject/img/share.png"
							id="shareBtn">
						</a> <a href="#"> <img src="/miniProject/img/messages.png"
							id="dapBtn">
						</a><span id="dapsu">7</span>
					</p>
					<div class="tooltip" id="likeBtnTooltip">
						<p>좋아요</p>
					</div>
				</div>
			</article>
			<article>
				<div class="board_head">
					<img src="/miniProject/img/jhhat.jpeg" class="profile-img"> <a
						href="#"><img src="/miniProject/img/show-more.png"
						class="show-more-img"></a>
					<p class="subject">글 게시자</p>
					<span>작성일</span>
				</div>
				<div class="content-info">

					<p class="content-1">게시글 내용입니다.</p>
					<p>
						<a href="#"> <img src="/miniProject/img/like.png" id="likeBtn">
						</a><span id="likesu">605</span> <a href="#"> <img
							src="/miniProject/img/dislike.png" id="dislikeBtn">
						</a> <a href="#"> <img src="/miniProject/img/share.png"
							id="shareBtn">
						</a> <a href="#"> <img src="/miniProject/img/messages.png"
							id="dapBtn">
						</a><span id="dapsu">7</span>
					</p>
					<div class="tooltip" id="likeBtnTooltip">
						<p>좋아요</p>
					</div>
				</div>

			</article> -->
			<!-- <form>
			<h2>게시글 작성</h2>
			<label for="title">제목</label>
			<input type="text" id="title" name="title" placeholder="제목을 입력하세요">
			<label for="content">내용</label>
			<textarea id="content" name="content" rows="10" placeholder="내용을 입력하세요"></textarea>
			<input type="submit" value="작성">
		</form> -->
		</section>
	</div> <!-- list --%>

</body>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="../js/boardList.js"></script>
<!-- <script type="text/javascript" src="../js/boardList.js"></script> -->
<script type="text/javascript">
document.getElementById('dialog').addEventListener('input', function() {
    this.style.height = '20px'; // 초기 높이 설정
    this.style.height = (this.scrollHeight) + 'px'; // 입력된 텍스트의 높이에 따라 높이 조정
});

</script>
</html>
