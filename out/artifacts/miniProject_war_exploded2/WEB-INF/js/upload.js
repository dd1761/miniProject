	$('#camera').click(function() {
			//강제 이벤트 발생
			$('#img').trigger('click');
		});

		// 업로드 버튼을 누르기 전에 카메라 아이콘을 통해서 선택한 이미지가 맞는지 확인하기 위해서 이미지를 보이게 한다
		$('#img').change(function() {
			readURL(this);
		});



		function readURL(input) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#showImg').attr('src', e.target.result); //e.target - 이벤트가 발생하는 요소를 반환해준다.
			}

			reader.readAsDataURL(input.files[0]);
		}

		//=======================================================================

		$('#camera2').click(function() {
			//강제 이벤트 발생
			$('#img2').trigger('click');
		});

		// 업로드 버튼을 누르기 전에 카메라 아이콘을 통해서 선택한 이미지가 맞는지 확인하기 위해서 이미지를 보이게 한다 -->
		$('#img2').change(function() {
			read2URL(this);

		});



		function read2URL(input) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#showImg2').attr('src', e.target.result); //e.target - 이벤트가 발생하는 요소를 반환해준다.
			}

			reader.readAsDataURL(input.files[0]);
		}






$(document).ready(function() {
    // URL에서 channel_id 값 가져오기
    const urlParams = new URLSearchParams(window.location.search);
    const channelId = urlParams.get('channel_id');
  
    // input 요소에 channelId 값 설정하기
    $('input[name="channel_id"]').val(channelId);
  
    // 이하 생략
  });




$('#uploadForm').submit(function(event) {
  event.preventDefault(); // 폼 제출 방지
  
  const videoTitle = document.querySelector('input[name="video_title"]');
  const videoUrl = document.querySelector('input[name="inputvideo_url"]');
  const thumbnailUrl = document.querySelector('input[name="inputimage_url"]');
    
  if (!videoTitle.value || !videoUrl.value || !thumbnailUrl.value) {
      alert('영상과 썸네일을 모두 등록해주세요');
      return false;
  }
  
  // 로딩 화면 보이기
  const loadingOverlay = document.createElement('div');
  loadingOverlay.style.position = 'fixed';
  loadingOverlay.style.top = '0';
  loadingOverlay.style.left = '0';
  loadingOverlay.style.width = '100%';
  loadingOverlay.style.height = '100%';
  loadingOverlay.style.backgroundColor = 'rgba(0, 0, 0, 0.5)';
  loadingOverlay.style.display = 'flex';
  loadingOverlay.style.alignItems = 'center';
  loadingOverlay.style.justifyContent = 'center';
  loadingOverlay.innerHTML = '<p style="color: #fff; font-size: 24px;">업로드 중입니다...</p>';
  document.body.appendChild(loadingOverlay);
  
  setTimeout(function() {
    var formData = new FormData(this);
    
    $.ajax({
        type: 'post',
        url: '/miniProject/user/upload',
        enctype: 'multipart/form-data',
        processData: false,
        contentType: false,
    
        data: formData,
        success: function(data){           
            alert(data)
            window.close();
        },
        error: function(err){
            console.log(err);
        }
    });
  }.bind(this), 2000);
});





