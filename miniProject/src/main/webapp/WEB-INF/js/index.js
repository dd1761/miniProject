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


document.getElementById("search-icon").addEventListener(
		"click",
		function() {
			var searchContainer = document
					.getElementById("search-container");
			// 검색창을 보이게 함
			searchContainer.style.display = "block";
		});



	
