var loginBox = document.querySelector('.outBox');
var loginInputBox = document.querySelector('#email');

if (loginBox && loginInputBox) {
  loginInputBox.addEventListener('input', function(){
    if(loginInputBox.value != ''){
      loginBox.classList.add('existence');   
    }else{
      loginBox.classList.remove('existence');   
    }
  });
}