$('#nextBtn').click(function(){
	$('#nameDiv').empty();
	
	if($('#first_name').val() == '') {
		$('#nameDiv').text('이름을 입력하세요.');
		$('#nameDiv').css('color', 'red');
		$('#nameDiv').css('font-size', '14px');
		$('#nameDiv').css('font-weight', 'bold');
		$('.inputBox2 input[type="text"]').css('border','2px solid red');
		$('.inputBox2 label').css('color', 'red');
	    $('#first_name').focus();
	}else {
		$.ajax({
			type: 'post',
			url: '/miniProject/member/searchName',
			data: 'name=' + $('#last_name').val() + $('#first_name').val(),
			success: function(data){
				if(data == "") {
					$('#nameDiv').text('이름이 존재하지 않습니다.');
					$('#nameDiv').css('color', 'red');
					$('#nameDiv').css('font-size', '14px');
					$('#nameDiv').css('font-weight', 'bold');
					$('.inputBox2 input[type="text"]').css('border','2px solid red');
					$('.inputBox2 label').css('color', 'red');
				    $('#first_name').focus();
				}else {
					location.href='/miniProject/member/search_email2?name='+ $('#last_name').val() + $('#first_name').val();
				}
			},
			error: function(err){
		   		console.log(err);
		   	}
		});
	}
});