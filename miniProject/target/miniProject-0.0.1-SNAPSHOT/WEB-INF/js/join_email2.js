$(function(){
	const eamil = $('#email').text(); // 이메일 주소값 얻어오기!
	console.log('완성된 이메일 : ' + eamil); // 이메일 오는지 확인
	const checkInput = $('#email_code') // 인증번호 입력하는곳 
	
	$.ajax({
		type : 'get',
		url : '/miniProject/member/mailCheck',
		data: 'email='+$('#email').text(),
		success : function (data) {
			console.log("data : " +  data);
			checkInput.attr('disabled',false);
			code =data;
			alert('인증번호가 전송되었습니다.')
		}			
	}); // end ajax
	
	// 인증번호 비교 
	// blur -> focus가 벗어나는 경우 발생
	$('.inputBox').blur(function () {
		const inputCode = $(this).val();
		const $resultMsg = $('#mail-check-warn');
		
		if(inputCode === code){
			$resultMsg.html('인증번호가 일치합니다.');
		}else{
			$resultMsg.html('인증번호가 불일치 합니다. 다시 확인해주세요!.');
			$resultMsg.css('color','red');
		}
	});
});