<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Youtube History</title>
    <link rel="stylesheet" href="/miniProject/css/history.css">
  </head>
  <body>
	<div class="navbar">
	  <ul>
	    <li>
	      <div class="input-group">
	        <input type="hidden" class="form-control" placeholder="시청기록 검색" aria-label="시청기록 검색" id="search-input">
	        <span class="input-group-text"><i class="bi bi-search"></i></span>
	      </div>
	    </li>

	    <li>
			<div class="deleteAllHistory">
				시청기록 모두 지우기
			</div>
		</li>

	  </ul>
	</div>
    <div class="content">
		<table id="historyTable_tbody">
			<%--동적 생성--%>
		</table>

    </div>
  </body>
  <%-- momment 라이브러리 추가 --%>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
  <%-- 제이쿼리 --%>
  <script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
  <%--내 js --%>
<script type="text/javascript" src = "/miniProject/js/history.js"></script>
</html>

