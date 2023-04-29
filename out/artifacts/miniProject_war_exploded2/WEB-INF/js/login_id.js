$('#nextBtn').click(function(){
	$('#emailDiv').empty();
	
	if($('#email').val() == ''){
		$('#emailDiv').text('이메일을 입력하세요.');
		$('#emailDiv').css('color', 'red');
		$('#emailDiv').css('font-size', '14px');
		$('#emailDiv').css('font-weight', 'bold');
		$('input[type="text"]').css('border','2px solid red');
		$('.inputBox label').css('color', 'red');
	    $('#email').focus();
	}else {
		$.ajax({
			type: 'post',
			url: '/miniProject/member/isExistEmail',
		   	data: 'email='+$('#email').val(), 
		   	success: function(data){
				if(data == "") {
					$('#emailDiv').text('존재하지 않는 이메일 입니다.');
					$('#emailDiv').css('color', 'red');
					$('#emailDiv').css('font-size', '14px');
					$('#emailDiv').css('font-weight', 'bold');
					$('input[type="text"]').css('border','2px solid red');
					$('.inputBox label').css('color', 'red');
				    $('#email').focus();
				}else {
					location.href='/miniProject/member/login_pwd?email='+$('#email').val();
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



