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

		alert('엔터키 눌린다.');
	}
});

		$('#searchbtn').trigger('click');
	}
});

$('#searchbtn').click(function(){
	location.href='/miniProject/user/videosearch?videotitle=' + $('#searchVideo').val()
});


//index에서 main/container의 동영상리스트를 동적으로 화면에 뿌리는 작업.
$(function() {
	  $.ajax({
	    type: 'post',
	    url: '/miniProject/user/mainContainerVideo',
	    success: function(data) {
	    	console.log(data);
	      // 데이터 처리 부분
	    	$.each(data, function(index, items){
	    		
	    		
	    		
	    	});

	    },
	    error: function(err) {
	      console.log(err);
	    }
	  });
	});







