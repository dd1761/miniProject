var loginBox1 = document.querySelector('.box .outBox1');
var loginInputBox1 = document.querySelector('#rrn_1');
if (loginBox1 && loginInputBox1) {
  loginInputBox1.addEventListener('keyup', function(){
    if(loginInputBox1.value != ''){
      loginBox1.classList.add('existence');   
    }else{
      loginBox1.classList.remove('existence');   
    }
  });
}

var loginBox2 = document.querySelector('.box .outBox2');
var loginInputBox2 = document.querySelector('#rrn_2');
if (loginBox2 && loginInputBox2) {
  loginInputBox2.addEventListener('keyup', function(){
    if(loginInputBox2.value != ''){
      loginBox2.classList.add('existence');   
    }else{
      loginBox2.classList.remove('existence');   
    }
  });
}