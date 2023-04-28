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
	document.querySelector('#up > input[type="text"]').value = "";
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
	     /* console.log(data);*/
	      // 리스트에 추가할 container 요소를 선택합니다.
	      var listContainer = $('.list-container');

	      // 데이터 처리 부분
	      $.each(data, function(index, items){
		  const timestamp = items.upload_date;
		  const date = new Date(timestamp);

		  const year = date.getFullYear();
		  const month = date.getMonth() + 1;
		  const day = date.getDate();

		  const formattedDate = `${year}년 ${month}월 ${day}일`;

			  console.log(formattedDate); // "2022년 3월 8일"
	        // 새로운 video-list 요소를 생성합니다.
	        var videoList = $('<div>', {class: 'video-list'});
	        // a 요소를 생성합니다.
	        var link = $('<a>', {href: '/miniProject/video/main?video_id=' + items.video_id});
	        // img 요소를 생성합니다.
	        var thumbnail = $('<img>', {class: 'thumbnail', src: items.thumnail_url});
	        // img 요소를 생성합니다.
	        var channelProfile = $('<img>', {src: items.profile_url, id: 'channel'});
	        // div 요소를 생성합니다.
	        var flexDiv = $('<div>', {class: 'flex-div'});
	        // div 요소를 생성합니다.
	        var videoInfo = $('<div>', {class: 'video-info'});
	        // a 요소를 생성합니다.
	        var title = $('<a>', {href: '/miniProject/video/main?video_id=' + items.video_id, text: items.video_title});
	        // p 요소를 생성합니다.
	        var channelName = $('<p>', {text: items.channel_name});
	        // p 요소를 생성합니다.
	        var views = $('<p>', {text: '조회수 ' + items.views + ' • ' + formattedDate});

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

$('#logout').click(function(){
	$.ajax({
		type: 'post',
		url: '/miniProject/member/logout',
		success: function(data){
			alert('로그아웃되었습니다.');
			location.reload();
		},
		error: function(err){
			console.log(err);
		}
	});
});


$(function(){
	$("#logout").wrap('<a href="#"></a>');
});

$(function(){
	$.ajax({
		type: 'post',
		url: '/miniProject/subscribe/subscribelist',
		data: 'user_id=' + $('#user_id').val(),
		success: function(data){
			console.log(data);
			$.each(data, function(index, items){
				let channel = '<a href="/miniProject/channel/main?channel_id=' + items.channel_id + '"><img src="' + items.channel_profile_url + '" id="channel"><p>' + items.channel_name + '</p></a>';
				$('.subscribed-list').append(channel);
			});
		},
		error: function(err){
			console.log(err);
		}
	});
});



/* 구독 버튼 클릭*/
$(document).on('click', '#subBtn', () => {
	/* 로그인 했을때*/
	var channel_id = $('#channel_id').val()

	if ($('#user_id').val()){
		var user_id =  $('#user_id').val();
	}
	/* 로그인 이 안되어있을때 디폴트 유저아이디를 0 으로 했음*/
	else {
		alert("로그인을 해주세요");
		window.location.href = "/miniProject/member/login_id";
		return;
	}
	console.log("userid : "+user_id+"  channelid : "+channel_id);
	console.log("구독 ON");

	$.ajax({
		url: '/miniProject/subscribe/subscribeOn',
		type: 'POST',

		data: { user_id: user_id, channel_id: channel_id },
		success: () => {

			$('#subBtn').prop('id', 'dissubBtn').removeClass('subBtn').text('구독중');
			/*리로드 작동 안함 */
			/*location.href = "/miniProject/channel/main?channel_id="+channel_id;*/
		},
		error: function(err){
			console.log(err);
		}
	});
});

/* 구독 취소 버튼 클릭*/
$(document).on('click', '#dissubBtn', () => {
	var channel_id = $('#channel_id').val();
	var user_id = $('#user_id').val();

	console.log("userid : "+user_id+"  channelid : "+channel_id);
	console.log("구독 Off");
	$.ajax({
		url: '/miniProject/subscribe/subscribeOff',
		type: 'POST',
		data: { user_id: user_id, channel_id: channel_id },
		success: () => {

			$('#dissubBtn').prop('id', 'subBtn').removeClass('dissubBtn').text('구독');

			/*리로드 작동 안함 */
			/*location.href = "/miniProject/channel/main?channel_id="+channel_id;*/
		},
		error: function(err){
			console.log(err);
		}
	});
});

// 내 channel_id를 가지고 와서 mystudio를 들어갈 때 주소값에 넣기 위한 코드
$(function(){
    $.ajax({
        type: 'post',
        url: '/miniProject/channel/myChannel',
        data: 'user_id=' + $('#user_id').val(),
        success: function(data){
            console.log(data);
            console.log('채널 id의 값은 = ' + data.channel_id);
            
            // channel_id 값을 추출하여 동적으로 URL을 생성
            var channelUrl = '/miniProject/channel/youtubestudio?channel_id=' + data.channel_id;
            var mychannel = '/miniProject/channel/main?channel_id=' + data.channel_id;
            
            // 생성한 URL을 이용하여 href 속성 값을 설정
            $('#mystudio > a').attr('href', channelUrl);
            $('#mychannel > a').attr('href', mychannel);
        },
        error: function(err){
            console.log(err);
        }
    });
});

/* 개인정보 */
$('#account-management').click(function(){
	location.href='/miniProject/member/account?user_id=' + $('input[name="user_id"]').val();
});

/*프로필 이미지*/
$(function(){
	$.ajax({
		type: 'post',
        url: '/miniProject/member/getAccount',
        data: 'user_id=' + $('#user_id').val(),
        success: function(data){
			if(data.profile_url == null) {
				$('#user-icon').attr("src", './img/p.jpg');
			}else {
				$('#user-icon').attr("src", './storage/' + data.profile_url);
			}
		},
        error: function(err){
            console.log(err);
        }
	});
});


/* 내 채널을 클릭했을떄*/
$('#mychannel_1').click(function(){
	console.log("내 채널 클릭")

	var user_id =  $('#user_id').val();

	$.ajax({
		type: 'post',
		url: '/miniProject/channel/myChannel',
		data: 'user_id=' + user_id,
		success: function(data){
			/*유저아이디에 해당하는 채널이 있다면 채널이동*/
			if(data.channel_id){
				console.log(data);
				console.log('채널 id의 값은 = ' + data.channel_id);
				// channel_id 값을 추출하여 동적으로 URL을 생성
				var channelUrl = '/miniProject/channel/main?channel_id=' + data.channel_id;
				location.href=channelUrl;
			}
			/*채널이 없다면 */
			else{
				confirm("내 채널이 없습니다.")
			}


		},
		error: function(err){
			console.log(err);
		}
	});



});

