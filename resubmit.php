<?php

session_start();
//在页首先要开启session,
//error_reporting(2047);
include("connection.php");
$str1 = "insert into 管理 values('".$_POST['username']."','".$_POST['pass']."')";
	$result = mysqli_query($link,$str1); //查询
$str1 = "call checkuser('".$_POST['username']."',@exist)";
$result = mysqli_query($link,$str1); //查询
$rst = mysqli_fetch_array($result);
	echo "<script> alert('注册成功！');location.href='userlogin.php'</script>";


?>