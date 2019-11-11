 <?php
 
session_start();
include("connection.php");
$sql = "select * from 管理 where 账号 = '".$_POST['username']."'";
$result = mysqli_query($link,$sql); 
$_SESSION['yy'] = 0;
$rst = @mysqli_fetch_array($result) or die("<script> alert('用户名或密码错误！'); window.location.href='userlogin.php' </script>");//若用户名不存在，报错返回
	$pass = $rst['密码'];//取出密码
	if($pass == $_POST['pswd'])
		$_SESSION['yy'] = 1;
if($_SESSION['yy'] == 0)
{
	echo "<script> alert('用户名或密码错误！'); window.location.href='userlogin.php' </script>"; 
}
else
{
	$_SESSION['username'] = $_POST['username'];
	echo "<script> window.location.href='deallist.php' </script>"; 
}
?>
