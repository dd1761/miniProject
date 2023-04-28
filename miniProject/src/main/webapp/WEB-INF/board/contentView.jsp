<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/miniProject/css/contentView.css">
</head>
<body>
<input type="hidden" id="param_board_id" value="${param.board_id }">
<input type="hidden" id="board_id" value="">
<input type="hidden" id="channel_id" value="">
	<div class="content">
		<section id="section">
			<article class="view_article">
				<div class="board_head">
					<img src="" class="profile-img"> <%-- <a href="#"> --%>
					<img src="/miniProject/img/show-more.png" class="show-more-img">
					<p class="channel_name"></p>
					<span class="upload_date"></span>
					<div class="dropdown-menu">
						<ul>
							<li>
								<input class="deleteBtn" type="button" value="삭제">
							</li>
							<li style="display: none;">
								<input class="board_id" type="hidden" value="" style="display: none;">
							</li>
							<li style="display: none;">
								<input class="channel_id" type="hidden" value="" style="display: none;">
							</li>
						</ul>
					</div>
				</div>
				<div class="content-info-view">
					<p class="content-1-view"></p>
				</div>
				<div class="btn-view">
					<a href="#">
						<img src="/miniProject/img/like.png" id="likeBtn">
					</a>
					<span id="likesu"></span>
					<a href="#">
						<img src="/miniProject/img/dislike.png" id="dislikeBtn">
					</a>
					<a href="#">
						<img src="/miniProject/img/share.png" id="shareBtn">
					</a>
					<a href="#">
						<img src="/miniProject/img/messages.png" id="dapBtn">
					</a>
					<span id="dapsu"></span>


				</div>
			</article>
		</section>
	</div>
	
	<div class="comment-menu">
		<div id="comment-su"></div>
	</div> <!-- comment-menu -->
	
	<div class="comment-write">
		

		<section>
				<article class="comment-list">
					<div class="write_head">
						<img class="profile-img">
						<textarea placeholder="댓글 추가..." id="dialog"></textarea>
					</div>
					<!-- <div class="write_main">
						
					</div> -->
					<div class="write_footer">
						<div id="comment_write_reset">취소</div>
						<div id="comment_write_post">댓글</div>
					</div>
				</article>
			</section>
	</div> <!-- write div -->
</body>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="/miniProject/js/contentView.js"></script>
<script type="text/javascript">
	document.getElementById('dialog').addEventListener('input', function() {
		this.style.height = '20px'; // 초기 높이 설정
		this.style.height = (this.scrollHeight) + 'px'; // 입력된 텍스트의 높이에 따라 높이 조정
	});
</script>
</html>