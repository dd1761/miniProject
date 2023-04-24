$('#nextbtn').click(function(){
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
		   	data: 'password='+$('#password').val(), 
		   	success: function(data){
				console.log(data.email);
				console.log(data.name);
				if(data == "") {
					$('#passwordDiv').text('잘못된 비밀번호 입니다.');
					$('#passwordDiv').css('color', 'red');
					$('#passwordDiv').css('font-size', '14px');
					$('#passwordDiv').css('font-weight', 'bold');
					$('input[type="password"]').css('border','2px solid red');
					$('.inputBox label').css('color', 'red');
				    $('#password').focus();
				}else{
					alert('로그인성공!');
				}
			},
		   	error: function(err){
		   		console.log(err);
		   	}
		});
	}
});

