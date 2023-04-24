$(function(){
    $.ajax({
        type: 'post',
        url: '/miniProject/user/getBoardList',
        success: function(data){
            console.log(JSON.stringify(data));

            

            $.each(data, function(index, items){
            	var article = $('<article/>', {
                    'class': 'article'
                });

                var head_div = $('<div/>', {
                    'class': 'board_head'
                });
            	
            	
                var profile_img = $('<img/>', {
                    'class': 'profile-img'
                }).attr('src', items.image);

                var show_more_img = $('<img/>', {
                    'class': 'show-more-img'
                }).attr('src', '/miniProject/img/show-more.png');

                var subject_p = $('<p/>', {
                    'class': 'subject'
                });

                var content_info = $('<div/>', {
                    'class': 'content-info'
                });

                var content_1_p = $('<p/>', {
                    'class': 'content-1'
                });

                var likeBtn = $('<img/>', {
                    'id': 'likeBtn'
                });

                var likesu = $('<span/>', {
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
                    'id': 'dapsu'
                });
                
                var btn = $('<div/>', {
                	'class': 'btn'
                });

                head_div.append(profile_img).append(show_more_img).append(subject_p.text(items.channel_name)).
                		 append($('<span/>', {
                             text: items.upload_date}));
                		 
                content_info.append(content_1_p.text(items.board_text));
                
                
                btn.append($('<a/>', {href:'/miniProject/user/boardLike'})).
                				append(likeBtn.attr('src', '/miniProject/img/like.png')).
                				append(likesu.text(items.like_count)).
                				append($('<a/>', {href: '#'})).
                				append(dislikeBtn.attr('src', '/miniProject/img/dislike.png')).
                				append($('<a/>', {href: '#'})).
                				append(shareBtn.attr('src', '/miniProject/img/share.png')).
                				append($('<a/>', {href: '#'})).
                				append(dapBtn.attr('src', '/miniProject/img/messages.png')).
                				append(dapsu.text(items.comment_count));
//                
//              
//                <article>
//                	<head_div>
//                	</head>
//                	<content_info>
//                	</content_info>
//                </article>
                
                
                article.append(head_div).append(content_info).append(btn);
                
                //article.append(content_info);
                
                $('#section').append(article);

            }); //each

        },
        error: function(err){
            console.log(err);
        }
    });
});
