$('#nextBtn').click(function(){
	$('#rrnDiv').empty();
	
	if($('#rrn_1').val() == '') {
		$('#rrnDiv').text('주민번호를 입력하세요.');
		$('#rrnDiv').css('color', 'red');
		$('#rrnDiv').css('font-size', '14px');
		$('#rrnDiv').css('font-weight', 'bold');
		$('input[type="text"]').css('border','2px solid red');
		$('.inputBox1 label').css('color', 'red');
	    $('#rrn_1').focus();
	}else if($('#rrn_2').val() == ''){
		$('#rrnDiv').text('주민번호를 입력하세요.');
		$('#rrnDiv').css('color', 'red');
		$('#rrnDiv').css('font-size', '14px');
		$('#rrnDiv').css('font-weight', 'bold');
		$('input[type="password"]').css('border','2px solid red');
		$('.inputBox2 label').css('color', 'red');
	    $('#rrn_2').focus();
	}else {
		$('#join_privacy2_form').submit();
	}
});

$("#join").keydown(function(key) {
	   if( key.keyCode == 13 ){
	      $('#nextBtn').trigger('click');
	   }
});