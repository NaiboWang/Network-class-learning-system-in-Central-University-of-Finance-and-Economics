function chkinput(form){
    if(form.username.value==""){
        alert('请输入您的昵称');
	    form.username.select();
	    return false;
	}
	if(form.password.value==""){
        alert('请输入登录密码！');
	    form.password.select();
	    return false;
    }
	if(form.xym.value==""){
        alert('请输入验证码！');
	    form.xym.select();
	    return false;
    }
	if(form.xym.value!=form.xym1.value){
        alert('验证码输入错误！');
	    form.xym.select();
	    return false;
    }
   return true;	 
}