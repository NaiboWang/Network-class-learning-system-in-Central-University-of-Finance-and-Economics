<?php
include("connection.php");
if(empty($_FILES['fileField']['tmp_name']))//没有文件要上传
{
	$file = 0;
}
else
{
	include "documentupload.php";//文件上传类
		$up = new fileupload;
		//设置属性(上传的位置， 大小， 类型， 名是是否要随机生成)
		//使用对象中的upload方法， 就可以上传文件， 方法需要传一个上传表单的名子 pic, 如果成功返回true, 失败返回false
		if($up -> upload("fileField")) {
			$file = 1;
			$fname = $up->getFileName();  
		} else {
			$fname = strip_tags($up->getErrorMsg());//错误信息去掉html标签后显示
		   echo "<script> alert('".$fname.",请返回修改'); window.location.href='deallist.php';</script>";
		exit(-1);
		}
}
	$sql = "insert into 视频(视频名) values('{$_POST['textfield']}')";
	mysqli_query($link,$sql);
	$sql = "select max(ID) as ID from 视频";
	$result = mysqli_query($link,$sql); 
	$rst = mysqli_fetch_array($result);
	$ID = $rst['ID'];//标记当前项目ID
if($file)//如果上传了新文件
{
	$fname = str_replace(".mp4","",$fname);
	$sql = "update 视频 set 文件名 = '{$fname}' where ID = {$ID}";
	mysqli_query($link,$sql);
}
echo "<script>
alert('提交成功！');</script>";//跳转到提交成功页面

?>