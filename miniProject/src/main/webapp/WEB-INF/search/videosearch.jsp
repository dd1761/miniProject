<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style type="text/css"> 
/* VideoContainer의 배치 방향을 가로에서 세로로 변경하고 간격을 조금 더 벌립니다. */
.searchVideoConatiner {
  display: flex;
  flex-direction: column;
  margin-bottom: 24px;
}

.VideoContainer {
  display: flex;
  flex-direction: row;
  margin-bottom: 8px;
}

.VideoContainer img {
  width: 246px;
  height: 138px;
  margin-right: 16px;
  border-radius: 4px;
  object-fit: cover;
}

.text-wrapper {
  display: flex;
  flex-direction: column;
}

.video_title {
  font-size: 18px;
  font-weight: 500;
  margin-bottom: 4px;
  line-height: 22px;
  color: #1c1c1c;
  cursor: pointer;
}

.video_title:hover {
  text-decoration: underline;
}

.upload_date, .channel_name {
  font-size: 14px;
  color: #606060;
  margin-bottom: 4px;
  line-height: 20px;
}

.channel_name {
  font-weight: 500;
}

.video_description {
  font-size: 14px;
  color: #606060;
  line-height: 20px;
}






</style>

<div class="searchVideoConatiner">
	
</div>


<script type="text/javascript"
	src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="/miniProject/js/search.js"></script>