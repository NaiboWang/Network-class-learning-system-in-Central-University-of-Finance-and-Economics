<%@LANGUAGE="VBSCRIPT"  CODEPAGE="65001"%>
<!--#include file="Connections/mysql.asp" -->
<!--#include file="md5.asp" -->
<%
Dim Recordset1
Dim Recordset1_cmd
Dim Recordset1_numRows

Set Recordset1_cmd = Server.CreateObject ("ADODB.Command")
Recordset1_cmd.ActiveConnection = MM_mysql_STRING
Recordset1_cmd.CommandText = "SELECT * FROM video.信息 where md5 = '"&request.QueryString("ID")&"'"
Recordset1_cmd.Prepared = true

Set Recordset1 = Recordset1_cmd.Execute
Recordset1_numRows = 0
%>
<%

Set Command1 = Server.CreateObject ("ADODB.Command")
Command1.ActiveConnection = MM_mysql_STRING
Command1.CommandText = "UPDATE video.用户  SET 现在正在观看的视频 = 1 WHERE  工号 = '"&(Recordset1.Fields.Item("用户工号").Value)&"'"
Command1.CommandType = 1
Command1.CommandTimeout = 0
Command1.Prepared = true

%>
<%
Dim Recordset2__MMColParam
Recordset2__MMColParam = "1"
If (Request.QueryString("ID") <> "") Then 
  Recordset2__MMColParam = Recordset1.Fields.Item("视频ID").Value
End If
%>
<%
Dim Recordset2
Dim Recordset2_cmd
Dim Recordset2_numRows

Set Recordset2_cmd = Server.CreateObject ("ADODB.Command")
Recordset2_cmd.ActiveConnection = MM_mysql_STRING
Recordset2_cmd.CommandText = "SELECT * FROM video.视频 WHERE ID = ?" 
Recordset2_cmd.Prepared = true
Recordset2_cmd.Parameters.Append Recordset2_cmd.CreateParameter("param1", 5, 1, -1, Recordset2__MMColParam) ' adDouble

Set Recordset2 = Recordset2_cmd.Execute
Recordset2_numRows = 0
%>
<%
Dim Recordset3
Dim Recordset3_cmd
Dim Recordset3_numRows

Set Recordset3_cmd = Server.CreateObject ("ADODB.Command")
Recordset3_cmd.ActiveConnection = MM_mysql_STRING
Recordset3_cmd.CommandText = "SELECT * FROM video.用户 where 工号 = '" &(Recordset1.Fields.Item("用户工号").Value) &"'" 
Recordset3_cmd.Prepared = true

Set Recordset3 = Recordset3_cmd.Execute
Recordset3_numRows = 0
%>


<html>
<head>
<link href="video-js.min.css" rel="stylesheet" type="text/css">
<style type="text/css">
#topDiv {	position: absolute;
	width: 1300px;
	height: 47px;
	z-index: 6;
	left: 10px;
	top: 7px;
}
</style>
<script src="video.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>视频点播</title>
</head>
<body onbeforeunload="checkLeave()">

<div align="center">
<div align="center"><font size="+3" color="#3300FF">三思知识学习网站</font></div>

<div id="tableDiv" align="center">
<table width="1300" height="35" border="1" align="center" rules="cols">
  <tr bordercolor="white">
    <th width="227" bgcolor="#CC3300"><a href="toppage.asp" style="text-decoration:none"><font color="white">主页</font></a></th>
    <th width="227" bgcolor="#CC3300"><a href="zhibupage.html" style="text-decoration:none"><font color="white">支部共建</font></a></th>
    <th width="227" bgcolor="blue"><a href="learning.asp" style="text-decoration:none" ><font color="white">知识学习</font></a></th>
    <th width="227" bgcolor="#CC3300"><a href="" style="text-decoration:none"><font color="white">通知公告</font></a></th>
    <th width="227" bgcolor="#CC3300"><a href="" style="text-decoration:none"><font color="white">个人主页</font></a></th>
    <th width="105" bgcolor="#CC3300"><a href="" style="text-decoration:none"
    ><font color="white">更多</font></a></th>
  </tr>
</table>
</div>
<h1 align="center">视频：<%=(Recordset2.Fields.Item("视频名").Value)%></h1>

<div align="center"><font size="+1">总观看时间计时：
    <input type="text" name="timm" id="timm" style="border:none;font-size:16px; width:50px">
  </font>
</div>
<p align="center"><a href="learning.asp">返回&lt;知识学习&gt;</a></p>
<p align="center">

</p>

<p align="center">
  <% if Recordset3.Fields.Item("现在正在观看的视频").Value = 1 then
   
   %>
  不可同时开1个以上的页面，如果您只打开了这一个页面，说明您没有进行正确的操作，<a href="return.asp?ID=<%=request.QueryString("ID")%>">点击这里重置</a>。
  <%
  else
 

  %>
    <input type="button" onClick="exits()" name="12" id="12" value="签退" style="font-size: 16px;
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
  <p style="margin:20px"></p>
  <p>注意：为了防止挂机，视频每隔三分钟会自动暂停一次（暂时无效），到时候直接点击播放按钮即可继续播放。</p>
    <video onPause="test2()" class="video-js vjs-default-skin"  data-setup="{}" controls height="480" width="720" id="myVideo" autoplay src="<%=(Recordset2.Fields.Item("文件名").Value)%>.mp4" > </video>
</p>
 <p>
    <%
  Command1.Execute()
  tit = now()
Command1.CommandText = "UPDATE video.用户  SET 最后一次观看时间 ='"&tit&"' WHERE  工号 = '"&(Recordset1.Fields.Item("用户工号").Value)&"'"

Command1.Execute()
 end if
 %>
</p>
</div>
<script>

var myVideo = document.getElementById('myVideo'),tol = 0;
  myVideo.currentTime = <%=(Recordset1.Fields.Item("总长度").Value)%>;
myVideo.addEventListener("loadedmetadata", function(){
    tol = myVideo.duration;//获取总时长
});


var newWindow;//定义一个窗口，有利于窗口间的通讯
function makeNewWindow(url) {
   if (!newWindow || newWindow.closed) {
        var width = 400;
        var height = 300;
        var left = parseInt((screen.availWidth/2) - (width/2));//屏幕居中
        var top = parseInt((screen.availHeight/2) - (height/2));
        var windowFeatures = "width=" + width + ",height=" + height + ",status,resizable,left=" + left + ",top=" + top + "screenX=" + left + ",screenY=" + top;
        newWindow = window.open(url, "subWind", windowFeatures);
    } else {
        // window is already open, so bring it to the front
        newWindow.focus();
    }
}



//播放时间点更新时
var t = 0;
var lasttime = <%=(Recordset1.Fields.Item("总长度").Value)%>;
myVideo.addEventListener("timeupdate", function(){
   a = 1;
	 var currentTime = myVideo.currentTime;
	 if(currentTime - lasttime >1  )
	 {
	   myVideo.currentTime = lasttime; 
	 }
	 else if(currentTime < lasttime)
	 {
		 a = 0;
	 }
	 else
	 {
		  lasttime = currentTime;
		 }
			
		if(t % 20000 == 0 && t >0)
		{
			myVideo.pause()
			t++;
		}
		
	
});


var ttime = -3;
var a = 0;
var timel = <%=(Recordset3.Fields.Item("总时长").Value)%>;
setInterval(function(){
	var minute = parseInt(timel /60);
	var second = timel % 60;
	if(second <10)
	document.getElementById('timm').value=minute + ":0" + second;
	else
	document.getElementById('timm').value=minute + ":" + second;
	if(a == 1)
	{
		t++;
		timel++;
	}
		console.log(lasttime);
		ttime++;
	},1000)

function test2()
{
	a = 0;
}
function getvl(name) {
   var reg = new RegExp("(^|\\?|&)"+ name +"=([^&]*)(\\s|&|$)", "i");
   if (reg.test(location.href)) return unescape(RegExp.$2.replace(/\+/g, " "));
   return "";
};




var che = 0;
function exits() {
  che = 1;
  checkLeave();
};

　function checkLeave(){ 
      if(che == 0)   
      {   
          　　event.returnValue="不签退离开当前页面将不会计算时长，并会造成至少一个小时不能再次观看，确认要离开吗？"; 
      }else{
		 window.location.href="subexit.asp?ID="+getvl('ID')+"&time="+lasttime+"&md5=<%=MD5(tit)%>"; 
     } 
	 
　　
　　　}

</script>
</body>
</html>
<%
Recordset2.Close()
Set Recordset2 = Nothing
%>
<%
Recordset3.Close()
Set Recordset3 = Nothing
%>
<%
Recordset1.Close()
Set Recordset1 = Nothing
%>
