
$(function(){

	if($('#user_id').val()) {
		var user_id= $('#user_id').val();
	}
	else {
		var user_id = 0;
	}


    var query_string = window.location.search;
// 쿼리 스트링을 파싱하여 객체로 변환합니다.
    var query_params = new URLSearchParams(query_string);
// video_id 파라미터 값을 가져옵니다.
    var video_id = query_params.get("video_id");
    console.log("video_id : "+video_id);
    console.log("user_id : "+user_id);

    /*1.동적생성*/
    getVideoById(user_id, video_id);

    /*2.조회수 + 1 */
    addVideoView(video_id);


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

                $('#play-video').html(`
                    <video controls autoplay width="1000" height="600">
                        <source src="/miniProject/videoFileUseByVideoId/${video_id}.mp4" type="video/mp4">
                    </video>
                    
                    <h3>${video_title}</h3>
                    
                    <div class="play-video-info">
                        <p>조회수 ${views} &bull; ${year}년 ${month}월 ${day}일</p>
                        <br>
                        ${video_description}
                        <div>

                            <img id="likeVideoBtn" src="/miniProject/image/like.png">${video_like_count}


                        </div>
                    </div>
                    <hr>
                    <div class="plublisher">
                        
                        <a href="/miniProject/channel/main?channel_id=${channel_id}">
                        <!--null 이면 기본이미지-->
                        <img src="${data[0].thumbnail_url ? '/miniProject/img/p.jpg' : '/miniProject/img/p.jpg'}">
                        
                        </a>
                        <div>
                            <p>${channel_name}</p>
                            <span>구독자 ${subscriber_count}명</span>
                        </div>
                        <!--히든-->
                        <div id="hiddenDiv" style="display: none;">
                          <input type="hidden" name="channel_id" id="channel_id" value="${data[0].channel_id}">
                        </div>
                         <div id="hiddenDiv" style="display: none;">
                          <input type="hidden" name="video_id" id="video_id" value="${data[0].video_id}">
                        </div>
                        <button id="${data[0].is_subscribed !=0 ? 'dissubBtn' : 'subBtn'}">
                                  ${data[0].is_subscribed !=0 ? '구독중' : '구독'}
                        </button>
                        
                    </div>
                    <div class="video-description">
                        <hr>
                        <!--댓글이 0 개 면 댓글 0 출력 아니면 숫자출력-->
                        <h4>댓글 ${data[0].comment_text ? comments : '0'} 개</h4>
                        
                            <!--댓글시작-->
                           <div id="comment">
                              <div id="img">
                                 <!--null 이면 기본이미지-->
                                 <img src="${data[0].user_profile_url ? '/miniProject/img/p.jpg' : '/miniProject/img/p.jpg'}">
                              </div>
                              <div id="addcomment">
                                 <div id="up">
                                    <input type="text" placeholder="댓글 추가..."
                                       onclick="showButtons()">
                                 </div>
                                 <div id="down">
                                    <div id="down-left"></div>
                                    <div id="down-center"></div>
                                    <div id="down-right">
                                       <div id="commentBtn">
                                          <button id="cancel" onclick="hideButtons()">취소</button>
                                          <button id="uploadcomment" onclick="commentSubmit()">댓글</button>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>      
                           <!--댓글은 끝-->            
                    </div>
                `);

                /* 댓글 동적 생성 단 댓글이 0개일때는 생성 x */
                if (data[0].comment_text){

                    for (var i = 0; i < data.length; i++) {
                        var comment_id = data[i].comment_id;
                        var comment_text = data[i].comment_text;

                        var comment_date = new Date(data[i].comment_date);
                        const year = comment_date.getFullYear(); // 년도
                        const month = comment_date.getMonth() + 1; // 월 (0부터 시작하므로 1을 더해줌)
                        const day = comment_date.getDate(); // 일

                        var commenter_name = data[i].commenter_name;
                        var profile_url = data[i].profile_url;
                        var comment_like_count = data[i].comment_like_count;
                        

                        var row = `
                                    <div class="old-comment">
                                       <img src="${data[i].profile_url ? '/miniProject/img/p.jpg' : '/miniProject/img/p.jpg'}">
                      
                                      <div>
                                        <h3>${commenter_name} <span>${year}.${month}.${day}</span></h3>
                                        <p>${comment_text}</p>
                                        <div class="acomment-action">
                                          <input type="hidden" id="comment_id" value="${comment_id}">
                        				  
                                          <img src="/miniProject/image/like.png" id="likeCommentBtn">
                                          <span>${comment_like_count} 좋아요 수</span>
                                        </div>
                                      </div>
                                    </div>`;

                        $("#play-video").append(row);
                    }
                }


            }
            ,error: function(err){
                console.log(err);
            }
        });
    }

});


$(document).on('click', '#likeVideoBtn', () => {
	if($('#user_id').val()) {
		console.log('로그인되어있어요~');
		$.ajax({
			type: 'post',
			url: '/miniProject/like/likeVideoPlus',
			data: {user_id: $('#user_id').val(),
				   video_id: parseInt($('#video_id').val())
			},
			success: function(data){
				console.log(data);
				alert('값이 들어 갔다~');
			},
			error: function(err){
				console.log(err);
			}
		});
		
	}
	else {
		console.log('로그인해주세요');
	}
});


/*댓글 작성했을시 실행되는 함수입니다.*/
function commentSubmit() {
    // input 요소에서 댓글 내용을 가져옵니다.
    const commentInput = document.querySelector('#up > input[type="text"]');
    const comment = commentInput.value;
    const encodedComment = encodeURIComponent(comment);
    var video_id = $('#video_id').val();

    if ($('#user_id').val()){
        var user_id =  $('#user_id').val();
    }
    else{
        alert("로그인을 해주세요");
        window.location.href = "/miniProject/member/login_id";
        return;
    }

    // AJAX 요청을 보냅니다.
    $.ajax({
        type: "POST",
        url: "/miniProject/comment/commentSubmit",
        contentType: 'application/json',
        data: JSON.stringify({
            user_id: user_id,
            video_id: video_id,
            comment: encodedComment
        }),
        success: function() {
            console.log("ajax 시작");
            alert("댓글이 성공적으로 저장되었습니다.");
            location.reload();
        },
        error: function(jqXHR, textStatus, errorThrown) {
            console.log(jqXHR);
            console.log(textStatus);
            console.log(errorThrown);
            alert("댓글 저장에 실패했습니다. 다시 시도해주세요.");
        }
    });
}


/*조회수를 올리는 함수입니다*/
function addVideoView(video_id){
    console.log(video_id);
    $.ajax({
        url: '/miniProject/video/addVideoView',
        type: 'post',
        data: {video_id: video_id },
        success: function(result) {
            console.log('Views updated successfully.');
        },
        error: function(xhr, status, error) {
            console.log('Failed to update views.');
        }
    });
}