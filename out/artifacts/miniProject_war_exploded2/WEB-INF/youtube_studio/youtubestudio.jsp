<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
   margin-left: 30px;
}

#header h5 {
   font-size: 30px;
}

#container {
   display: flex;
   width: 100%;
   height: 50px;
}

#box-left {
   border: 1px solid lightgray;
   background: white;
   flex: 1;
   display: flex;
   align-items: center;
   padding-left: 20px;
}

#box-right {
   border: 1px solid lightgray;
   background: white;
   flex: 1;
   display: flex;
   align-items: center;
   justify-content: space-around;
   padding-right: 20px;
}

#box-right div {
   display: flex;
   flex-direction: row;
   justify-content: space-between;
   align-items: center;
   width: 100%;
}

#navigation {
   display: flex;
   border-bottom: 1px solid lightgray; /* 밑줄 추가 */
   padding-bottom: 15px; /* 여백 추가 */
}

#navigation ul {
   font-size: 20px;
   list-style: none;
   display: flex;
   margin: 0;
   padding: 0;
}

#navigation ul a {
   display: block;
   padding: 20px;
   text-decoration: none;
   color: #808080;
   font-weight: bold;
   position: relative;
}

#navigation ul a:hover, #navigation ul a.active {
   color: #00f;
}

#navigation ul a::after {
   content: "";
   position: absolute;
   bottom: -2px;
   left: 0;
   width: 100%;
   height: 2px;
   background-color: #00f;
   opacity: 0;
   transition: opacity 0.3s ease, background-color 0.3s ease;
}

#navigation ul a:hover::after, #navigation ul a.active::after {
   opacity: 1;
   background-color: #aaf;
}

/* 체크박스 스타일링 */
#checkbox-left {
   /* 체크박스의 기본 스타일 숨김 */
   opacity: 0;
   position: absolute;
   width: 0;
   height: 0;
}

/* 체크박스 스타일링 */
#checkbox-left {
   /* 체크박스의 기본 스타일 숨김 */
   opacity: 0;
   position: absolute;
   width: 0;
   height: 0;
}

/* 체크박스 커스텀 스타일 */
#checkbox-left+label {
   /* 체크박스와 연결된 레이블 스타일링 */
   cursor: pointer;
   padding-left: 25px; /* 체크박스 왼쪽 여백 */
   display: flex;
   align-items: center; /* 체크박스를 세로 방향으로 가운데 정렬 */
   position: relative;
   transition: background-color 0.3s; /* 배경색 변경에 대한 0.3초의 트랜지션 효과 */
}

#checkbox-left+label:before {
   /* 체크박스 전경 스타일링 (체크 표시) */
   content: "";
   position: absolute;
   left: 0;
   top: 50%; /* 체크박스를 세로 방향으로 가운데 정렬 */
   transform: translateY(-50%); /* 체크박스를 세로 방향으로 가운데 정렬 */
   width: 18px;
   height: 18px;
   border: 2px solid #000; /* 체크박스 테두리 스타일 */
   background-color: #FFF; /* 기본 배경색 (흰색) */
   transition: all 0.3s; /* 모든 스타일 변경에 대한 0.3초의 트랜지션 효과 */
}

#checkbox-left:checked+label:before {
   /* 체크박스가 체크된 상태일 때의 스타일 */
   background-color: #808080; /* 체크박스가 체크된 상태일 때의 배경색 */
   border-color: #000; /* 체크박스가 체크된 상태일 때의 테두리 스타일 */
   animation: checkmark 0.5s ease-in-out; /* 체크박스가 체크된 상태일 때의 애니메이션 효과 */
}

@
keyframes checkmark {
   /* 체크박스가 체크된 상태일 때의 체크표시 애니메이션 효과 */ 0% {
   transform: scale(0); /* 0% 일때는 체크표시를 확대하지 않음 */
}

50






%
{
transform






:






scale




(






1




.2






)




; /* 50% 일때는 체크표시를 1.2배 확대 */
}
}

/* 체크박스 끝 */
#filter {
   display: flex;
   justify-content: flex-start;
   align-items: center;
   padding-left: 20px;
   border-bottom: 1px solid lightgray; /* 밑줄 추가 */
   padding-bottom: 15px; /* 여백 추가 */
   padding-top: 15px; /* 여백 추가 */
}

#filterInput {
   border: none;
   width: 200px; /* 입력 창의 너비 조절 */
   height: 30px; /* 입력 창의 높이 조절 */
   margin-right: 10px; /* 입력 창과 버튼 사이의 간격 조절 */
}

#filterBtn {
   width: 100px; /* 버튼의 너비 조절 */
   height: 30px; /* 버튼의 높이 조절 */
}

#contents {
   margin-top: 0; /* 변경: 세로 여백을 0으로 설정 */
   flex-direction: column; /* 새로 정렬 */
   display: flex; /* 추가: Flexbox 사용 */
   justify-content: flex-end; /* 변경: 가로 정렬을 맨 아래로 설정 */
   align-items: center; /* 추가: 세로 정렬을 위해 가운데로 정렬 */
}

#contents img {
   margin-top: 10px;
}

#contents button {
   padding: 10px 20px;
   background-color: #065FD4; /* 변경: 배경색을 더 밝은 파랑색으로 설정 */
   color: #fff; /* 변경: 글씨색을 흰색으로 설정 */
   border: none;
   cursor: pointer;
   margin-bottom: 30px; /* 변경: 버튼과 이미지 사이의 간격을 조정 */
   margin-right: 20px;
   border-radius: 5px; /* 변경: 버튼에 둥근 모서리 추가 */
   box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1); /* 변경: 버튼에 그림자 효과 추가 */
   transition: background-color 0.3s ease; /* 변경: 배경색 변화에 애니메이션 효과 추가 */
}

#contents button:hover {
   background-color: #0056b3; /* 변경: 버튼에 호버 효과에 따라 배경색 변화 */
}
</style>
</head>
<body>
   <header>
      <div id="header">
         <h5>
            채널 콘텐츠
            <h5>
      </div>
   </header>

   <nav>
      <div id="navigation">
         <ul>
            <li><a href="#" class="active">동영상</a></li>
            <li><a href="#">실시간 스트리밍</a></li>
            <li><a href="#">재생목록</a></li>
            <li><a href="#">팟캐스트 목록</a></li>
         </ul>
      </div>
   </nav>
   <!-- nav -->

   <!-- filter -->
   <div id="filter">
      <img src="/miniProject/image/filter.png" alt="필터"> <input type="text"
         id="filterInput" placeholder="필터">
   </div>
   <!-- filter end -->

   <div id="container">
      <div id="box-left">
         <input type="checkbox" id="checkbox-left">
         <!-- 체크박스 추가 -->
         <label for="checkbox-left"></label> 동영상

      </div>
      <div id="box-right">
         <div>
            <p>공개상태</p>
            <p>제한사항</p>
            <a href="#">날짜</a> <a href="#">조회수↑</a>
            <p>댓글</p>
            <p>좋아요</p>
         </div>
      </div>
   </div>

   <div id="contents">
      <img src="/miniProject/image/noncontents2.png" alt="배경 이미지">
      <!-- 파일 업로드 폼 -->
      <form id="upload-form" action="/upload" method="post"
         enctype="multipart/form-data">
         <input type="file" name="file">
         <button id="submit-btn" type="submit">Upload</button>
      </form>

      <!-- 메시지 출력 영역 -->
      <div id="message"></div>
   </div>

   <script>
   $.ajax({
        type: "POST",
        url: "/upload",
        data: formData,
        contentType: false,
        processData: false,
        success: function(response) {
          // 업로드 성공 시 메시지 출력
          $('#message').text(response);
        },
        error: function() {
          // 업로드 실패 시 메시지 출력
          $('#message').text('Error uploading video');
        }
      });
   </script>


</body>
</html>