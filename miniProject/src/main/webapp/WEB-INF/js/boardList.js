$(function(){
//	alert("시작 " + $('#user_id').val());
//	alert($('#channel_id').val());
	if($('#user_id').val()!='') {
		$.ajax({
			type: 'post',
			url: '/miniProject/user/channelUser_id',
			data: 'user_id=' + $('#user_id').val(),
			success: function(data){
	//			alert("시작2");
	//			console.log(data);
				console.log(data.channel_id);

	            if($('#channel_id').val()==data.channel_id) {
	            	$('.write').css('display', 'block');
	            	$('.profile-img').attr('src', data.profile_url);
	            	$('.subject').text(data.channel_name);
	            }
			},
			error: function(err){
				console.log(err);
			}
		});
	}
    $.ajax({
        type: 'post',
        url: '/miniProject/user/getBoardList',
        data: 'channel_id=' + $('#channel_id').val(),
        success: function(data){
            console.log(JSON.stringify(data));
            console.log(data);
            
            $('.profile-img').attr('src', '/miniProject/storage/' + data.profile_url);
            
            
            var comments = data.length;
            const html = `
                    <div id='box-left'>
                      <div class="channel-profile">
                        <!-- null 이면 기본이미지인 p.jpg -->
                        <img src="${data[0].profile_url ? '/miniProject/storage/' + data[0].profile_url : '/miniProject/img/p.jpg'}" alt="Profile Picture">

                      </div>
                    </div>
                    <div id='box-center'>
                      <div class="channel-details">
                        <h1>&nbsp${data[0].channel_name}</h1>
                        <p>&nbsp구독자 ${data[0].subscriber_count}명 글 ${comments}개</p>
                        <p>
                          <a href="#">&nbsp${data[0].channel_description}</a>
                        </p>
                      </div>
                    </div>
                    <div id='box-right'>
                      <div class="subcribe">
                  </div>
                    </div>
                    <!--히든-->
                    <div id="hiddenDiv" style="display: none;">
                      <input type="hidden" name="channel_id" id="channel_id" value="${data[0].channel_id}">
                    </div>

                    `;

                    // #container 안에 HTML 코드 삽입
            document.getElementById("container").innerHTML = html;
            
//            alert($('#user_id').val());
            console.log('666666666'+ data[0].user_id);
            

            $.each(data, function(index, items){
            	$('.profile-img').attr('src', '/miniProject/storage/'+items.profile_url);
            	var article = $('<article/>', {
                    'class': 'article'
                });

                var head_div = $('<div/>', {
                    'class': 'board_head'
                });
            	
         var show_more_img = $('<img/>', {
                    'class': 'show-more-img'
                }).attr('src', '/miniProject/img/show-more.png');

                var subject_p = $('<p/>', {
                    'class': 'subject'
                });

                var content_info = $('<div/>', {
                    'class': 'content-info'
                });

                var content_1_p = $('<a/>', {
                    'class': 'content-1',
                    'href': '/miniProject/user/boardView?board_id='+items.board_id
                });

                var likeBtn = $('<img/>', {
                    'id': 'likeBtn'
                });

                var likesu = $('<span/>', {
                    'class': 'likesu',
                    'id': 'likesu'
                });

                var dislikeBtn = $('<img/>', {
                    'id': 'dislikeBtn'
                });

                var shareBtn = $('<img/>', {
                    'id': 'shareBtn'
                });

                var dapBtn = $('<img/>', {
                    'id': 'dapBtn'
                });

                var dapsu = $('<span/>', {
                    'class': 'dapsu',
                    'id': 'dapsu'
                });
                
              
                var dropBox = $('<div/>', {
                	'class': 'dropdown-menu'
                });
                
                var board_id = $('<input>').addClass('board_id').attr('type', 'text').attr('value', items.board_id).css('display', 'none');
                var channel_id = $('<input>').addClass('channel_id').attr('type', 'text').attr('value', items.channel_id).css('display', 'none');
                
                var updateBtn =  $('<input>').addClass('updateBtn updateBtn_' + index).attr('type', 'button').attr('value', '수정');
                var deleteBtn =  $('<input>').addClass('deleteBtn deleteBtn_' + index).attr('type', 'button').attr('value', '삭제');
                
                var btn = $('<div>').addClass('btn').attr('id', 'btn').css('display', 'flex');
                var content_info = $('<div/>').addClass('content-info').css('cursor', 'pointer');
                  
                var profile_img = $('<img/>', {
                    'class': 'profile-img',
                    'src': '/miniProject/storage/' + items.profile_url
                });
                
                
//                var profile_img = $('<img>').addClass('profile-img').attr('src', items.profile_url);
         dropBox.append(
                	    $('<ul/>').append(
                	        $('<li/>').append(
                	            updateBtn
                	        )
                	    ).append(
                	        $('<li/>').append(
                	            deleteBtn
                	        )
                	    ).append(
                	        $('<li/>').css('display', 'none').append(
                	        		$('<input>').addClass('board_id').attr('type', 'text').attr('value', items.board_id).css('display', 'none')
                	        )
                	    ).append(
                	        $('<li/>').css('display', 'none').append(
                	            channel_id
                	        )
                	    )
                	);
         
              var profile_url = $('<img>').attr('value', items.profile_url).css('display', 'none');
                var board_text = $('<input>').attr('type', 'text').attr('value', items.board_text).css('display', 'none');
                
              head_div.append(profile_img).append(show_more_img).append(subject_p.text(items.channel_name)).
                		 append($('<span/>', {
                             text: items.upload_date})).append(profile_url).append(board_text).append(dropBox);
                
                
                
                
//                로그인 안했을 때나, 자신의 채널이 아닐 때, 수정 삭제 막기 
                if($('#user_id').val()=='' || $('#user_id').val() != data[0].user_id) {
//                	alert(data[0].user_id);
//                	alert($('#user_id').val());
                	
                	
                	article.hover(function() {
                		show_more_img.css('display', 'none');
                
                	});
                	
                }
    		 
                content_info.append(content_1_p.text(items.board_text)).append(board_id);
                
                
                btn.append($('<a/>', {href:'/miniProject/user/boardLike'})).
                				append(likeBtn.attr('src', '/miniProject/img/like.png')).
                				append(likesu).
                				append($('<a/>', {href: '#'})).
                				append(dislikeBtn.attr('src', '/miniProject/img/dislike.png')).
                				append($('<a/>', {href: '#'})).
                				append(shareBtn.attr('src', '/miniProject/img/share.png')).
                				append($('<a/>', {href: '#'})).
                				append(dapBtn.attr('src', '/miniProject/img/messages.png')).
                				append(dapsu);

       
                article.append(head_div).append(content_info).append(btn);
                
                //article.append(content_info);
                
                $('#section').append(article);
                

            }); //each
            
            $('.content-info').click(function() {

            	location.href = '/miniProject/user/boardView?board_id='+ $(this).$('.board_id').val();

            });
            
            $('.show-more-img').click(function() {
                // 현재 클릭한 토글에 대한 드롭다운 메뉴를 토글
                $(this).siblings('.dropdown-menu').toggle();
                
                // 다른 토글들은 닫기
                $('.show-more-img').not(this).siblings('.dropdown-menu').hide();
                
                // 드롭다운 메뉴 클릭 시 이벤트 버블링 중단
                $('.dropdown-menu').on('click', function(event){
                    event.stopPropagation();
                });
            });
          $('.deleteBtn').click(function(){

                	var boardId = $(this).parent().next().children().val();

                    $.ajax({
                        type: 'post',
                        url: '/miniProject/user/boardDelete',
                        data: 'board_id=' + boardId,
                        success: function(data){
                            alert('삭제되었습니다.'); // 성공 시 알림 메시지
                            // 페이지 새로고침
                            location.reload(); // 현재 페이지를 새로고침
                        },
                        error: function(err){
                            console.log(err);
                        }
                    });
                });
                
                
                // updateBtn
                

                 $('.updateBtn').click(function(){
             	var boardId = $(this).parent().next().next().children().val();

                	
                	var channelId = $(this).parent().next().next().next().children().val();

 	                    // 해당하는 article 요소 가져오기
 	                    var article = $(this).closest('.article');
 	
 	                    // 기존 내부 요소들 지우기
 	                    article.empty();
 	
 	                    // .update_head, .update_content, .update_footer 요소들 생성하여 article에 추가하기
 	                    var updateHead = $('<div>').addClass('update_head');
 	                    var profileImg = $('<img>').attr('src', $(this).parent().parent().parent().prev().prev().val()).addClass('profile-img');
 	                    updateHead.append(profileImg);
 	
 	                    var updateContent = $('<div>').addClass('update_content');
 	                    var textarea = $('<textarea>').attr('id', 'update_content');
 	                    // dto에서 원글 내용 가져와서 textarea에 넣기 (예시로 'dto에서 가져오는 원글 내용'으로 가정)
 	                    var originalContent = $(this).parent().parent().parent().prev().val();
 	                    textarea.val(originalContent);
 	                    
 	                   
 	                    // textarea의 input 이벤트 핸들러를 등록하여 height가 길어질 때 update_content의 높이만 조절하기
 	                    $(document).on('input', '#update_content', function() {
 	                   		this.style.height = '20px'; // 초기 높이 설정
 	                   		this.style.height = (this.scrollHeight) + 'px'; // 입력된 텍스트의 높이에 따라 높이 조정
 	  
 	                    
 	                    });
 	                                      
 	                    updateContent.append(textarea);
 	
 	                    var updateFooter = $('<div>').addClass('update_footer').attr('id', 'update_footer');
 	                    var updateReset = $('<div>').addClass('update_reset').text('취소');
 	                    var updatePost = $('<div>').addClass('update_post').text('게시');
 	                    updateFooter.append(updateReset).append(updatePost);
 	
 	                    article.append(updateHead).append(updateContent).append(updateFooter);
                
 	                   //수정 취소 버튼 
 	                    
 	                   $('.update_reset').click(function() {
 	                  
 	                	   // 페이지 새로고침
 	                	   location.reload(); // 현재 페이지를 새로고침
 	                  });
 	                   
 	                   
 	                   // 수정 완료 버튼 
 	                   
 	                   $('.update_post').click(function() {
 	                	  if(originalContent == $(this).parent().prev().children().val() || $(this).parent().prev().children().val().trim()=='') {
 	                		  alert('원글에서 수정된 내역이 없거나, 입력된 내용이 없습니다. 수정할 내용을 확인하세요.');
 	                	  }
 	                	  
 	                	  else {

 	                		 var updateBoard = $(this).parent().prev().children().val();
 	                		 $.ajax({
 	                            type: 'post',
 	                            url: '/miniProject/user/boardUpdate',
 	                            data: {
 	                            	'board_text': updateBoard,
 	                            	'board_id': boardId, 
 	                            	'channel_id': channelId
 	                            },
 	                            success: function(data){

 	                                alert('수정되었습니다.'); // 성공 시 알림 메시지
 	    
 	                                // 페이지 새로고침
 	                                location.reload(); // 현재 페이지를 새로고침
 	                            },
 	                            error: function(err){
 	                                console.log(err);
 	                            }
 	                        }); //ajax
 	                	  }//else
 	                   }); //update_post 
                 	
                 }); //.updateBtn
             
        },
        error: function(err){
            console.log(err);
        }
    }); //ajax 2 
    
    $('#write_reset').click(function() {
    	// 페이지 새로고침
         location.reload(); // 현재 페이지를 새로고침
    });
    
    $('#write_post').click(function() {
    	var writeBoard = $(this).parent().prev().children().val();
    	
    	if(writeBoard.trim() == '') {
    		alert('입력된 내용이 없습니다. 작성할 내용을 입력하세요.');
    	}
    	else {
    	$.ajax({
             type: 'post',
             url: '/miniProject/user/boardWrite',
             data: {
             	'channel_id': $('#channel_id').val(),
             	'user_id': $('#user_id').val(), 
             	'board_text': writeBoard
             },
             success: function(data){
             	 console.log(data);
                 alert('글이 등록 되었습니다.'); // 성공 시 알림 메시지

                 // 페이지 새로고침
                 location.reload(); // 현재 페이지를 새로고침
             },
             error: function(err){
                 console.log(err);
             }
         }); //ajax 3
    	}
    }); //write_post
    

    		if($('#user_id').val()!='') {
    			var user_id= $('#user_id').val();
    		}
    		else {
    			var user_id = 0;
    		}

    $.ajax({
    	type:'post',
    	url: '/miniProject/user/getBoardCount',
    	data: { user_id: user_id, channel_id: $('#channel_id').val() },
    	success: function(data){
    		console.log('8888888888888'+ JSON.stringify(data));
 		
    		$.each(data, function(index, item) {
                $('.likesu:eq(' + index + ')').text(item.like_count);
                $('.dapsu:eq(' + index + ')').text(item.comment_count);
            });

    	},
    	error: function(err){
    		console.log(err);
    	}
    });
});





