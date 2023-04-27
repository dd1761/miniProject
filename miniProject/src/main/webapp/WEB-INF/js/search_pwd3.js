$('.pass').click(function(){
	$.ajax({
		type: 'post',
		url: '/miniProject/member/isExistPwd2',
	   	data: 'email=' + $('#email').text(),
	   	success: function(data){
			location.href='/miniProject/';
		},
	   	error: function(err){
	   		console.log(err);
	   	}
	});
});


$('#nextBtn').click(function(){
	$('#pwdDiv').empty();
	
	var pwd = $("#password").val();
	const regex = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]).+$/;
	
	if($('#password').val() == '') {
		$('#pwdDiv').text('비밀번호를 입력하세요.');
		$('#pwdDiv').css('color', 'red');
		$('#pwdDiv').css('font-size', '14px');
		$('#pwdDiv').css('font-weight', 'bold');
		$('input[type="password"]').css('border','2px solid red');
		$('.inputBox1 label').css('color', 'red');
		$('.inputBox2 label').css('color', 'red');
	    $('#password').focus();
	}else if($('#repwd').val() == '') {
		$('#pwdDiv').text('비밀번호(확인)를 입력하세요.');
		$('#pwdDiv').css('color', 'red');
		$('#pwdDiv').css('font-size', '14px');
		$('#pwdDiv').css('font-weight', 'bold');
		$('input[type="password"]').css('border','2px solid red');
		$('.inputBox1 label').css('color', 'red');
		$('.inputBox2 label').css('color', 'red');
	    $('#repwd').focus();
	}else if($('#repwd').val() != $('#password').val()) {
		$('#pwdDiv').text('비밀번호(확인)가 일치하지 않습니다.');
		$('#pwdDiv').css('color', 'red');
		$('#pwdDiv').css('font-size', '14px');
		$('#pwdDiv').css('font-weight', 'bold');
		$('input[type="password"]').css('border','2px solid red');
		$('.inputBox1 label').css('color', 'red');
		$('.inputBox2 label').css('color', 'red');
	    $('#repwd').focus();
	}else if(pwd.length < 8) {
		$('#pwdDiv').text('비밀번호는 8자 이상이어야 합니다.');
		$('#pwdDiv').css('color', 'red');
		$('#pwdDiv').css('font-size', '14px');
		$('#pwdDiv').css('font-weight', 'bold');
		$('input[type="password"]').css('border','2px solid red');
		$('.inputBox1 label').css('color', 'red');
		$('.inputBox2 label').css('color', 'red');
	    $('#password').focus();
	}else if(!regex.test(pwd)) {
		$('#pwdDiv').text('비밀번호는 문자, 숫자, 특수문자를 각각 1개 이상 포함해야 합니다.');
		$('#pwdDiv').css('color', 'red');
		$('#pwdDiv').css('font-size', '14px');
		$('#pwdDiv').css('font-weight', 'bold');
		$('input[type="password"]').css('border','2px solid red');
		$('.inputBox1 label').css('color', 'red');
		$('.inputBox2 label').css('color', 'red');
	    $('#password').focus();
	}else {
		$.ajax({
			type: 'post',
			url: '/miniProject/member/UpdatePwd',
			data: 'password=' + $('#password').val() + '&email=' + $('#email').text(),
			success: function(data){
				alert("비밀번호가 변경되었습니다, 비밀번호 입력창으로 돌아갑니다");
				$.ajax({
					type: 'post',
					url: '/miniProject/member/isExistEmail',
				   	data: 'email='+$('#email').text(), 
				   	success: function(data){
						location.href='/miniProject/member/login_pwd?email='+$('#email').text();
				   	},
				   	error: function(err){
				   		console.log(err);
				   	}
				});
			},
		   	error: function(err){
		   		console.log(err);
		   	}
		});
	}
});

$(function(){
	$.ajax({
		type: 'post',
		url: '/miniProject/member/isExistEmail',
	   	data: 'email='+$('#email').text(),
		success: function(data){
			if(data.profile_url == null) {
				$('#profile').attr("src", '../img/p.jpg');
			}else {
				$('#profile').attr("src", '../storage/' + data.profile_url);
			}
		},
	   	error: function(err){
	   		console.log(err);
	   	}
	});
});

$('.email').click(function(){
	location.href='/miniProject/member/login_pwd?email='+$('#email').text();
});
