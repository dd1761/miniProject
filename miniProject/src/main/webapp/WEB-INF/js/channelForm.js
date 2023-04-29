$(function(){
    console.log("this is channel.js");

    /* 로그인 했을때*/
    if ($('#user_id').val()){
        var user_id =  $('#user_id').val();
    }
    /* 로그인 이 안되어있을때 디폴트 유저아이디를 0 으로 했음*/
    else {
        var user_id = 0;
    }


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
                console.log(data);

                var videos = data;

                var template = '<div class="video">' +
                    '<img src="" alt="영상 섬네일" style="width: 300px; height: 200px;"/>' +
                    '<div class="video-info">' +
                    '<h2></h2>' +
                    '<p></p>' +
                    '<p></p>' +
                    '</div>' +
                    '</div>';

                $.each(videos, function(index, video) {

                    var uploadDate = new Date(video.upload_date);
                    const year = uploadDate.getFullYear(); // 2021
                    const month = uploadDate.getMonth() + 1; // 11 (JavaScript에서 월은 0부터 시작하므로 1을 더해줌)
                    const day = uploadDate.getDate(); // 30

                    console.log(year + "년 " + month + "월 " + day + "일");
                    var $newVideo = $(template); //새로운 video element 생성

                    // video_id와 channel_id를 이용해 iframe src 설정
                    var src = "/miniProject/storage/"+video.thumnail_url;
                    $newVideo.find("img").attr("src", src);

                    // 제목 설정
                    $newVideo.find("h2").html("<a href='/miniProject/video/main?video_id="+video.video_id+"'>"+video.video_title+"</a>");

                    // 날짜 설정
                    $newVideo.find("p:first").text("조회수 " + video.views + "회 " + year + "년 " + month + "월 " + day + "일");

                    // 설명 설정
                    $newVideo.find("p:last").text(video.video_description);

                    // 페이지에 추가
                    $("#videos-container").append($newVideo);

                   /*--------------------------------채널 동적생성------------------------*/
                    var comments = data.length;
                    const html = `
                            <div id='box-left'>
                              <div class="channel-profile">
                                <!-- null 이면 기본이미지인 p.jpg -->
                                <img src="${data[0].thumnail_url ? '/miniProject/img/p.jpg' : '/miniProject/img/p.jpg'}" alt="Profile Picture">
                              </div>
                            </div>
                            <div id='box-center'>
                              <div class="channel-details">
                                <h1>&nbsp${data[0].channel_name}</h1>
                                <p>&nbsp구독자 ${data[0].subscriber_count}명 동영상 ${comments}개</p>
                                <p>
                                  <a href="#">&nbsp${data[0].channel_description}</a>
                                </p>
                              </div>
                            </div>
                            <div id='box-right'>
                              <div class="subcribe">
                                
                                <button id="${data[0].is_subscribed !=0 ? 'dissubBtn' : 'subBtn'}">
                                  ${data[0].is_subscribed !=0 ? '구독중' : '구독'}
                                </button>

                              </div>
                            </div>
                            <!--히든-->
                            <div id="hiddenDiv" style="display: none;">
                              <input type="hidden" name="channel_id" id="channel_id" value="${data[0].channel_id}">
                            </div>
       
                            `;

                            // #container 안에 HTML 코드 삽입
                    document.getElementById("container").innerHTML = html;

                    /*썸네일 url 동적생성*/
                    var row = `
                                    <img src="${data[0].thumnail_url}" alt="Logo">`;
                    $("#channel-logo").html(row);
                });



            },
            error: function(err){
                console.log(err);
            }
        });
    }

});