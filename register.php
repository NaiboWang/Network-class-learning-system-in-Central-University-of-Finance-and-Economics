<!DOCTYPE html>
<html>
<head>
<title>注册</title>
 
<style>  
.GoStyle
    {
         color:#00F;          
         background-color: #FFFFFF;
         border: 0px none;
         cursor:pointer;
         font-size: 12px;
		 font-family:'楷体'; 
		 text-decoration:underline;
    }
</style>  

<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />

<script src="js/jquery.min.js"></script>
<script src="inforjudge.js"></script>
<!-- //js -->
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Bizz Wow Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->

<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<link href="css/menu.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/mootools.js"></script>
<script type="text/javascript" src="js/fusion.js"></script>
 


</head>
	
<body>
	<div class="psd">
<div class="container" style="min-height:200px">
<!-- header -->
		<div class="header" style="font-size:150%;font-weight:600;">
        <div style="background-image:url(images/t10.jpg);background-repeat: no-repeat; background-positon: 120%, 120%"></div>	  
			<div class="clearfix"> </div>
           
		</div>
        
 
<div style="clear:both"></div>	





<!-- //header -->
<div class="port"  style="font:'楷体'; min-height:100px">
  <h3>注册  </h3>
  <p class="para" style="font-size:15px">&nbsp;</p>
		<p class="para" style="font-size:15px">&nbsp;</p>
    
  <p><img src="hr-geo-sukarno-1s960x639.png"  style="  position:relative; left:3%;background-size:cover; background-position:center; width:90%;height:90%" alt=""/></p>
  <div  align="center" class="para" style="font-size:19px; font-family:'微软雅黑'; padding-top:20px">
 
 


 
    <form action="resubmit.php" method="post" name="form1" id="form1" onSubmit="return check()">
  <table id="table2"  style=" left:3%; position:relative" align="center" width="400" border="0">
    <tr style="height:40px">
      <td align="right">用户名：</td>
      <td><input  onBlur="document.getElementById('checkusers').src='checkuser.php?username='+this.value;" name="username" type="text" id="username"  placeholder="6-16位字母加数字组合"></td>
      </tr>
    <tr>
      <td align="right" style="height:40px">密码：</td>
      <td><input name="pass"  type="password" id="pass" ></td>
      </tr>
    <tr>
     <tr>
      <td align="right" style="height:40px">确认密码：</td>
      <td><input name="passconfirm"  type="password" id="passconfirm"  ></td>
      
      </tr>
      
  </table>
    <label for="sno"></label>
      </p>
      <p style="padding-top:0px">
        <input type="submit" name="12" id="12" value="提交" style="font-size: 16px;
  font-weight: 300 !important;
  position:relative;
  color: #fff;
  cursor: pointer;
  outline: none;
  padding: 10px 15px;
  width: 20%;
  border: none;
  background: #00BBFF ;
  border-radius: 2px;
  -webkit-border-radius: 2px;
  -moz-border-radius: 2px;
  -o-border-radius: 2px;
  text-transform: uppercase;margin-left:50px" onmouseover="this.style.background='#9900FF'" onmouseout="this.style.background='#00BBFF '" />
          </p>
          </form>
          
 
 
 </div>
        <div  align="center"  class="portfolio-grids" style="font-size:18px; font-family:'微软雅黑'; min-height:50px">
		
         
		 
    
<p>
      
       
          
  </div>


			</ul>
		</div>
		<div class="clearfix"> </div>
	</div>
</div>
<!-- here stars scrolling icon -->
	<script type="text/javascript">
	function check()
	{
		if(document.getElementById('pass').value ==document.getElementById('passconfirm').value )
		return true;
		else
		{
			alert("两次输入的密码不相同！")
			return false;
			}
		
		}		
						
	</script>

<!-- //here ends scrolling icon -->
</body>
</html>
