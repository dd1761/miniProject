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
			url: '/miniProject/member/insertMember',
			data: 'name=' + $('#last_name').val() + $('#first_name').val()
				 +'&email=' + $('#email').val()
				 +'&password=' + $('#password').val()
				 +'&rrn=' + $('#rrn_1').val() + $('#rrn_2').val()
				 +'&year=' + $('#year').val() + $('#month').val() + $('#date').val()
				 +'&gender=' + $('#gender').val()
				 +'&phone=' + $('#phone').val(),
			success: function(){
				alert("회원가입 완료!!");
				location.href='/miniProject/member/login_id';
			},
		   	error: function(err){
		   		console.log(err);
		   	}
		});
	}
});

$("#join").keydown(function(key) {
	   if( key.keyCode == 13 ){
	      $('#nextBtn').trigger('click');
	   }
});