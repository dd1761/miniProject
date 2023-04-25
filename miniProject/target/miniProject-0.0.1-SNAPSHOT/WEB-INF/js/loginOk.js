$(function(){
	$.ajax({
		type: 'post',
		url: '/miniProject/member/loginOk',
		data: { user_id: $('input[name="user_id"]').val() },
		success: function(data){
			console.log(data);
		},
		error: function(err){
			console.log(err);
		}
	});
});
