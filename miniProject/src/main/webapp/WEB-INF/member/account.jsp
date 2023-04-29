<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account_management</title>
<style type="text/css">
body {
   color: #777777;
}

main {
   text-align: center;
}

.header {
   text-align: center;
}

.container {
   display: flex;
   justify-content: center;
   align-items: center;
}

.left-box {
   float: left;
   margin-left: 10%;
}

.right-box {
   float: right;
   margin-right: 10%;
}

.main-table {
   max-width: 500px;
   margin: 0 auto;
}

#pic {
   height: 75px;
}

#pic h5 {
   margin-left: 20px;
   font-size: 12px;
}

#inheader {
   text-align: left;
   margin-left: 20px;
}

#downheader {
   text-align: left;
   margin-left: 20px;
}

/* info-box 클래스 내부 요소들을 flexbox로 배치 */
.main-info {
   border-radius: 1%;
   margin-left: 10%;
   margin-right: 15%;
   border: 1px solid rgba(0, 0, 0, 0.2);
}

.info-box {
   border-bottom: 1px solid rgba(0, 0, 0, 0.2);
   padding: 10px; /* 패딩 추가 */
}

.main-info .info-box {
   height: 50px;
   display: flex;
   align-items: center;
   display: flex;
}

/* info-label 클래스에 대한 스타일 */
.info-label {
   width: 100px; /* 라벨의 너비를 조절해 왼쪽에 위치하도록 함 */
   text-align: left; /* 라벨의 텍스트를 오른쪽 정렬 */
   margin-left: 20px;
   margin-right: 10px; /* 인풋과의 간격을 조절 */
}

#profile {
   float: right;
   margin-right: 20px;
   width: 50px;
   height: 50px;
   border-radius: 50%;
   margin-left: 20px;
}

/* info-input 클래스에 대한 스타일 */
.info-input {
   flex: 1; /* 인풋이 라벨의 너비를 제외한 나머지 영역을 차지하도록 함 */
}

div.info-box:hover {
   background-color: #f2f2f2;
}

input[type="text"], input[type="password"], input[type="tel"], input[type="email"],
   input[type="date"], textarea {
   float: left;
   border: none;
}

.info-input select {
   float: left;
}

#main-logo img {
  margin-left: 10%;
  width: 150px;
  height: 40px;
}

/* 수정취소버튼 */
.buttons {
   display: flex;
   justify-content: center;
   align-items: center;
   margin-top: 20px;
}

.button, .button-delete {
   padding: 10px 20px;
   margin: 0 10px;
   border: none;
   border-radius: 5px;
   color: #fff;
   cursor: pointer;
}

.button {
   background-color: #007bff;
}

.button:hover {
   background-color: #0069d9;
}

.button-delete {
   background-color: #dc3545;
}

.button-delete:hover {
   background-color: #c82333;
}
</style>
</head>
<body>
   <div id="main-logo">
      <a href="/miniProject/"><img src="/miniProject/img/logo.png" alt="youtube">
      </a>
   </div>
   <header>
      <div class="header">
         <h1>개인정보</h1>
         <h3>다양한 YouTube 서비스에서 사용되는 나와 내 설정에 관한 정보입니다.</h3>
      </div>
   </header>

   <main>
      <div class="container">
         <div class="left-box">
            <h2>YouTube 프로필 정보</h2>
            <p>개인 정보 및 이를 관리하기 위한 옵션입니다. 다른 사용자가 나에게 쉽게 연락할 수 있도록 정보 중 일부(예:
               연락처 세부정보)를 다른 사용자에게 공개할 수 있습니다. 프로필 정보를 한눈에 확인할 수도 있습니다.</p>
         </div>
         <div class="right-box">
            <img src="../img/account.png" alt="image1">
         </div>
      </div>      
      <!-- div container end -->
      <div class="main-info">
         <div id="inheader">
            <h3>기본 정보</h3>
         </div>
	<form id="uploadForm">
         <div class="info-box" id="pic">
            <div class="info-label">사진</div>
            <h5>사진을 추가하여 계정을 맞춤설정합니다.</h5>
            <div class="info-input">
               <div id="photo-btn">
                  <label for="photo-text"> 
                  <img id="profile" src="../img/p.jpg" alt="profile">
                  </label> 
                  <input type="file" name="photo" id="photo-input" style="display: none;">
               </div>
            </div>
         </div>
         <input type="hidden" id="user_id" name="user_id" value="${user_id }">
	</form>
	
         <div class="info-box">
            <div class="info-label">비밀번호</div>
            <div class="info-input">
               <input type="password" id="password" name="password">
               <div id="pwdDiv"></div>
               <br>
               <input type="password" id="repwd" name="repwd">
               <div id="pwdDiv2"></div>
            </div>
         </div>


         <div class="info-box">
            <div class="info-label">이름</div>
            <div class="info-input">
               <input type="text" id="name" name="name">
               <div id="nameDiv"></div>
            </div>
         </div>

         <div class="info-box">
            <div class="info-label">생년월일</div>
            <div class="info-input">
               <input type="text" name="year" id="year" maxlength="8" oninput="this.value=this.value.replace(/[^0-9]/g,'');">
            </div>
         </div>

         <div class="info-box">
            <div class="info-label">성별</div>
            <div class="info-input">
               <select name="gender" id="gender">
               	  <option value="비공개">비공개</option>
                  <option value="남자">남성</option>
                  <option value="여자">여성</option>
                  <option value="풍자">성소수자</option>
               </select>
            </div>
         </div>

         <div id="downheader">
            <h3>연락처 정보</h3>
         </div>
         <div class="info-box">
            <div class="info-label">이메일</div>
            <div class="info-input">
               <input type="email" name="email" id="email" readonly="readonly">
            </div>
         </div>

         <div class="info-box">
            <div class="info-label">휴대전화</div>
            <div class="info-input">
               <input type="tel" name="phone" id="phone">
            </div>
         </div>
       </div>     
   </main>

   <div class="buttons">
      <button class="button" id="updateBtn">수정</button>
      <button class="button-delete" id="deleteBtn">회원탈퇴</button>
   </div>
   <input type="hidden" id="user_id" name="user_id" value="${user_id }">

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
		$('#pic').on('click', function(){
		  	document.getElementById('photo-input').click();
		});

		<!-- 업로드 버튼을 누르기 전에 아이콘을 통해서 선택한 이미지가 맞는지 확인하기 위해서 이미지를 보이게 한다. -->
		$('#photo-input').change(function(){
		     readURL(this);
		   });

		   function readURL(input){
		     var reader = new FileReader();
		     reader.onload = function(e){
		       $('#profile').attr('src', e.target.result);
		     }
		     reader.readAsDataURL(input.files[0]);
		   }
</script>
<script type="text/javascript" src="/miniProject/js/account.js"></script>
</body>
</html>