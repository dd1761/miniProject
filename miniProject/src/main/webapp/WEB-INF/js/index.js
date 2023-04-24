var menuIcon = document.querySelector(".menu-icon");
var sidebar = document.querySelector(".sidebar");
var container= document.querySelector(".container");

menuIcon.onclick = function(){
  sidebar.classList.toggle("small-sidebar");
  container.classList.toggle("large-container");
}

$(document).ready(function() {
  // user-icon 이미지를 클릭했을 때의 동작 정의
	$("#user-icon").click(function() {
			// 메뉴 항목들을 토글(show/hide)하는 동작 구현
			$(".menu-container").toggle();
	});
});


//document.getElementById("search-icon").addEventListener(
//		"click",
//		function() {
//			var searchContainer = document
//					.getElementById("search-container");
//			// 검색창을 보이게 함
//			searchContainer.style.display = "block";
//		});
		
function showButtons() {
     document.getElementById("down").classList.add('show');
   }

   function hideButtons() {
     document.getElementById("down").classList.remove('show');
   }



//엔터키를 눌렀을 때
$("#searchVideo").keydown(function(key) {
	if( key.keyCode == 13 ){
		$('#searchbtn').trigger('click');
	}
});

$('#searchbtn').click(function(){
	location.href='/miniProject/user/videosearch?videotitle=' + $('#searchVideo').val()
});


$(function() {
	  $.ajax({
	    type: 'post',
	    url: '/miniProject/user/mainContainerVideo',
	    success: function(data) {
	      console.log(data);
	      // 리스트에 추가할 container 요소를 선택합니다.
	      var listContainer = $('.list-container');

	      // 데이터 처리 부분
	      $.each(data, function(index, items){
	        // 새로운 video-list 요소를 생성합니다.
	        var videoList = $('<div>', {class: 'video-list'});
	        // a 요소를 생성합니다.
	        var link = $('<a>', {href: items.video_url});
	        // img 요소를 생성합니다.
	        var thumbnail = $('<img>', {class: 'thumbnail', src: items.thumnail_url});
	        // img 요소를 생성합니다.
	        var channelProfile = $('<img>', {src: items.channel_profile_url, id: 'channel'});
	        // div 요소를 생성합니다.
	        var flexDiv = $('<div>', {class: 'flex-div'});
	        // div 요소를 생성합니다.
	        var videoInfo = $('<div>', {class: 'video-info'});
	        // a 요소를 생성합니다.
	        var title = $('<a>', {href: items.video_url, text: items.video_title});
	        // p 요소를 생성합니다.
	        var channelName = $('<p>', {text: items.channel_name});
	        // p 요소를 생성합니다.
	        var views = $('<p>', {text: '조회수 ' + items.views + ' &bull; ' + items.upload_date});

	        // 생성한 요소들을 조합합니다.
	        link.append(thumbnail);
	        flexDiv.append(channelProfile);
	        videoInfo.append(title);
	        videoInfo.append(channelName);
	        videoInfo.append(views);
	        flexDiv.append(videoInfo);
	        videoList.append(link);
	        videoList.append(flexDiv);

	        // 리스트에 새로운 요소를 추가합니다.
	        listContainer.append(videoList);
	      });

	    },
	    error: function(err) {
	      console.log(err);
	    }
	  });
	});







