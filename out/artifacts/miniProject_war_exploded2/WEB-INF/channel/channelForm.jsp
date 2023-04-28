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
				<%--<div id='container'>
					<div id='box-left'>
						<div class="channel-profile">
							<img src="/miniProject/img/ytnprofile2.png" alt="Profile Picture">
						</div>
					</div>
					<div id='box-center'>
						<div class="channel-details">
							<h1>&nbspYTN</h1>
							<p>&nbsp구독자 387만명 동영상 66만개</p>
							<p>
								<a href="#">&nbsp24시간 생중계되는 대한민국 대표 뉴스</a>
							</p>
						</div>
					</div>
					<div id='box-right'>
						<div class="subcribe">
							<!-- 로그인이 안되어있으면 구독버튼이 나타나지 않는다. -->
							<!-- 구독이 되어있다면 구독중버튼이 나오고 구독이 안되어있다면 구독버튼이 나온다. -->
							<c:if test="${not empty user_id && channel_id != data.channel_id}">
								<button type="button" id="subBtn">구독</button>
							</c:if>
							<c:if test="${ not empty user_id && channel_id == data.channel_id}">
							  	<button type="button" id="dissubBtn">구독중</button>
							</c:if>
						</div>
					</div>
				</div>--%>

				<%--컨테이너 시작 --%>
				<div id='container'>
						<%--동적 생성--%>
				</div>
				<%--컨테이너는 끝--%>

				<div>
					<div class="navigation">
						<input type="text" id="c_id" class="c_id" value="${param.channel_id }">
						<a href="#" class="current-page">홈</a> <a href="#">동영상</a> <a
							href="#" class="co">재생목록</a><a href="" id="co" class="co">커뮤니티</a> <a href="">채널</a> <a
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
<script type="text/javascript" src="/miniProject/js/channel.js"></script>