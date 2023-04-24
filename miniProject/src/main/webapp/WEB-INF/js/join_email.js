$('#nextBtn').click(function(){
	$('#emailDiv').empty();
	
	if($('#email').val() == '') {
		$('#emailDiv').text('이메일을 입력하세요.');
		$('#emailDiv').css('color', 'red');
		$('#emailDiv').css('font-size', '14px');
		$('#emailDiv').css('font-weight', 'bold');
		$('.inputBox input[type="text"]').css('border','2px solid red');
		$('.inputBox label').css('color', 'red');
	    $('#email').focus();
	}else {
		location.href='/miniProject/member/join_email2?email='+$('#email').val();
	}
});