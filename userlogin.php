<!DOCTYPE HTML>
<?php
session_start();
//在页首先要开启session,
//error_reporting(2047);
include("connection.php");

?>
<html>
<head>
<title>登陆</title>
<style type="text/css">
#login p{
margin-top: 15px;
line-height: 20px;
font-size: 14px;
}
#login img{
cursor:pointer;
}
form{
margin-left:20px;
}
</style>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style2.css" rel='stylesheet' type='text/css' />
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<script language="javascript" src="js/fun.js"></script>
<!----webfonts--->

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script> 
</head>
<body id="login">
  <div class="login-logo">
    <h1 style="padding:20px"></h1>
    <p></p>
  <strong><img width="184" height="37" src="userlogin_clip_image001.jpg" alt="阿里旺旺图片20170225204945"></strong></div>
<div class="app-cam" style=" margin-top:1%">
    <form id="form_login" name="form_login" method="POST" style="min-height:400px" action="loginjudge.php"  >  
		<h3 align="center">视频VOD点播系统</h3>
      <input type="text" class="text"  id = "username" name="username" onfocus="if (this.value == '用户名') {this.value = '';}" onblur="if (this.value == '') {this.value = '用户名';}">
		
		<input type="password"  name = "pswd" id = "pswd" onFocus="if (this.value == 'password') {this.value = '';}" onBlur="if (this.value == '') {this.value = 'password';}">
	  <div style="float:right"></img></div>
      <div class="clear" style=" clear:both"></div>
        
        
	  <div class="submit"><input type="submit" value="登录" >  <a href="register.php" > <input type=button onClick="window.location.href('register.php')" value="注册">
	  </a></div>
	</form>
  </div>
   
 
</body>
</html>
