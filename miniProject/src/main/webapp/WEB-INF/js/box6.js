var loginBox1 = document.querySelector('.outBox1');
var loginInputBox1 = document.querySelector('#password');
if (loginBox1 && loginInputBox1) {
  loginInputBox1.addEventListener('keyup', function(){
    if(loginInputBox1.value != ''){
      loginBox1.classList.add('existence');   
    }else{
      loginBox1.classList.remove('existence');   
    }
  });
}

var loginBox2 = document.querySelector('.outBox2');
var loginInputBox2 = document.querySelector('#repwd');
if (loginBox2 && loginInputBox2) {
  loginInputBox2.addEventListener('keyup', function(){
    if(loginInputBox2.value != ''){
      loginBox2.classList.add('existence');   
    }else{
      loginBox2.classList.remove('existence');   
    }
  });
}