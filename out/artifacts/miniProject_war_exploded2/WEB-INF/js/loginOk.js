$(function(){
    $.ajax({
        type: 'post',
        url: '/miniProject/member/loginOk',
        data: { user_id: $('input[name="user_id"]').val() },
        success: function(data){
            // 받아온 데이터를 이용해 메뉴 동적 생성
            console.log(data);
            
            $('#noti').after('<img src="' + data.profile_url + '"id="user-icon" class="user-icon">');
            $('#user-img').append('<img src="' + data.profile_url + 'class="user-icon">');
            $('#user-name').append(data.name);
            $('#user-email').append(data.email);
            $("#mychannel").wrap('<a href="/miniProject/channel/main"></a>');
            

        },
        error: function(err){
            console.log(err);
        }
    });
});

