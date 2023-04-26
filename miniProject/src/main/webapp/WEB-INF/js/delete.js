$('#nextBtn').click(function(){
	$('#pwdDiv').empty();
	
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
	}else {
		$.ajax({
			type: 'post',
			url: '/miniProject/member/getDeleteMember',
			data: 'password=' + $('#password').val() +'&user_id=' + $('#user_id').val(),
			success: function(data){
				console.log(JSON.stringify(data));
				
				if(data == '') {
					$('#pwdDiv').text('삭제하려는 Email의 비밀번호가 존재하지 않습니다.');
					$('#pwdDiv').css('color', 'red');
					$('#pwdDiv').css('font-size', '14px');
					$('#pwdDiv').css('font-weight', 'bold');
					$('input[type="password"]').css('border','2px solid red');
					$('.inputBox1 label').css('color', 'red');
					$('.inputBox2 label').css('color', 'red');
				    $('#password').focus();
				}else {
					if(confirm('정말 탈퇴하시겠습니까?')) {
						$.ajax({
							type: 'post',
							url: '/miniProject/member/DeleteMember',
							data: 'user_id=' + $('#user_id').val(),
							success: function(){
								alert('그동안 이용해주셔서 감사합니다');
								location.href='/miniProject/member/logout2';	
							},
							error: function(err){
			                       console.log(err);
			                }  
						});
					}
				}
			},
			error: function(err){
                console.log(err);
			}  
		});
	}
});