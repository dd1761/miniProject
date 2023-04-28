$.ajax({
        type: "POST",
        url: "/upload",
        data: formData,
        contentType: false,
        processData: false,
        success: function(response) {
          // 업로드 성공 시 메시지 출력
          $('#message').text(response);
        },
        error: function() {
          // 업로드 실패 시 메시지 출력
          $('#message').text('Error uploading video');
        }
      });