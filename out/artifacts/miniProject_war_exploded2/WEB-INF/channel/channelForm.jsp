<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<link rel="stylesheet" href="/miniProject/css/channel.css">
	<header>

		<div class="channel-info">
			<div class="channel-logo">
				<%--채널의 썸네일 동적처리 --%>
				<%--<img src="/miniProject/img/ytnheader.png" alt="Logo">--%>
			</div>
		</div>

	</header>

	<section>
		<div id='middle'>
			<div id='middle-left'></div>
			<div id='middle-right'>

				<%--컨테이너 시작 --%>
				<div id='container'>
						<%--동적 생성--%>
				</div>
				<%--컨테이너는 끝--%>

				<div>
					<div class="navigation">
						<a href="#" class="current-page">홈</a> <a href="#">동영상</a> <a
							href="#" class="co">재생목록</a><a href="/miniProject/user/boardList" class="co">커뮤니티</a> <a href="">채널</a> <a
							href="#">정보</a>
						<div class="search-container">
							<input type="text" class="search-input" placeholder="검색">
							<img src="/miniProject/img/search.png" id="search-icon" alt="검색"
								class="search-icon">
						</div>
					</div>
				</div>
				
			<div class="videoList">
				<c:if test="${empty display2}">
	    			<jsp:include page="videoList.jsp" />
	  			</c:if>
	  			<c:if test="${not empty display2}">
	    			<jsp:include page="${display2 }" />
	  			</c:if>
			</div> <!-- div videoList -->
			</div>
		</div>

	</section>

	<footer>
		<p>© 2023 My Channel. All rights reserved.</p>
	</footer>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
/* $('.co').click(function(){
		
		alert($(this).text());
		if($(this).text() == '커뮤니티') {
			alert('123');
			$('.videoList').load('test.jsp');
		}
	}); */
</script>