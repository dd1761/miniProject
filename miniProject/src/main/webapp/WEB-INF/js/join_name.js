$('#nextBtn').click(function(){
	$('#nameDiv').empty();
	
	if($('#first_name').val() == ''){
		$('#nameDiv').text('이름을 입력하세요.');
		$('#nameDiv').css('color', 'red');
		$('#nameDiv').css('font-size', '14px');
		$('#nameDiv').css('font-weight', 'bold');
		$('.inputBox2 input[type="text"]').css('border','2px solid red');
		$('.inputBox2 label').css('color', 'red');
	    $('#first_name').focus();
	}else {
		$('#join_name_form').submit();
	}
});

$("#join").keydown(function(key) {
   if( key.keyCode == 13 ){
      $('#nextBtn').trigger('click');
   }
});

