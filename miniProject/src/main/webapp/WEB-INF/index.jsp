<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Baboob</title>
<link rel="stylesheet" href="/miniProject/css/indexstyle.css">
</head>
<body>
<!-- flex-div -->
<nav class="flex-div">
	<div class="nav-left flex-div">
		<img alt="메뉴" src="/miniProject/image/menu.png" class="menu-icon">
		<img alt="로고" src="/miniProject/image/logo1.png" id="logo" class="logo" onclick="location.href='/miniProject/'">
	</div> <!-- flex-div -->
	
	<div class="nav-middle flex-div">
		<div class="search-box flex-div">
			<input type="text" placeholder="검색" id="searchVideo">
			<img alt="검색" src="/miniProject/image/search.png" id="searchbtn">
		</div><!-- search-box flex-div -->
		<input type="text" name="user_id" id="user_id" value="${user_id }" >
	</div><!-- nav-middel flex-div -->
	
	<div class="nav-right flex-div">
		<c:if test="${sessionScope.user_id == null }">
			<img src="/miniProject/image/loginbtn.png" id="loginbtn" onclick="location.href='/miniProject/member/login_id'">
		</c:if> <!-- user_id == null -->
		<c:if test="${sessionScope.user_id != null }">
			<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
			<script type="text/javascript" src="/miniProject/js/loginOk.js"></script>
		
			<img src="/miniProject/image/upload.png">
			<img src="/miniProject/image/more.png">
			<img src="/miniProject/image/notification.png" id="noti">
			<img src="/miniProject/image/dongbeen.jpg" class="user-icon">
			
			<div class="menu-container">
				<ul class="menu">
					<div id="nav-header">
						<div id="user-img">
							
						</div> <!-- user-img -->
						
						<div id="user-details">
							
							<span id="user-name"></span> <!-- user-name -->
							<span id="user-email"></span> <!-- user-email -->
		                    <div id="account-management-container">
		                       <a id="account-management" href="#">Google 계정 관리</a>
		                    </div> <!-- account-management-container -->
						</div> <!-- user-details -->
					</div> <!-- nav-header -->
					
					<div id="nav-main">
						<div id="nav-top">
							<li id="mychannel"><img src="/miniProject/image/mychannel.png" >내 채널</li>
							<li id="logout"><img src="/miniProject/image/logout.png">로그아웃</li>
						</div> <!-- nav-top -->
						<div id="nav-bottom">
							<li><img src="/miniProject/image/designtema.png"
                           id="designtema"><a href="#">디자인: 기기 테마</a></li>
                        <li><img src="/miniProject/image/setting.png"
                           id="setting"><a href="#">설정</a></li>
						</div> <!-- nav-bottom -->
					</div><!-- nav-main -->
				</ul> <!-- menu -->
			</div> <!-- menu-container -->
		</c:if> <!-- user_id != null -->
	</div><!-- nav-right flex-div -->
	
</nav>
<!-- flex-div -->
	<!-- sidebar -->
	<div class="sidebar">
		<div class="shortcut-links">
			<a href="/miniProject/"><img src="/miniProject/image/home.png" ><p>홈</p></a>
			<a href=""><img src="/miniProject/image/explore.png" ><p>인기 급상승</p></a>
			<a href=""><img src="/miniProject/image/subscriprion.png" ><p>구독</p></a>
			<a href=""><img src="/miniProject/image/library.png" ><p>보관함</p></a>
			<a href="/miniProject/history/historyList"><img src="/miniProject/image/history.png" ><p>시청 기록</p></a>
			<a href=""><img src="/miniProject/image/playlist.png" ><p>홈</p></a>
			<a href=""><img src="/miniProject/image/messages.png" ><p>메시지</p></a>
			<a href=""><img src="/miniProject/image/show-more.png" ><p>더보기</p></a>
			<hr>
		</div>
		<div class="subscribed-list">

			<!-- <a href="/miniProject/channel/main"><img src="/miniProject/image/dongbeen.jpg" id="channel"><p>김동빈</p></a>
			<a href=""><img src="/miniProject/image/kwonyongjun.png"><p>권용준</p></a>
			<a href=""><img src="/miniProject/image/tom.png"><p>강성욱</p></a>
			<a href=""><img src="/miniProject/image/megan.png"><p>송성근</p></a>
			<a href=""><img src="/miniProject/image/cameron.png"><p>이지현</p></a> -->	<!-- index.js에서 동적처리함 -->	

			<h3>${email} ${password}</h3>
			<a href="/miniProject/channel/main?channel_id=1"><img src="/miniProject/image/dongbeen.jpg" id="channel"><p>김동빈</p></a>
			<a href="/miniProject/channel/main?channel_id=2"><img src="/miniProject/image/kwonyongjun.png"><p>권용준</p></a>
			<a href="/miniProject/channel/main?channel_id=3"><img src="/miniProject/image/tom.png"><p>강성욱</p></a>
			<a href="/miniProject/channel/main?channel_id=4"><img src="/miniProject/image/megan.png"><p>송성근</p></a>
			<a href="/miniProject/channel/main?channel_id=5"><img src="/miniProject/image/cameron.png"><p>이지현</p></a>
			

		</div>
	</div>

	<!-- 메인화면 -->
	<div class="container">
		<div class="display">
	  		<c:if test="${empty display && empty display3 && empty display4 && empty display5}">
	    		<jsp:include page="./main/container.jsp" />
	  		</c:if>
		  	<c:if test="${not empty display}"> <!-- UserController -->
		    	<jsp:include page="${display }" />
		  	</c:if>
		  	<c:if test="${not empty display3}">
		    	<jsp:include page="${display3 }" />
		  	</c:if>
            <c:if test="${not empty display4}">
                <jsp:include page="${display4 }" />
            </c:if>
            <c:if test="${not empty display5}">
                <jsp:include page="${display5 }" />
            </c:if>
	  </div>
	</div>

	
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="/miniProject/js/index.js"></script>
</body>
</html>