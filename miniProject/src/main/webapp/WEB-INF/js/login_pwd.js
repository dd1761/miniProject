$(function(){
	$.ajax({
		type: 'post',
		url: '/miniProject/member/isExistEmail',
	   	data: 'email='+$('#email').text(),
		success: function(data){
			$('#name').text(data.name);
		},
	   	error: function(err){
	   		console.log(err);
	   	}
	});
});

$('#nextBtn').click(function(){
	$('#passwordDiv').empty();
		
	if($('#password').val() == '') {
		$('#passwordDiv').text('비밀번호를 입력하세요.');
		$('#passwordDiv').css('color', 'red');
		$('#passwordDiv').css('font-size', '14px');
		$('#passwordDiv').css('font-weight', 'bold');
		$('input[type="password"]').css('border','2px solid red');
		$('.inputBox label').css('color', 'red');
	    $('#password').focus();
	}else {
		$.ajax({
			type: 'post',
			url: '/miniProject/member/isExistPwd',
		   	data: 'password=' + $('#password').val() + '&email=' + $('#email').text(), 
		   	success: function(data){
				if(data == "") {
					$('#passwordDiv').text('잘못된 비밀번호 입니다.');
					$('#passwordDiv').css('color', 'red');
					$('#passwordDiv').css('font-size', '14px');
					$('#passwordDiv').css('font-weight', 'bold');
					$('input[type="password"]').css('border','2px solid red');
					$('.inputBox label').css('color', 'red');
				    $('#password').focus();
				}else{
					location.href='/miniProject/';
				}
			},
		   	error: function(err){
		   		console.log(err);
		   	}
		});
	}
});

$("#login").keydown(function(key) {
	   if( key.keyCode == 13 ){
	      $('#nextBtn').trigger('click');
	   }
});


$('#search_password').click(function(){
	location.href='/miniProject/member/search_pwd1?email='+$('#email').text();
});