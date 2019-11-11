 <?php
	include("connection.php");
	$sql = "select * from 视频 where ID = ".$_GET['ID'];
	$result = mysqli_query($link,$sql);
	$i = 1;
$rst = mysqli_fetch_array($result);
$name = $rst['视频名'];
$link = $rst['文件名'];
	  ?>
<!DOCTYPE html>
<html>
<head>
<title>点播结果</title>
 

<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />

<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Bizz Wow Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />


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
		</div>
<!-- //header -->
<div class="port"  style="font:'楷体'">
<div align="center">
  <h1 align="center">视频：<?php echo $name;?></h1>
  <video class="video-js vjs-default-skin"  data-setup="{}" controls height="480" width="720" id="myVideo" autoplay src="<?php echo $link;?>.mp4" > </video>
</p>
<div  align="center"></div>
<p align="center">&nbsp;</p>
</div>
  
       </div>
          </div>

  </div>
      
	</div>
</div>
<!-- here stars scrolling icon -->
	
<!-- //here ends scrolling icon -->
</body>
</html>
