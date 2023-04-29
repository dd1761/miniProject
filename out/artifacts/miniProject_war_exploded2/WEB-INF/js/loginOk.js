$(function(){
    $.ajax({
        type: 'post',
        url: '/miniProject/member/loginOk',
        data: { user_id: $('input[name="user_id"]').val() },
        success: function(data){
            // 받아온 데이터를 이용해 메뉴 동적 생성
            console.log(data);
            
            $('#noti').after('<img src="/miniProject/storage/' + data.profile_url + '" id="user-icon" class="user-icon">');
            $('#user-img').append('<img src="/miniProject/storage/' + data.profile_url + '" class="user-icon">');

            // 유저 정보 추가
            $('#user-name').append(data.name);
            $('#user-email').append(data.email);

            // 채널 링크
            $("#mychannel").wrap('<a href="/miniProject/channel/main"></a>');
            
            

        },
        error: function(err){
            console.log(err);
        }
    });
});

$(document).on('click', '#user-icon', function() {
    // 메뉴가 이미 생성되었는지 확인
    if ($('#menu-container').length) {
        $('#menu-container').toggle();
    } else {
        // 메뉴 생성
        var menuContainer = $('<div>', {class: 'menu-container', id: 'menu-container'});
        var menu = $('<ul>', {class: 'menu'});
        
        // nav-header 생성
        var navHeader = $('<div>', {id: 'nav-header'});
        var userImg = $('#user-img').clone();
        var userDetails = $('#user-details').clone();
        
        userDetails.append($('<div>', {id: 'account-management-container'}).append($('<a>', {id: 'account-management', href: '#'}).text('Google 계정 관리')));
        navHeader.append(userImg, userDetails);
        
        // nav-main 생성
        var navMain = $('<div>', {id: 'nav-main'});
        var navTop = $('<div>', {id: 'nav-top'});
        navTop.append($('<li>', {id: 'mychannel_1'}).append($('<img>', {src: '/miniProject/image/mychannel.png'}), '내 채널'));
        navTop.append($('<li>', {id: 'mystudio'}).append($('<img>', {src: '/miniProject/image/youtube-studio.png'}), $('<a>', {href: '/miniProject/channel/youtubestudio'}).text('유튜브 스튜디오')));
        navTop.append($('<li>', {id: 'logout'}).append($('<img>', {src: '/miniProject/image/logout.png'}), $('<a>', {href: '#'}).text('로그아웃')));
        var navBottom = $('<div>', {id: 'nav-bottom'});
        navMain.append(navTop, navBottom);
        
        menu.append(navHeader, navMain);
        menuContainer.append(menu);
        $('body').append(menuContainer);
    }
});


