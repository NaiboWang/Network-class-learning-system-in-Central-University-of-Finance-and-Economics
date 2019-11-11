<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="Connections/mysql.asp" -->
<%
' *** Validate request to log in to this site.
MM_LoginAction = Request.ServerVariables("URL")
If Request.QueryString <> "" Then MM_LoginAction = MM_LoginAction + "?" + Server.HTMLEncode(Request.QueryString)
MM_valUsername = CStr(Request.Form("user"))
If MM_valUsername <> "" Then
  Dim MM_fldUserAuthorization
  Dim MM_redirectLoginSuccess
  Dim MM_redirectLoginFailed
  Dim MM_loginSQL
  Dim MM_rsUser
  Dim MM_rsUser_cmd
  
  MM_fldUserAuthorization = ""
  MM_redirectLoginSuccess = "personal.asp"
  MM_redirectLoginFailed = "login-lose.asp"

  MM_loginSQL = "SELECT 工号,密码"
  If MM_fldUserAuthorization <> "" Then MM_loginSQL = MM_loginSQL & "," & MM_fldUserAuthorization
  MM_loginSQL = MM_loginSQL & " FROM video.用户 WHERE 工号 = ? AND 密码 = ?"
  Set MM_rsUser_cmd = Server.CreateObject ("ADODB.Command")
  MM_rsUser_cmd.ActiveConnection = MM_mysql_STRING
  MM_rsUser_cmd.CommandText = MM_loginSQL
  MM_rsUser_cmd.Parameters.Append MM_rsUser_cmd.CreateParameter("param1", 200, 1, 20, MM_valUsername) ' adVarChar
  MM_rsUser_cmd.Parameters.Append MM_rsUser_cmd.CreateParameter("param2", 200, 1, 255, Request.Form("pass")) ' adVarChar
  MM_rsUser_cmd.Prepared = true
  Set MM_rsUser = MM_rsUser_cmd.Execute

  If Not MM_rsUser.EOF Or Not MM_rsUser.BOF Then 
    ' username and password match - this is a valid user
    Session("MM_Username") = MM_valUsername
    If (MM_fldUserAuthorization <> "") Then
      Session("MM_UserAuthorization") = CStr(MM_rsUser.Fields.Item(MM_fldUserAuthorization).Value)
    Else
      Session("MM_UserAuthorization") = ""
    End If
    if CStr(Request.QueryString("accessdenied")) <> "" And false Then
      MM_redirectLoginSuccess = Request.QueryString("accessdenied")
    End If
    MM_rsUser.Close
    Response.Redirect(MM_redirectLoginSuccess)
  End If
  MM_rsUser.Close
  Response.Redirect(MM_redirectLoginFailed)
End If
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎使用</title>
</head>
<style type="text/css">
#loginDiv {
	position: absolute;
	width: 630px;
	height: 280px;
	z-index: 1;
	left: 307px;
	top: 221px;
}
#login_centerDiv {
	position: absolute;
	width: 349px;
	height: 132px;
	z-index: 2;
	left: 181px;
	top: 90px;
}
</style>

<body bgcolor="#FFFF99">

<div id="loginDiv" style=" background-color:#FC3">

<p align="center" style="color:green"><font size="+3" color="#FFFF99">欢迎使用！</font></p>
<div id="login_centerDiv">
<form id="form1" name="form1" method="POST" action="<%=MM_LoginAction%>">
  <p>
    <label for="user"></label>
  	 <font color="white">用户名</font>
  <input type="text" name="user" id="user" />
  </p>
  <p>
    <label for="pass"></label>
     <font color="white">密码&nbsp;</font>
    <input type="password" name="pass" id="pass" />
  </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="submit" name="sub" id="sub" value="登录" />
    <input type="reset" name="res" id="res" value="重置" />
  </p>
</form>

</div>
</div>

</body>
</html>
