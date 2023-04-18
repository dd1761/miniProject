<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="/miniProject/css/channel.css">

	<header>
		<div class="channel-info">
			<div class="channel-logo">
				<img src="/miniProject/img/ytnheader.png" alt="Logo">
			</div>
		</div>

	</header>

	<section>
		<div id='middle'>
			<div id='middle-left'></div>
			<div id='middle-right'>
				<div id='container'>
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
							<img src="/miniProject/img/subcribe.png" alt="subcribe">
						</div>
					</div>
				</div>


				<nav>
					<div class="navigation">
						<a href="#" class="current-page">홈</a> <a href="#">동영상</a> <a
							href="#" class="co">재생목록</a><a href="#" class="co">커뮤니티</a> <a href="">채널</a> <a
							href="#">정보</a>
						<div class="search-container">
							<input type="text" class="search-input" placeholder="검색">
							<img src="/miniProject/img/search.png" id="search-icon" alt="검색"
								class="search-icon">
						</div>
					</div>
				</nav>
				
			<div class="videoList">
			    <%@ include file="/WEB-INF/board/boardList.jsp" %>
				
				<%-- <c:if test="${empty display2}">
	    			<jsp:include page="../main/videoList.jsp" />
	  			</c:if>
	  			<c:if test="${not empty display2}">
	    			<jsp:include page="${display2 }" />
	  			</c:if> --%>
			</div> <!-- div videoList -->
			</div>
		</div>

	</section>

	<footer>
		<p>© 2023 My Channel. All rights reserved.</p>
	</footer>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
$('.co').click(function(){
		
		alert($(this).text());
		if($(this).text() == '커뮤니티') {
			alert('123');
			$('.videoList').load('test.jsp');
		}
	});
</script>