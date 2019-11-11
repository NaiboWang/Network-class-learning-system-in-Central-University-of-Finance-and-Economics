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
Command1.CommandText = "UPDATE video.用户  SET 现在正在观看的视频 = 0 WHERE  工号 = '"&(Recordset1.Fields.Item("用户工号").Value)&"'"
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
<p align="center">
  <%   
  if datediff("s",Recordset3.Fields.Item("最后一次观看时间").Value,now()) > CINT(request.QueryString("time"))- CINT(Recordset1.Fields.Item("总长度").Value)- 10 and request.QueryString("md5") = MD5(Recordset3.Fields.Item("最后一次观看时间").Value) then
   
   %>
  签退成功，点击下方链接返回。</p>
 <p>
    <%
  Command1.Execute()
Command1.CommandText = "UPDATE video.用户  SET 最后一次观看时间 ='"&now()&"' WHERE  工号 = '"&(Recordset1.Fields.Item("用户工号").Value)&"'"
Command1.Execute()
Command1.CommandText = "UPDATE video.信息  SET 总长度  ='"& request.QueryString("time")&"' WHERE  md5 = '"& request.QueryString("ID")&"'"
Command1.Execute()
Command1.CommandText = "UPDATE video.用户  SET 总时长  = (select sum(总长度) from video.信息 where 用户工号 = '"&(Recordset1.Fields.Item("用户工号").Value)&"') where 工号 = '"&(Recordset1.Fields.Item("用户工号").Value)&"'"
Command1.Execute()
if Recordset2.Fields.Item("类").Value = "统计学" then
Command1.CommandText = "UPDATE video.用户  SET 统计学 = (select sum(总长度) from video.信息 where 用户工号 = '"&(Recordset1.Fields.Item("用户工号").Value)&"' and 类别 = '统计学') where 工号 = '"&(Recordset1.Fields.Item("用户工号").Value)&"'"
elseif Recordset2.Fields.Item("类").Value = "数学" then
Command1.CommandText = "UPDATE video.用户  SET 数学 = (select sum(总长度) from video.信息 where 用户工号 = '"&(Recordset1.Fields.Item("用户工号").Value)&"' and 类别 = '数学') where 工号 = '"&(Recordset1.Fields.Item("用户工号").Value)&"'"
elseif Recordset2.Fields.Item("类").Value = "计算机" then
Command1.CommandText = "UPDATE video.用户  SET 计算机 = (select sum(总长度) from video.信息 where 用户工号 = '"&(Recordset1.Fields.Item("用户工号").Value)&"' and 类别 = '计算机') where 工号 = '"&(Recordset1.Fields.Item("用户工号").Value)&"'"
response.Write(Command1.CommandText)
elseif Recordset2.Fields.Item("类").Value = "MBA" then
Command1.CommandText = "UPDATE video.用户  SET MBA = (select sum(总长度) from video.信息 where 用户工号 = '"&(Recordset1.Fields.Item("用户工号").Value)&"' and 类别 = 'MBA') where 工号 = '"&(Recordset1.Fields.Item("用户工号").Value)&"'"
elseif Recordset2.Fields.Item("类").Value = "统计软件" then
Command1.CommandText = "UPDATE video.用户  SET 统计软件 = (select sum(总长度) from video.信息 where 用户工号 = '"&(Recordset1.Fields.Item("用户工号").Value)&"' and 类别 = '统计软件') where 工号 = '"&(Recordset1.Fields.Item("用户工号").Value)&"'"
end if
Command1.Execute()

else
%>
非法操作，签退无效。
<%
 end if
 %>
 <p align="center"><a href="learning.asp">返回&lt;知识学习&gt;</a></p>
</p>
</div>

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
