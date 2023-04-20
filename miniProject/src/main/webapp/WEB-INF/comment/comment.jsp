<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Youtube History</title>
	  <link rel="stylesheet" href="/miniProject/css/indexstyle.css">
	  <link rel="stylesheet" href="/miniProject/css/indexstyle.css">

  </head>
  <body>

  <h4>댓글 수 넣는 곳</h4>
  <h4>새론운 브랜치입니다!</h4>
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

  </body>
  <%-- momment 라이브러리 추가(시간을 나타낼때 사용됨) --%>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
  <%-- 제이쿼리 --%>
  <script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
  <%--내 js --%>
<script type="text/javascript" src = "../js/history.js"></script>
</html>
