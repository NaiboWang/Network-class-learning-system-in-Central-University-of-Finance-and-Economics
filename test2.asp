<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="Connections/mysql.asp" -->
<%

Dim Command1__nameofuser
Command1__nameofuser = ""
if(request.form("user") <> "") then Command1__nameofuser = request.form("user")

%>
<%

set Command1 = Server.CreateObject("ADODB.Command")
Command1.ActiveConnection = MM_mysql_STRING
Command1.CommandText = "video.time"
Command1.Parameters.Append Command1.CreateParameter("nameofuser", 129, 1,255,Command1__nameofuser)
Command1.CommandType = 4
Command1.CommandTimeout = 0
Command1.Prepared = true
Command1.Execute()

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>

<body>
</body>
</html>
