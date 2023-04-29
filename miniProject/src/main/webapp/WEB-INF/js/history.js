const searchInput = document.getElementById('search-input');

searchInput.addEventListener('keypress', function(event) {
  if (event.key === 'Enter') {
    console.log("enter입력");

    const query = searchInput.value;
    window.location.href = `/miniProject/history/main?query=${query}`;
  }

});

$(function(){
    /* 로그인 했을때*/
    if ($('#user_id').val()){
        var user_id =  $('#user_id').val();
    }
    /* 로그인을 안했을때는 로그인창으로 이동*/
    else {
        alert("로그인을 해주세요");
        window.location.href = "/miniProject/member/login_id";
        return;
    }

    var currentPage = 1;
    var itemsPerPage = 10;

    getVideoHistory(currentPage, itemsPerPage,user_id);
    console.log(user_id);

    function getVideoHistory(page, count,user_id) {
        $.ajax({
            type: 'post',
            url: '/miniProject/history/getVideoHistory',
            dataType: 'json',
            data: { page: page, count: count ,user_id : user_id},
            success: function(data){

                var historyTable = $("#historyTable_tbody");
                historyTable.empty(); // 기존의 테이블 내용을 지움

                // 날짜별로 그룹핑
                var videoHistoryByDate = data.reduce(function(acc, cur) {
                    var watchDate = cur.watch_date;
                    var date = new Date(watchDate[0], watchDate[1] - 1, watchDate[2], watchDate[3], watchDate[4]);
                    var dateString = date.toDateString();
                    if (!acc[dateString]) {
                        acc[dateString] = [];
                    }
                    acc[dateString].push(cur);
                    return acc;
                }, {});

                // 받아온 JSON 데이터를 이용하여 테이블을 구성
                for (var watchDate in videoHistoryByDate) {

                    // 수정된 코드
                    var date = new Date(watchDate);
                    var month = date.getMonth() + 1;
                    var day = date.getDate();
                    /*테스트 코드 종료*/
                    console.log(day);

                    // 상위 테이블 생성
                    var header = '<tr><th>' + month +'월 '+day+'일'+'</th></tr>';
                    historyTable.append(header);

                    // 하위 테이블 생성
                    var videos = videoHistoryByDate[watchDate];
                    for (var i = 0; i < videos.length; i++) {

                        var channel_name = videos[i].channel_name;
                        var channel_profile_url = videos[i].channel_profile_url;
                        var video_title = videos[i].video_title;
                        var video_description = videos[i].video_description;
                        var upload_date = videos[i].upload_date;
                        var channel_id = videos[i].channel_id;
                        var video_url = videos[i].video_url;
                        var thumnail_url = videos[i].thumnail_url;
                        var views = videos[i].views;
                        var watch_date = videos[i].watch_date;
                        var video_id = videos[i].video_id;
                        console.log(thumnail_url)
                        // 썸네일 클릭 시 실행될 함수


// 동적 생성된 html 코드
                        var row = '<tr>';
                        row += '<td>';
                        row += '<div class="thumbnail-container thumbnail-container_' + i+ '">';
                        row += '<div class="close-button"></div>';
                        row += '<div class="thumbnail">';
                        row += `<img src="/miniProject/storage/${thumnail_url}" alt="영상 섬네일" />`;
                        row += '<div class="play-button"></div>';
                        row += '</div> ';
                        row += '<div class="info">';
                        row += '<h3 class="title">' + video_title + '</h3>';
                        row += '<p class="creator">'+ channel_name +' • 조회수 ' + views + '회</p>';
                        row += '<p class="description">' + video_description + '</p>';
                        row += '<div id="hiddenDiv" style="display: none;">' +
                       /* row += '<div id="hiddenDiv">' +
*/                            ' <input type="text" name="video_id" class="video_id" value="'+video_id+'">' +
                            ' </div>'
                        row += '</div>';
                        row += '</div>';
                        row += '</td>';
                        row += '</tr>';

                        historyTable.append(row); // 테이블에 추가
                            
                        /* 썸내일 클릭하면 비디오로 넘어가짐*/
                        $('.thumbnail-container_' + i).click(function(event){

                            console.log($(this).find(".video_id").val());
                            location.href='/miniProject/video/main?video_id='+$(this).find(".video_id").val();

                        })

                        /*  X 버튼 클릭하면 비디오기록 삭제 넘어가짐*/
                        $('.thumbnail-container_'+i+' .close-button').click (function(event) {
                            event.stopPropagation()
                            console.log("자식")
                            var video_id = $(this).next().next().find(".video_id").val();
                            console.log($(this).next().next().find(".video_id").val());
                            console.log(user_id);
                            $.ajax({
                                url: '/miniProject/history/deleteHistory',
                                type: 'post',
                                data: {video_id: video_id ,user_id :user_id },
                                success: function(result) {
                                    console.log('deleteHistory successfully.');
                                    location.reload();
                                },
                                error: function(xhr, status, error) {
                                    console.log('Failed to deleteHistory.');
                                }
                            });


                        });
                        // 이벤트 핸들러 등록

                    }// for i
                }// for
            },
            error: function(err){
                console.log(err);
            }
        });
    }

});

$(".deleteAllHistory").on("click", function() {
    var user_id =  $('#user_id').val();

    console.log(user_id);

    $.ajax({
        url: '/miniProject/history/deleteAllHistory',
        type: 'post',
        data: {user_id : user_id},
        success: function() {
            console.log('history updated successfully.');
            location.reload();
        },
        error: function() {
            console.log('history to update views.');
        }
    });


});