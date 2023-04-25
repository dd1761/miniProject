$(function(){
    console.log("this is channel.js");
    var user_id = 1;
    var query_string = window.location.search;
// 쿼리 스트링을 파싱하여 객체로 변환합니다.
    var query_params = new URLSearchParams(query_string);
// video_id 파라미터 값을 가져옵니다.
    var channel_id = query_params.get("channel_id");
    getChannelForm(user_id,channel_id);

    function getChannelForm(user_id, channel_id) {
        $.ajax({
            type: 'post',
            url: '/miniProject/channel/getChannelForm',
            dataType: 'json',
            data: { user_id: user_id, channel_id: channel_id },
            success: function(data){
                console.log("ajax 시작");
                console.log(JSON.stringify(data));



            },
            error: function(err){
                console.log(err);
            }
        });
    }

});