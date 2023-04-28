$(function(){
	alert($('#param_board_id').val());
    $.ajax({
        type: 'post',
        url: '/miniProject/user/getBoardView',
        data: 'board_id=' + $('#param_board_id').val(),
        success: function(data){
            console.log(JSON.stringify(data));
            console.log(data);
//            alert($('#param_board_id').val());
            
            $('.profile-img').attr('src', data.channel_profile_url);
            $('.channel_name').text(data.channel_name);
            $('.upload_date').text(data.upload_date);
            $('.content-1-view').text(data.board_text);
            
            $('#board_id').val(data.board_id);
            $('#channel_id').val(data.channel_id);
            
            
            
            
           
        },
        error: function(err){
        	console.log(err);
        }
    });//ajax 1
    $('.show-more-img').click(function() {
                // 현재 클릭한 토글에 대한 드롭다운 메뉴를 토글
                $(this).siblings('.dropdown-menu').toggle();
                
                // 다른 토글들은 닫기
                $('.show-more-img').not(this).siblings('.dropdown-menu').hide();
                
                // 드롭다운 메뉴 클릭 시 이벤트 버블링 중단
                $('.dropdown-menu').on('click', function(event){
                    event.stopPropagation();
                });
            });
    
    $('.deleteBtn').click(function(){
//    	console.log($(this).parent().next().children().val());
    	var boardId = $('#param_board_id').val();
    	var channelId = $('#channel_id').val();
//    	alert(boardId);
        $.ajax({
            type: 'post',
            url: '/miniProject/user/boardDelete',
            data: 'board_id=' + boardId,
            success: function(data){
                alert('삭제되었습니다.'); // 성공 시 알림 메시지
                // 페이지 새로고침
                location.href = '/miniProject/user/boardList?channel_id='+ channelId;
            },
            error: function(err){
                console.log(err);
            }
        });//ajax 2
    });
    
});


            
            