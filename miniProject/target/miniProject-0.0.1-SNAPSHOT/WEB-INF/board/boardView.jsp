<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>YouTube-clone</title>
  <link rel="stylesheet" href="../css/boardViewStyle.css">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap" rel="stylesheet">
  <script src="/src/main.js" defer></script>
  <script src="https://kit.fontawesome.com/5a08c7fbff.js" crossorigin="anonymous"></script>
</head>

<body>
  <!-- Header -->
  <header>
    <div class="logo">
      <i class="fab fa-youtube"></i>
      <span class="title">YouTube</span>
    </div>
    <div class="icons">
      <i class="fas fa-search"></i>
      <i class="fas fa-ellipsis-v"></i>
    </div>
  </header>

  <!--video player-->
  <section class="video-player">
    <video controls src="/video/christmasVideo.mp4"></video>
  </section>

  <div class="infoAndUpNext">


    <!--video discription-->
    <section class="video-discription">
      <div class="info">
        <ul class="hashtags">
          <li>#크리스마스 영상</li>
          <li>#Christmas</li>
          <li>#산타할아버지</li>
          <li>#Merry Christmas</li>
        </ul>
        <div class="titleAndBtn">
          <span class="title clamp">🎄 The Christmas Times 🎄 : 크리스마스 기념 영상 | 크리스마스에 보기 좋은 영상 | 크리스마스 영상 | 산타할아버지 근황 |
            NewYork
            Times 말고 The Christmas Times | 아이들과 함께 보면 좋은 영상 | 내년에는 코로나 없는 크리스마스를 기대하며🙏</span>
          <button class="moreBtn">
            <i class="fas fa-caret-down"></i>
          </button>
        </div>
        <span class="views">조회수 2,479,070회 | 1 month ago</span>
      </div>
      <ul class="action">
        <li>
          <button>
            <i class="fas fa-thumbs-up"></i>
            <span class="upCount">257</span>
          </button>
        </li>
        <li>
          <button>
            <i class="fas fa-thumbs-down"></i>
            <span class="downCount">13</span>
          </button>
        </li>
        <li>
          <button>
            <i class="fas fa-share"></i>
            <span class="shareText">공유</span>
          </button>
        </li>
        <li>
          <button>
            <i class="fas fa-plus"></i>
            <span class="saveText">저장</span>
          </button>
        </li>
        <li>
          <button>
            <i class="fas fa-flag"></i>
            <span class="reportText">신고</span>
          </button>
        </li>
      </ul>
      <div class="channel">
        <div class="metadata">
          <img src="/img/이모지.png" alt="profileImg" class="profileImg">
          <div class="profile">
            <span class="name">mimi</span>
            <span class="subscribers">1M subscribe</span>
          </div>
        </div>
        <button class="subscribe">Subscribe</button>
      </div>
    </section>

    <!--Up Next-->
    <section class="upNext">
      <span class="title">Up next</span>
      <ul>
        <li class="item">
          <div class="img">
            <img src="/img/1.jpg" alt="Deer photo">
          </div>
          <div class="info">
            <span class="title">
              Deer's routine | 사슴의 하루 일과를 촬영한 동영상 | 크리스마스 하루만 일하는 루돌프의 364일 영상
            </span>
            <span class="side-author">dongdong이5빠</span>
            <span class="side-views">57K views</span>
          </div>
          <button class="moreBtn">
            <i class="fas fa-ellipsis-v"></i>
          </button>
        </li>
        <li class="item">
          <div class="img">
            <img src="/img/2.jpg" alt="Deer photo">
          </div>
          <div class="info">
            <span class="title">
              Girl and horse | 소녀와 말의 교감 순간 포착 영상 | 콧구멍 만지지 마 | 애마의 머릿결 관리하는 꿀팁💛
            </span>
            <span class="side-author">Messi드포테이토</span>
            <span class="side-views">15K views</span>
          </div>
          <button class="moreBtn">
            <i class="fas fa-ellipsis-v"></i>
          </button>
        </li>
        <li class="item">
          <div class="img">
            <img src="/img/3.jpg" alt="Deer photo">
          </div>
          <div class="info">
            <span class="title">
              [귀염뽀작 심장조심] Snow-loving puppy | 토마스는 눈을 좋아해요 | 눈오면 집 나가는 우리집 강아지 | 목욕은 셀프
            </span>
            <span class="side-author">Tomas는 토마스</span>
            <span class="side-views">81K views</span>
          </div>
          <button class="moreBtn">
            <i class="fas fa-ellipsis-v"></i>
          </button>
        </li>
      </ul>
    </section>
  </div>
</body>

</html>