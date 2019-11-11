<?php
include("connection.php");
$sql = "delete from 管理 where 账号 = '{$_GET['ID']}'";
	mysqli_query($link,$sql);
echo "<script>
alert('删除成功！');location.href='userlogin.php'</script>";//跳转到提交成功页面

?>