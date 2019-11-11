<?php
include("logincheck.php");?>
<!DOCTYPE html>
<html>
<head>
<title>视频点播</title>
 

<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />

<script src="js/jquery.min.js"></script>
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
</head>
	
<body>
	<div class="psd">
<div class="container">
<!-- header -->
 
		<div class="header">
		  <div class="logo-right">
			<span class="menu"><img src="images/menu.png" alt=" "/></span></div>
		  <div class="clearfix"> </div>
				<!-- script for menu --> 
		  <script> 
						$( "span.menu" ).click(function() {
						$( "ul.nav1" ).slideToggle( 300, function() {
						 // Animation complete.
						});
						});
					</script>
				<!-- //script for menu -->
		</div>
<!-- //header -->
<div class="port"  style="font:'楷体'">
<h1 align="center">欢迎使用</h1>
<p align="center"><span style="padding-top:0px">
  <a href="control.php"><input type="button" name="12" id="12" value="视频管理" style="font-size: 16px;
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
  text-transform: uppercase;margin-left:50px" onmouseover="this.style.background='#9900FF'" onmouseout="this.style.background='#00BBFF '" /></a>
</span></p>
<p align="center"><a href="dethis.php?ID=<?php echo $_SESSION['username'];?>">
  <input type="button" name="122" id="122" value="删除本账户" style="font-size: 16px;
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
  text-transform: uppercase;margin-left:50px" onMouseOver="this.style.background='#9900FF'" onMouseOut="this.style.background='#00BBFF '" />
</a></p>
</div>
  
       </div>
          </div>

  </div>
      
	</div>
</div>
<!-- here stars scrolling icon --><script type="text/javascript">
	function deletecheck()
	{
		if(confirm('真的要删除此项目吗？'))
		return true;
		else
		return false;
		}
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
	</script>
<!-- //here ends scrolling icon -->
</body>
</html>
