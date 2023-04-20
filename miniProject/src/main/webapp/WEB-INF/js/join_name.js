$('#nextBtn').click(function(){
	$('#nameDiv').empty();
	
	if($('#last_name').val() == ''){
		$('#nameDiv').text('이름을 입력하세요.');
		$('#nameDiv').css('color', 'red');
		$('#nameDiv').css('font-size', '14px');
		$('#nameDiv').css('font-weight', 'bold');
		$('.inputBox2 input[type="text"]').css('border','2px solid red');
		$('.inputBox2 label').css('color', 'red');
	    $('#last_name').focus();
	}else {
		$.ajax({
			type: 'post',
			url: '/miniProject/member/insertName',
			data: $('#join_name_form').serialize(),
			success: function(data){
				
			},
			error: function(err){
		   		console.log(err);
		   	}
		});
	}
	
});