<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/miniProject/css/indexstyle.css">
<link rel="stylesheet" href="/miniProject/css/indexstyle.css">
	<div class="container play-container">
		<div id="video-detail">
			<%--동적 생성--%>
		</div>
		<%--		<div class="video-description">
		<h4>댓글 수 넣는 곳</h4>--%>
			<div id="comment">
			<div id="img">
				<img src="/miniProject/image/kwonyongjun.png">
			</div>
			<div id="addcomment">
				<div id="up">
					<input type="text" placeholder="댓글 추가..."
						   onclick="showButtons()">
				</div>
				<div id="down">
					<div id="down-left"></div>
					<div id="down-center"></div>
					<div id="down-right">
							<div id="commentBtn">
								<button id="cancel" onclick="hideButtons()">취소</button>
								<button id="uploadcomment">댓글</button>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div id="comment-detail">
			<%--댓글 동적 생성--%>
			</div>
		</div>
	</div>

	<div class="container play-container">
		<div class="row">
			<div class="play-video">
				<video controls autoplay>
					<source src="/miniProject/image/video.mp4" type="video/mp4">
				</video>
				<div class="tags"> <!-- 영상 및에 태그들 -->
					<a href="">#한국</a> <a href="">#미국</a> 
					<a href="">#펄럭</a> <a href="">#태극기</a>
				</div>
				<h3>비트캠프의 NC3기 Baboob팀</h3>
				
				<div class="play-video-info">
					<p>1225만 &bull; 2일전</p>
					<div>
						<a href=""><img src="/miniProject/image/like.png">1000</a>
						<a href=""><img src="/miniProject/image/dislike.png">2</a>
						<a href=""><img src="/miniProject/image/share.png">공유하기</a>
						<a href=""><img src="/miniProject/image/save.png">Save</a>
					</div>
					
				</div>
				<hr>
				
				<div class="plublisher">
					<img src="/miniProject/image/Jack.png">
					<div>
						<p>싱생송성근</p>
						<span>구독자 50만명</span>
					</div>
					<button type="button">구독</button>
				</div>

				<div class="video-description">
					<p>채널 설명란입니다.</p>
					<p>이곳은 뭘까요?</p>
					<hr>


					<h4>댓글 수 넣는 곳</h4>

<%--					<div id="comment">
                  <div id="img">
                     <img src="/miniProject/image/kwonyongjun.png">
                  </div>
                  <div id="addcomment">
                     <div id="up">
                        <input type="text" placeholder="댓글 추가..."
                           onclick="showButtons()">
                     </div>
                     <div id="down">
                        <div id="down-left"></div>
                        <div id="down-center"></div>
                        <div id="down-right">
                           <div id="commentBtn">
                              <button id="cancel" onclick="hideButtons()">취소</button>
                              <button id="uploadcomment">댓글</button>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>--%>


					<div class="old-comment">
						<img src="/miniProject/image/Jack.png">
						<div>
							<h3>송성근 <span>2일전</span></h3>
							<p>내이름은 송성근 비트캠프 학생이죠!</p>
							
							<div class="acomment-action">
								<img src="/miniProject/image/like.png">
								<span>244 좋아요 수</span>
								<img alt="싫어요" src="/miniProject/image/dislike.png">
								<span>싫어요 수</span>
								<span>댓글</span>
								<a href="">모든 댓글</a>
							</div>
							
						</div>
					</div>
					<div class="old-comment">
						<img src="/miniProject/image/Jack.png">
						<div>
							<h3>송성근 <span>2일전</span></h3>
							<p>내이름은 송성근 비트캠프 학생이죠!</p>
							
							<div class="acomment-action">
								<img src="/miniProject/image/like.png">
								<span>244 좋아요 수</span>
								<img alt="싫어요" src="/miniProject/image/dislike.png">
								<span>싫어요 수</span>
								<span>댓글</span>
								<a href="">모든 댓글</a>
							</div>
							
						</div>
					</div>
					
				</div>
				
				
			</div>
			<div class="right-sidebar">
			
				<div class="side-video-list">
				<a href="" class="small-thumbnail"><img src="/miniProject/image/thumbnail1.png"></a>
					<div class="video-info">
						<a href="">미국이 놀라고 중국이 부러워하며 일본이 질투하는 한국의 그것!</a>
						<p>Baboob</p>
						<p>15만</p>
					</div>
				</div>
				<div class="side-video-list">
				<a href="" class="small-thumbnail"><img src="/miniProject/image/thumbnail2.png"></a>
					<div class="video-info">
						<a href="">미국이 놀라고 중국이 부러워하며 일본이 질투하는 한국의 그것!</a>
						<p>Baboob</p>
						<p>15만</p>
					</div>
				</div>
				<div class="side-video-list">
				<a href="" class="small-thumbnail"><img src="/miniProject/image/thumbnail3.png"></a>
					<div class="video-info">
						<a href="">미국이 놀라고 중국이 부러워하며 일본이 질투하는 한국의 그것!</a>
						<p>Baboob</p>
						<p>15만</p>
					</div>
				</div>
				<div class="side-video-list">
				<a href="" class="small-thumbnail"><img src="/miniProject/image/thumbnail4.png"></a>
					<div class="video-info">
						<a href="">미국이 놀라고 중국이 부러워하며 일본이 질투하는 한국의 그것!</a>
						<p>Baboob</p>
						<p>15만</p>
					</div>
				</div>
				<div class="side-video-list">
				<a href="" class="small-thumbnail"><img src="/miniProject/image/thumbnail5.png"></a>
					<div class="video-info">
						<a href="">미국이 놀라고 중국이 부러워하며 일본이 질투하는 한국의 그것!</a>
						<p>Baboob</p>
						<p>15만</p>
					</div>
				</div>
				<div class="side-video-list">
				<a href="" class="small-thumbnail"><img src="/miniProject/image/thumbnail6.png"></a>
					<div class="video-info">
						<a href="">미국이 놀라고 중국이 부러워하며 일본이 질투하는 한국의 그것!</a>
						<p>Baboob</p>
						<p>15만</p>
					</div>
				</div>
				<div class="side-video-list">
				<a href="" class="small-thumbnail"><img src="/miniProject/image/thumbnail7.png"></a>
					<div class="video-info">
						<a href="">미국이 놀라고 중국이 부러워하며 일본이 질투하는 한국의 그것!</a>
						<p>Baboob</p>
						<p>15만</p>
					</div>
				</div>
				<div class="side-video-list">
				<a href="" class="small-thumbnail"><img src="/miniProject/image/thumbnail8.png"></a>
					<div class="video-info">
						<a href="">미국이 놀라고 중국이 부러워하며 일본이 질투하는 한국의 그것!</a>
						<p>Baboob</p>
						<p>15만</p>
					</div>
				</div>
				<div class="side-video-list">
				<a href="" class="small-thumbnail"><img src="/miniProject/image/thumbnail1.png"></a>
					<div class="video-info">
						<a href="">미국이 놀라고 중국이 부러워하며 일본이 질투하는 한국의 그것!</a>
						<p>Baboob</p>
						<p>15만</p>
					</div>
				</div>
			
			</div>
		</div>
	</div>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
	<%-- 제이쿼리 --%>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
	<%--내 js --%>
	<script type="text/javascript" src = "../js/video.js"></script>
