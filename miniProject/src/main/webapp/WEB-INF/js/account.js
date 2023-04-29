$(function(){
	$.ajax({
		type: 'post',
        url: '/miniProject/member/getAccount',
        data: 'user_id=' + $('#user_id').val(),
        success: function(data){
			 console.log(data);
			 $('#name').val(data.name);
			 $('#year').val(data.year);
			 $('#gender').val(data.gender);
			 $('#password').val(data.password);
			 $('#phone').val(data.phone);
			 $('#email').val(data.email);
			if(data.profile_url == null) {
				$('#profile').attr("src", '/miniProject/img/p.jpg');
			}else {
				$('#profile').attr("src", '/miniProject/storage/' + data.profile_url);
			}
		},
        error: function(err){
            console.log(err);
        }
	});
});

$('#updateBtn').click(function(){
	$('#pwdDiv').empty();
	$('#pwdDiv2').empty();
	$('#nameDiv').empty();
	
	var pwd = $("#password").val();
	const regex = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]).+$/;
	
	if($('#password').val() == '') {
		$('#pwdDiv').text('비밀번호를 입력하세요.');
		$('#pwdDiv').css('color', 'red');
		$('#pwdDiv').css('font-size', '12px');
		$('#pwdDiv').css('font-weight', 'bold');
	}else if($('#repwd').val() == '') {
		$('#pwdDiv2').text('비밀번호(확인)를 입력하세요.');
		$('#pwdDiv2').css('color', 'red');
		$('#pwdDiv2').css('font-size', '12px');
		$('#pwdDiv2').css('font-weight', 'bold');
	}else if($('#repwd').val() != $('#password').val()) {
		$('#pwdDiv2').text('비밀번호(확인)가 일치하지 않습니다.');
		$('#pwdDiv2').css('color', 'red');
		$('#pwdDiv2').css('font-size', '12px');
		$('#pwdDiv2').css('font-weight', 'bold');
	}else if(pwd.length < 8) {
		$('#pwdDiv').text('비밀번호는 8자 이상이어야 합니다.');
		$('#pwdDiv').css('color', 'red');
		$('#pwdDiv').css('font-size', '12px');
		$('#pwdDiv').css('font-weight', 'bold');
	}else if(!regex.test(pwd)) {
		$('#pwdDiv').text('비밀번호는 문자, 숫자, 특수문자를 각각 1개 이상 포함해야 합니다.');
		$('#pwdDiv').css('color', 'red');
		$('#pwdDiv').css('font-size', '12px');
		$('#pwdDiv').css('font-weight', 'bold');
	}else if($('#name').val() == '') {
		$('#nameDiv').text('이름을 입력하세요.');
		$('#nameDiv').css('color', 'red');
		$('#nameDiv').css('font-size', '12px');
		$('#nameDiv').css('font-weight', 'bold');
	}else {	
		var formData = new FormData($('#uploadForm')[0]);
		$.ajax({
			type : 'post',
			url : '/miniProject/member/upload',
			enctype : "multipart/form-data",
			processData : false,
			contentType : false,
			data : formData,
			success : function(data){
				$('#profile').attr("src", '/miniPo/storage/' + data.profile_url);	

				$.ajax({
					type: 'post',
				   	url: '/miniProject/member/updateAccount',
				   	data: 'name=' + $('#name').val()
						 +'&email=' + $('#email').val()
						 +'&password=' + $('#password').val()
						 +'&year=' + $('#year').val()
						 +'&gender=' + $('#gender').val()
						 +'&phone=' + $('#phone').val(),
				   	success: function(){
						alert("회원정보 수정완료!");
						location.reload();
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

$('#deleteBtn').click(function(){
	location.href='/miniProject/member/delete?user_id=' + $('#user_id').val();
});