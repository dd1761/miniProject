$(function(){
  const params = new URLSearchParams(window.location.search);
  const videotitle = params.get('videotitle');
  console.log(videotitle);
  $.ajax({
    type: 'post',
    url: '/miniProject/user/searchVideo',
    data: 'videotitle=' + videotitle,
    success: function(data){
      console.log(data);
      $.each(data, function(index, items){
        // video container
        var $videoContainer = $('<div>').addClass('VideoContainer');
        var $videoLink = $('<a>').attr('href', '/miniProject/video/main?video_id=' + items.video_id);
        $videoLink.append($videoContainer);

        // thumnail
        var $thumnail = $('<img>').attr('src', '/miniProject/storage/'+ items.thumnail_url).attr('alt', 'video thumnail');
        $videoContainer.append($thumnail);

        // text wrapper
        var $textWrapper = $('<div>').addClass('text-wrapper');

        // video title
        var $videoTitle = $('<div>').addClass('video_title').text(items.video_title);
        $textWrapper.append($videoTitle);

        // upload date
        var uploadDate = new Date(items.upload_date);
        if (uploadDate.toString() === 'Invalid Date') {
          // 날짜 값이 유효하지 않은 경우, 기본값을 설정합니다.
          uploadDate = new Date();
        }
        var $uploadDate = $('<div>').addClass('upload_date').text(uploadDate.getFullYear() + '년 ' + (uploadDate.getMonth()+1) + '월 ' + uploadDate.getDate() + '일');
        $textWrapper.append($uploadDate);


        // channel info
        var $channelInfo = $('<div>').addClass('channel_info');
        var $channelImg = $('<img>')
                .attr('src', '/miniProject/storage/'+ items.profile_url)
                .attr('alt', 'channel profile image')
                .addClass('user-icon')
                .css({
                  'width': '35px',
                  'height': '35px',
                  'border-radius': '50%',
                  'margin-right': '0',
                  'cursor': 'pointer' // 추가: 마우스 커서를 포인터로 변경
                })
                .on('click', function() {
                  window.location.href = '/miniProject/channel/main?channel_id=' + items.channel_id;
                });

        var $channelName = $('<a>').attr('href', items.channel_profile_url).text(items.channel_name);
        $channelInfo.append($channelImg).append($channelName);
        $textWrapper.append($channelInfo);

        // video description
        var $videoDescription = $('<div>').addClass('video_description').text(items.video_description);
        $textWrapper.append($videoDescription);

        // append text wrapper to video container
        $videoContainer.append($textWrapper);

        // append video link to searchVideoContainer
        $('.searchVideoConatiner').append($videoLink);
        
        
        
      });
    },
    error: function(err){
      console.log(err);
    }
  });
});
