var loginBox1 = document.querySelector('.outBox1');
var loginInputBox1 = document.querySelector('#first_name');
loginInputBox1.addEventListener('keyup', function(){
    if(loginInputBox1.value != ''){
        loginBox1.classList.add('existence');   
    }else{
        loginBox1.classList.remove('existence');   
    }
});
var loginBox2 = document.querySelector('.outBox2');
var loginInputBox2 = document.querySelector('#last_name');
loginInputBox2.addEventListener('keyup', function(){
    if(loginInputBox2.value != ''){
        loginBox2.classList.add('existence');   
    }else{
        loginBox2.classList.remove('existence');   
    }
});