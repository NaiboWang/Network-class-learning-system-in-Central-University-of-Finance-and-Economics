<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="Connections/mysql.asp" -->
<%
Dim Recordset1
Dim Recordset1_cmd
Dim Recordset1_numRows

Set Recordset1_cmd = Server.CreateObject ("ADODB.Command")
Recordset1_cmd.ActiveConnection = MM_mysql_STRING
Recordset1_cmd.CommandText = "SELECT * FROM video.信息 where md5 = '"  &request.QueryString("ID")&"'" 
Recordset1_cmd.Prepared = true

Set Recordset1 = Recordset1_cmd.Execute
Recordset1_numRows = 0
%>
<%
Dim Recordset2
Dim Recordset2_cmd
Dim Recordset2_numRows

Set Recordset2_cmd = Server.CreateObject ("ADODB.Command")
Recordset2_cmd.ActiveConnection = MM_mysql_STRING
Recordset2_cmd.CommandText = "SELECT * FROM video.用户 where 工号 ='" &Recordset1.Fields.Item("用户工号").Value&"'" 
Recordset2_cmd.Prepared = true

Set Recordset2 = Recordset2_cmd.Execute
Recordset2_numRows = 0
%>
<%

Set Command1 = Server.CreateObject ("ADODB.Command")
Command1.ActiveConnection = MM_mysql_STRING

Command1.CommandType = 1
Command1.CommandTimeout = 0
Command1.Prepared = true


%>
<%
if datediff("s",Recordset2.Fields.Item("最后一次观看时间").Value,now()) <=184 then
Command1.CommandText = "UPDATE video.用户  SET 总时长 = 总时长 + "&datediff("s",Recordset2.Fields.Item("最后一次观看时间").Value,now()) &" where 工号 = '" & (Recordset1.Fields.Item("用户工号").Value)&"'"
Command1.Execute()
Command1.CommandText = "UPDATE video.信息  SET 总长度 = 总长度 + "&datediff("s",Recordset2.Fields.Item("最后一次观看时间").Value,now())&" where md5 = '" & request.QueryString("ID") &"'"
Command1.Execute()
end if
Command1.CommandText = "UPDATE video.用户  SET 最后一次观看时间 = '"&now() & "' where 工号 ='"&Recordset1.Fields.Item("用户工号").Value &"'"
Command1.Execute()
response.Write(Recordset2.Fields.Item("总时长").Value)
%>
<%
Recordset1.Close()
Set Recordset1 = Nothing
%>
<%
Recordset2.Close()
Set Recordset2 = Nothing
%>
