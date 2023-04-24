$(function(){
	$.ajax({
		type: 'post',
		url: '/miniProject/member/getEmailList',
		data: 'name=' + $('#name').val(),
		success: function(data){
			console.log(data[0].name);
			$.each(data, function(index, items){
				  $('<tr/>').append(
				    $('<td/>', {
				      align: 'center',
				      html: '<a href="/miniProject/member/login_pwd2?email='+items.email+'">' + items.email + '</a>'
				    })
				  ).appendTo($('#emailListTable'));
			});//each
		},
		error: function(err){
	   		console.log(err);
	   	}
	});
});