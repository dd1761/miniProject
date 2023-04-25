$('#nextBtn').click(function(){
	$.ajax({
		type: 'post',
		url: '/miniProject/member/isExistPwd2',
	   	data: 'email=' + $('#email').text(),
	   	success: function(data){
			location.href='/miniProject/';
		},
	   	error: function(err){
	   		console.log(err);
	   	}
	});
});

$('.pwd').click(function(){
	location.href='/miniProject/member/search_pwd3?email='+$('#email').text();
});