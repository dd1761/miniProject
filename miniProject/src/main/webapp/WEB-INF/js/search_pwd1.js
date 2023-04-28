$(function(){
	const eamil = $('#email').text(); // 이메일 주소값 얻어오기!
	console.log('완성된 이메일 : ' + eamil); // 이메일 오는지 확인
	const checkInput = $('#email_code') // 인증번호 입력하는곳 
	
	$.ajax({
		type : 'get',
		url : '/miniProject/member/mailCheck',
		data: 'email='+$('#email').text(),
		success : function (data) {
			//console.log("data : " +  data);
			checkInput.attr('disabled',false);
			code =data;
			alert('인증코드가 전송되었습니다.')
		}			
	}); // end ajax
	
	$('#nextBtn').click(function(){
		$('#codeDiv').empty();
		
		if($('#email_code').val() == '') {
			$('#codeDiv').text('코드를 입력하세요.');
			$('#codeDiv').css('color', 'red');
			$('#codeDiv').css('font-size', '14px');
			$('#codeDiv').css('font-weight', 'bold');
			$('input[type="text"]').css('border','2px solid red');
			$('.inputBox label').css('color', 'red');
		    $('#codeDiv').focus();
		}else {
			if($('#email_code').val() == code) {
				location.href='/miniProject/member/search_pwd2?email='+$('#email').text();
			}else {
				$('#codeDiv').text('코드번호가 불일치 합니다.');
				$('#codeDiv').css('color', 'red');
				$('#codeDiv').css('font-size', '14px');
				$('#codeDiv').css('font-weight', 'bold');
				$('input[type="text"]').css('border','2px solid red');
				$('.inputBox label').css('color', 'red');
			    $('#codeDiv').focus();
			}
		}
	});
});

$('.email').click(function(){
	location.href='/miniProject/member/login_pwd?email='+$('#email').text();
});

$("#search").keydown(function(key) {
	   if( key.keyCode == 13 ){
	      $('#nextBtn').trigger('click');
	   }
});
