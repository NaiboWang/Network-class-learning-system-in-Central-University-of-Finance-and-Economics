<?php
include("logincheck.php");?><!DOCTYPE html>
<html>
<head>
<title>点播结果</title>
 

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
<div align="center">
<h1 align="center">视频管理</h1><img src="hr-geo-sukarno-1s960x639.png"  style="  position:relative; left:2%;background-size:cover; background-position:center; width:90%;height:90%" alt=""/>
<h1 align="center">增加视频</h1>
<div  align="center">
<form action="sub.php" method="post" enctype="multipart/form-data" name="form1" target="_blank" id="form1">
  <p>
    <input type="file" name="fileField" id="fileField" accept="video/mp4">
  </p>
  <p>
    <label for="textfield">视频名:</label>
    <input type="text" name="textfield" id="textfield">
  </p>
  <p>
    <input type="submit" name="submit" id="submit" value="提交">
  </p>
</form>
</div>
<h2 align="center">已存在视频列表</h2>
<table class="datalist"   style="margin:auto" align="center" summary="list of members in EE Studay">
  <tbody>
    <tr>
      <th scope="col">序号</th>
      <th scope="col">视频名称</th>
      <th scope="col">删除</th>
    </tr>
    <?php
	include("connection.php");
	$sql = "select * from 视频 order by ID asc";
	$result = mysqli_query($link,$sql);
	$i = 1;
	while($rst = mysqli_fetch_array($result))
	{
		if($i %2 == 0)
			echo "<tr><td>{$i}</td><td><a href='video.php?ID={$rst['ID']}' target ='_blank'>{$rst['视频名']}</a></td><td><a href = 'delete.php?ID={$rst['ID']}'>删除</a></td></tr>";
		else
			echo "<tr class = 'altrow'><td>{$i}</td><td><a href='video.php?ID={$rst['ID']}' target ='_blank'>{$rst['视频名']}</a></td><td><a href = 'delete.php?ID={$rst['ID']}'>删除</a></td></tr>";
		$i++;
	}
	  ?>
    
  </tbody>
</table>
<div  align="center"></div>
<p align="center">&nbsp;</p>
</div>
  
       </div>
          </div>

  </div>
      
	</div>
</div>
<!-- here stars scrolling icon -->
	<script type="text/javascript">
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
