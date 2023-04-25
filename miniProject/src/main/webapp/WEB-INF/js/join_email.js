$('#nextBtn').click(function(){
	$('#emailDiv').empty();
	
	var email_rule =  /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	var mail =$("#email").val();
	
	if($('#email').val() == '') {
		$('#emailDiv').text('이메일을 입력하세요.');
		$('#emailDiv').css('color', 'red');
		$('#emailDiv').css('font-size', '14px');
		$('#emailDiv').css('font-weight', 'bold');
		$('.inputBox input[type="email"]').css('border','2px solid red');
		$('.inputBox label').css('color', 'red');
	    $('#email').focus();
	}else if(!email_rule.test(mail)){
		$('#emailDiv').text('이메일 형식에 맞게 입력하세요.');
		$('#emailDiv').css('color', 'red');
		$('#emailDiv').css('font-size', '14px');
		$('#emailDiv').css('font-weight', 'bold');
		$('.inputBox input[type="email"]').css('border','2px solid red');
		$('.inputBox label').css('color', 'red');
	    $('#email').focus();
	}else {
		$.ajax({
			type: 'post',
			url: '/miniProject/member/isExistEmail',
		   	data: 'email='+$('#email').val(),
		   	success: function(data){
				if(data != "") {
					$('#emailDiv').text('이미 존재하는 이메일 입니다');
					$('#emailDiv').css('color', 'red');
					$('#emailDiv').css('font-size', '14px');
					$('#emailDiv').css('font-weight', 'bold');
					$('.inputBox input[type="email"]').css('border','2px solid red');
					$('.inputBox label').css('color', 'red');
				    $('#email').focus();
				}else {
					$('#join_email_form').submit();
				}
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