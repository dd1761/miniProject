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
   <nav class="flex-div">
      <div class="nav-left flex-div">
         <img alt="메뉴 " src="/miniProject/image/menu.png"
            class="menu-icon"> <img alt="로고"
            src="/miniProject/image/logo1.png" id="logo" class="logo">
      </div>
      <div class="nav-middle flex-div">
         <div class="search-box flex-div">
            <input type="text" placeholder="검색"> <img alt="검색"
               src="/miniProject/image/search.png">
         </div>
         <img src="/miniProject/image/voice-search.png"
            class="mic-icon">
      </div>
      <div class="nav-right flex-div">

         <img src="/miniProject/image/upload.png"> <img
            src="/miniProject/image/more.png"> <img
            src="/miniProject/image/notification.png"> <img
            src="/miniProject/image/dongbeen.jpg" id="user-icon"
            class="user-icon">

         <div class="menu-container">
            <ul class="menu">
               <!-- 계정 정보 -->
               <div id="nav-header">
                  <div id="user-img">
                     <img src="/miniProject/image/dongbeen.jpg"
                        id="user-icon" class="user-icon">
                  </div>
                  <div id="user-details">
                     <span id="user-name">이름</span> <span id="user-email">이메일계정</span>
                     <div id="account-management-container">
                        <a id="account-management" href="#">Google 계정 관리</a>
                     </div>
                  </div>
               </div>

               <!-- 메뉴 항목들을 담을 컨테이너 -->
                  <ul class="menu">
                     <div id="nav-main">
                        <div id="nav-top">
                        <li><img src="/miniProject/image/mychannel.png"
                           id="mychanne"> <a href="#">내 채널</a></li>
                        <li><img src="/miniProject/image/youtubestudio.png"
                           id="youtubestudio"><a href="#">유튜브 스튜디오</a></li>
                        <li><img src="/miniProject/image/countchange.png"
                           id="countchange"><a href="#">계정 전환</a></li>
                        <li><img src="/miniProject/image/logout.png"
                           id="logout"><a href="#">로그아웃</a></li>
                        </div>
                        <div id="nav-bottom">
                        <li><img src="/miniProject/image/designtema.png"
                           id="designtema"><a href="#">디자인: 기기 테마</a></li>
                        <li><img src="/miniProject/image/setting.png"
                           id="setting"><a href="#">설정</a></li>
                        <li><img src="/miniProject/image/customerservice.png"
                           id="customerservice"><a href="#">고객센터</a></li>
                        <li><img src="/miniProject/image/sendcomment.png"
                           id="sendcomment"><a href="#">의견 보내기</a></li>
                        </ul>
                     </div>
                  </div>
               </ul>
            </div>
         </div>
      </nav>

	<!-- sidebar -->
	<div class="sidebar">
		<div class="shortcut-links">
			<a href="/miniProject/"><img src="/miniProject/image/home.png" ><p>홈</p></a>
			<a href=""><img src="/miniProject/image/explore.png" ><p>인기 급상승</p></a>
			<a href=""><img src="/miniProject/image/subscriprion.png" ><p>구독</p></a>
			<a href=""><img src="/miniProject/image/library.png" ><p>보관함</p></a>
			<a href=""><img src="/miniProject/image/history.png" ><p>시청 기록</p></a>
			<a href=""><img src="/miniProject/image/playlist.png" ><p>홈</p></a>
			<a href=""><img src="/miniProject/image/messages.png" ><p>메시지</p></a>
			<a href=""><img src="/miniProject/image/show-more.png" ><p>더보기</p></a>
			<hr>
		</div>
		<div class="subscribed-list">
			<h3>구독</h3>
			<img src="/miniProject/image/dongbeen.jpg" id="channel"><a href="/miniProject/user/channelForm"><p>김동빈</p></a>
			<img src="/miniProject/image/kwonyongjun.png"><a href=""><p>권용준</p></a>
			<img src="/miniProject/image/tom.png"><a href=""><p>강성욱</p></a>
			<img src="/miniProject/image/megan.png"><a href=""><p>송성근</p></a>
			<img src="/miniProject/image/cameron.png"><a href=""><p>이지현</p></a>
		</div>
	</div>

	<!-- 메인화면 -->
	<div class="container">
		<div class="display">
	  		<c:if test="${empty display}">
	    		<jsp:include page="./main/container.jsp" />
	  		</c:if>
		  	<c:if test="${not empty display}">
		    	<jsp:include page="${display }" />
		  	</c:if>
	  </div>
	</div>

	
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="/miniProject/js/index.js"></script>
</body>
</html>