<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/miniProject/css/channel.css">

	<header>
		<div class="channel-info">
			<div class="channel-logo">
				<img src="/miniProject/img/ytnheader.png" alt="Logo">
			</div>
		</div>

	</header>

	<section>
		<div id='middle'>
			<div id='middle-left'></div>
			<div id='middle-right'>
				<div id='container'>
					<div id='box-left'>
						<div class="channel-profile">
							<img src="/miniProject/img/ytnprofile2.png" alt="Profile Picture">
						</div>
					</div>
					<div id='box-center'>
						<div class="channel-details">
							<h1>&nbspYTN</h1>
							<p>&nbsp구독자 387만명 동영상 66만개</p>
							<p>
								<a href="#">&nbsp24시간 생중계되는 대한민국 대표 뉴스</a>
							</p>
						</div>
					</div>
					<div id='box-right'>
						<div class="subcribe">
							<img src="/miniProject/img/subcribe.png" alt="subcribe">
						</div>
					</div>
				</div>


				<nav>
					<div class="navigation">
						<a href="#" class="current-page">홈</a> <a href="#">동영상</a> <a
							href="#">재생목록</a> <a href="">커뮤니티</a> <a href="#">채널</a> <a
							href="#">정보</a>
						<div class="search-container">
							<input type="text" class="search-input" placeholder="검색">
							<img src="/miniProject/img/search.png" id="search-icon" alt="검색"
								class="search-icon">
						</div>
					</div>
				</nav>

				<div class="video">
					<iframe width="250" height="150"
						src="https://www.youtube.com/embed/9KOiBefBmjA" frameborder="0"
						allow="autoplay; encrypted-media" allowfullscreen></iframe>
					<div class="video-info">
						<h2>[LIVE] 대한민국 24시간 뉴스 채널 YTN</h2>
						<p>YTN v xx명 시청중</p>
						<p>진실을 전하는, 진심을 다하는 24시간 뉴스 채널 YTN YTN 공식채널을 지금 바로 구독하세요. ▶
							YTN 유튜브 채널 구독 http://goo.gl/Ytb5SZ ▶</p>
					</div>
				</div>
				<div class="video">
					<iframe width="250" height="150"
						src="https://www.youtube.com/embed/ZgDx1WUNWwA" frameborder="0"
						allow="autoplay; encrypted-media" allowfullscreen></iframe>
					<div class="video-info">
						<h2>부산서 벌어진 '난투극'…말리키는커녕 '환호'하는 구경꾼 / SBS / 오클릭</h2>
						<p>조회수 46,168회 2023. 4. 11.</p>
						<p> #SBS뉴스 #오클릭 #부산 SNS를 통해 오늘(11일) 하루
							관심사와 누리꾼들의 반응을 알아보는 〈오! 클릭〉 시간입니다. 부산의 한 길거리에서 술에 취한 성인들이 싸움을
							했는데, 주변 시민들이 말리기는커녕 격투경기를 보듯 환호성을 치며 구경해 공분이 일고 있습니다.</p>
					</div>
				</div>

				<div class="video">
					<iframe width="250" height="150"
						src="https://www.youtube.com/embed/TQ00gbNSHMY" frameborder="0"
						allow="autoplay; encrypted-media" allowfullscreen></iframe>
					<div class="video-info">
						<h2>[에디터픽] "3일 내 점령한다".. 중국, 초유의 예행연습 / YTN</h2>
						<p>YTN 186명 시청 중</p>
						<p>1. 中 항공모함 첫 투입…타이완 '3일 점령' 예행연습 (강정규 기자) 2. 타이완 "중국, 역내 평화
							해치려 군사훈련 고의 활용" 3. 백악관 "中 초대로...
						<p>
					</div>
				</div>

				<div class="video">
					<iframe width="250" height="150"
						src="https://www.youtube.com/embed/IitLTETZ5Cg" frameborder="0"
						allow="autoplay; encrypted-media" allowfullscreen></iframe>
					<div class="video-info">
						<h2>와이프한테 들키면 안되는 영상</h2>
						<p>조회수 226,573회 2023. 3. 26.</p>
						<p> #도쿄돔 #아재들 한일전때 즐기지 못한 도쿄돔을 제대로
							만끽하기 위해 다시 뭉친 아재들</p>
					</div>
				</div>

				<div class="video">
					<iframe width="250" height="150"
						src="https://www.youtube.com/embed/IitLTETZ5Cg" frameborder="0"
						allow="autoplay; encrypted-media" allowfullscreen></iframe>
					<div class="video-info">
						<h2>동영상 제목 Something</h2>
						<p>동영상 설명</p>
					</div>
				</div>
			</div>
		</div>

	</section>

	<footer>
		<p>© 2023 My Channel. All rights reserved.</p>
	</footer>



	<script>
		document.getElementById("search-icon").addEventListener(
				"click",
				function() {
					var searchContainer = document
							.getElementById("search-container");
					// 검색창을 보이게 함
					searchContainer.style.display = "block";
				});
	</script>

