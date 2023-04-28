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

        // thumbnail
        var $thumbnail = $('<img>').attr('src', items.thumbnail_url).attr('alt', 'video thumbnail');
        $videoContainer.append($thumbnail);

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
        var $uploadDate = $('<div>').addClass('upload_date').text(uploadDate.toLocaleDateString('ko-KR', { year: 'numeric', month: '2-digit', day: '2-digit' }).replace(/\./g, ''));
        $textWrapper.append($uploadDate);

        // channel name
        var $channelName = $('<div>').addClass('channel_name');
        var $channelProfileUrl = $('<a>').attr('href', items.channel_profile_url).text(items.channel_name);
        $channelName.append($channelProfileUrl);
        $textWrapper.append($channelName);

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
