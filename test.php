<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>
<?php
error_reporting(E_ALL ^ E_DEPRECATED);
header("Content-type:text/html;charset=utf-8");
$mysql_server_name='localhost'; //改成自己的mysql数据库服务器
$mysql_username='root'; //改成自己的mysql数据库用户名
$mysql_password='q982311099'; //改成自己的mysql数据库密码
$mysql_database='video'; //改成自己的mysql数据库名
$conn=mysql_connect($mysql_server_name,$mysql_username,$mysql_password) or die("error connecting") ; //连接数据库
mysql_query("set names 'utf8'"); //数据库输出编码 应该与你的数据库编码保持一致
mysql_select_db($mysql_database); //打开数据库
$str1 = "select 总时长  from 用户 where 工号 ='".$_GET['username']."'";
$str1 = "call time('".$_GET['username']."')";
$result = mysql_query($str1,$conn); //查询

?>

<body>
</body>
</html>