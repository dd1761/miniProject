
$(function(){
    var user_id= 1;
    var query_string = window.location.search;
// 쿼리 스트링을 파싱하여 객체로 변환합니다.
    var query_params = new URLSearchParams(query_string);
// video_id 파라미터 값을 가져옵니다.
    var video_id = query_params.get("video_id");
    console.log("video_id : "+video_id);
    console.log("user_id : "+user_id);

    getVideoById(user_id, video_id);

    function getVideoById(user_id, video_id) {
        $.ajax({
            type: 'post',
            url: '/miniProject/video/getVideoById',
            dataType: 'json',
            data: { user_id: user_id, video_id: video_id },
            success: function(data) {
                    console.log(JSON.stringify(data));
                    // 동영상 정보 가져오기
                    var comments = data.length;
                    var video = data[0];
                    var video_id = video.video_id;
                    var video_title = video.video_title;
                    var video_description = video.video_description;

                    var upload_date = new Date(video.upload_date);
                    const year = upload_date.getFullYear(); // 년도
                    const month = upload_date.getMonth() + 1; // 월 (0부터 시작하므로 1을 더해줌)
                    const day = upload_date.getDate(); // 일

                    var channel_id = video.channel_id;
                    var video_url = video.video_url;
                    var thumbnail_url = video.thumbnail_url;
                    var views = video.views;
                    var video_like_count = video.video_like_count;
                    var channel_name = video.channel_name;
                    var subscriber_count = video.subscriber_count;

                        /*비디오 동적 생성*/
                    $('#video-detail').html(
                        '<video controls autoplay>' +
                        '<source src="' + video_url + '" type="video/mp4">' +
                        '</video>' +
                        '<h3>' + video_title + '</h3>' +
                        '<div class="play-video-info">' +
                        '<p> 조회수 ' + views + ' &bull; '+ year + '년 '+ month + '월 '+  day + '일 '+'</p>' +
                        '<br>'+ video_description +
                        '<div>' +
                        '<a href=""><img src="/miniProject/image/like.png">' + video_like_count + '</a>' +
                        '<a href=""><img src="/miniProject/image/share.png">공유하기</a>' +
                        '<a href=""><img src="/miniProject/image/save.png">Save</a>' +
                        '</div>' +
                        '</div>' +
                        '<hr>' +
                        '<div class="plublisher">' +
                        '<img src="' + thumbnail_url + '">' +
                        '<div>' +
                        '<p>' + channel_name + '</p>' +
                        '<span>구독자 ' + subscriber_count + '명</span>' +
                        '</div>' +
                        '<button type="button">구독</button>' +
                        '</div>'+
                        '<div class="video-description">\n' +
                        '\t\t<h4>댓글 '+comments+' 개</h4>'

                    );
                        /* 댓글 동적 생성*/

                for (var i = 0; i < data.length; i++) {
                    var comment_id = data[i].comment_id;
                    var comment_text = data[i].comment_text;

                    var comment_date = new Date(data[i].comment_date);
                    const year = upload_date.getFullYear(); // 년도
                    const month = upload_date.getMonth() + 1; // 월 (0부터 시작하므로 1을 더해줌)
                    const day = upload_date.getDate(); // 일

                    var commenter_name = data[i].commenter_name;
                    var profile_url = data[i].profile_url;
                    var comment_like_count = data[i].comment_like_count;

                    var row = `
                                    <div class="old-comment">
                                      <img src= ${profile_url}>
                                      <div>
                                        <h3>${commenter_name} <span>${year}.${month}.${day}</span></h3>
                                        <p>${comment_text}</p>
                                        <div class="acomment-action">
                                          <img src="/miniProject/image/like.png">
                                          <span>${comment_like_count} 좋아요 수</span>
                                        </div>
                                      </div>
                                    </div>`;

                    $("#comment-detail").append(row);
                }






            }
            ,error: function(err){
                console.log(err);
            }
        });
    }

});
