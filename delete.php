<?php
include("connection.php");
	$sql = "select * from 视频 where ID = ".$_GET['ID'];
	$result = mysqli_query($link,$sql);
	$i = 1;
$rst = mysqli_fetch_array($result);
$links = $rst['文件名'].".mp4";
if (file_exists($links )) {
unlink ( $links );	
}
$sql = "delete from 视频 where ID = {$_GET['ID']}";
	@mysqli_query($link,$sql) or die("");
echo "<script>
alert('删除成功！');location.href='control.php'</script>";//跳转到提交成功页面

?>