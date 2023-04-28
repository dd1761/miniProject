
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
    
    /*3.히스토리 기록 남기기*/
    if($('#user_id').val()) {
        addHistoryVideo_id(user_id,video_id);
    }
    


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
                        <source src="/miniProject/storage/${video_url}" type="video/mp4">
                    </video>
                    
                    <h3>${video_title}</h3>
                    
                    <div class="play-video-info">
                        <p>조회수 ${views} &bull; ${year}년 ${month}월 ${day}일</p>
                        <br>
                        ${video_description}
                        <div>
                			
                			
                            <img src="${data[0].user_liked_video ? '/miniProject/image/likeOn.png' : '/miniProject/image/like.png'}" id="${data[0].user_liked_video != 0 ? 'likeVideoON' : 'likeVideoBtn'}">${video_like_count}
                			

                        </div>
                    </div>
                    <hr>
                    <div class="plublisher">
                        
                        <a href="/miniProject/channel/main?channel_id=${channel_id}">
                        <!--null 이면 기본이미지-->
                        <img src="${data[0].thumbnail_url ? '/miniProject/img/p.jpg' : '/miniProject/img/p.jpg'}">
                        
                        </a>
                        <div>
                             <a href="/miniProject/channel/main?channel_id=${channel_id}">
                            <p>${channel_name}</p>
                            </a>
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
                                       <img src="${data[i].profile_url ? '/miniProject/storage/' + profile_url : '/miniProject/img/p.jpg'}">
                      
                                      <div>
                                        <h3>${commenter_name} <span>${year}.${month}.${day}</span></h3>
                                        <p>${comment_text}</p>
                                        <div class="acomment-action">
                                          <input type="hidden" class = "comment_id" id="comment_id" value="${comment_id}">
                        				 <img src="${data[i].user_liked_comment ? '/miniProject/image/likeOn.png' : '/miniProject/image/like.png'}" id="${data[i].user_liked_comment != 0 ? 'commentlikedOn' : 'commentlikedOff'}">

                                          <span>${comment_like_count}</span>
                                          <!--댓글 쓴 사림이 본인일때만 보이는 댓글 삭제 -->
                                           <div class="comment_delete_btn" ${data[i].commenter_id == user_id ? '' : 'hidden'} >삭제하기</div>

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

// 비디오 보러 들어왔을 때 비디오 아이디와 유저 아이디의 값을 가지고 좋아요가 있는지 확인하러 가기.
//$(function(){
//	$.ajax({
//		type: 'post',
//		url: '/miniProject/like/getUserLikeInfo',
//		data: {user_id: $('#user_id').val(),
//			   video_id: parseInt($('#video_id').val())
//		},
//		success: function(data){
//			if (data.length > 0) {
//			      // 좋아요 데이터가 있으면
//			      console.log('User liked this video');
//			      $('#likeVideoBtn').attr('id', 'likeVideoON').attr('src', '/miniProject/image/likeOn.png');
//			      
//			    } else {
//			      // 좋아요 데이터가 없으면
//			      console.log('User did not like this video');
//			      $('#likeVideoON').attr('id', 'likeVideoBtn').attr('src', '/miniProject/image/like.png');
//			    }
//		},
//		error: function(err){
//			console.log(err);
//			
//		}
//	});
//});


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
//				$('#likeVideoBtn').attr('id', 'likeVideoON').attr('src', '/miniProject/image/likeOn.png');
				location.reload();
			},
			error: function(err){
				console.log(err);
			}
		});
		
	}
	else {
		alert('로그인해주세요');
		location.href='/miniProject/member/login_id';
	}
});

//좋아요 버튼이 눌려있을 때 좋아요 취소하는 기능
$(document).on('click', '#likeVideoON', () => {
	if($('#user_id').val()) {
		console.log('로그인되어있어요~');
		$.ajax({
			type: 'post',
			url: '/miniProject/like/likeVideoDelete',
			data: {user_id: $('#user_id').val(),
				   video_id: parseInt($('#video_id').val())
			},
			success: function(data){
				console.log(data);
				alert('값이 들어 갔다~');
//				$('#likeVideoON').attr('id', 'likeVideoBtn').attr('src', '/miniProject/image/like.png');
				location.reload();
			},
			error: function(err){
				console.log(err);
			}
		});
		
	}
	else {
		alert('로그인해주세요');
		location.href='/miniProject/member/login_id';
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


//<input type="text" id="comment_id" value="${comment_id}">

$(document).on('click', '#commentlikedOff', function() {
    if ($('#user_id').val()) {
        console.log('로그인되어있어요~');
        const commentId = parseInt($(this).parent().find('#comment_id').val()); // commentId 가져오기
        $.ajax({
            type: 'post',
            url: '/miniProject/like/likeCommentPlus',
            data: { user_id: $('#user_id').val(), comment_id: commentId }, // commentId를 int형으로 변환해서 보내기
            success: function(data) {
                console.log(data);
                alert('값이 들어 갔다~');
//                $('#commentlikedOff').attr('id', 'commentlikedOn').attr('src', '/miniProject/image/likeOn.png');
                location.reload();
            },
            error: function(err) {
                console.log(err);
            }
        });
    } else {
        alert('로그인해주세요');
        location.href = '/miniProject/member/login_id';
    }
});

//좋아요 버튼이 눌려있을 때 좋아요 취소하는 기능
$(document).on('click', '#commentlikedOn', function() {
	if($('#user_id').val()) {
		console.log('로그인되어있어요~');
		const commentId = parseInt($(this).parent().find('#comment_id').val()); // commentId 가져오기
		$.ajax({
			type: 'post',
			url: '/miniProject/like/likeCommentDelete',
			data: { user_id: $('#user_id').val(), comment_id: commentId }, // commentId를 int형으로 변환해서 보내기
			success: function(data){
				console.log(data);
				alert('값이 들어 갔다~');
//				$('#commentlikedOn').attr('id', 'commentlikedOff').attr('src', '/miniProject/image/like.png');
				location.reload();
			},
			error: function(err){
				console.log(err);
			}
		});
		
	}
	else {
		alert('로그인해주세요');
		location.href='/miniProject/member/login_id';
	}
});








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

/*History 에 시청기록을 올리는 함수입니다*/
function addHistoryVideo_id(user_id,video_id){
    /*console.log("히스토리"+user_id);
    console.log("히스토리"+video_id);*/
    $.ajax({
        url: '/miniProject/history/addHistoryVideo_id',
        type: 'post',
        data: {video_id: video_id ,user_id : user_id},
        success: function() {
            console.log('history updated successfully.');
        },
        error: function() {
            console.log('history to update views.');
        }
    });
}

/*자신이 쓴 댓글을 삭제하는 함수입니다. */
$(document).on('click', '.comment_delete_btn', function(e) {
    
    const comment_id = $(this).parent().find('#comment_id').val();
    $.ajax({
        url: '/miniProject/comment/deleteCommentUseByCommentId',
        type: 'post',
        data: {comment_id: comment_id},
        success: function() {
            alert("댓글삭제완료");
            location.reload();
            console.log('history updated successfully.');
        },
        error: function() {
            console.log('history to update views.');
        }
    });
});