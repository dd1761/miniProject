$('#nextBtn').click(function(){
	$('#rrnDiv').empty();
	
	if($('#rrn_2').val() == '') {
		$('#rrnDiv').text('주민번호를 입력하세요.');
		$('#rrnDiv').css('color', 'red');
		$('#rrnDiv').css('font-size', '14px');
		$('#rrnDiv').css('font-weight', 'bold');
		$('input[type="text"]').css('border','2px solid red');
		$('.inputBox1 label').css('color', 'red');
		$('input[type="password"]').css('border','2px solid red');
		$('.inputBox2 label').css('color', 'red');
	    $('#rrn_1').focus();
	}else {
		$.ajax({
			type: 'post',
			url: '/miniProject/member/isExistRrn',
			data: 'rrn=' + $('#rrn_1').val() + $('#rrn_2').val() + '&name=' + $('#name').val(),
			success: function(data){
				if(data == "") {
					$('#rrnDiv').text('주민번호가 존재하지 않습니다.');
					$('#rrnDiv').css('color', 'red');
					$('#rrnDiv').css('font-size', '14px');
					$('#rrnDiv').css('font-weight', 'bold');
					$('input[type="text"]').css('border','2px solid red');
					$('.inputBox1 label').css('color', 'red');
					$('input[type="password"]').css('border','2px solid red');
					$('.inputBox2 label').css('color', 'red');
				    $('#rrn_1').focus();
				}else {
					location.href='/miniProject/member/search_email3?name='+ $('#name').val();
				}
			},
		   	error: function(err){
		   		console.log(err);
		   	}
		});
	}
});