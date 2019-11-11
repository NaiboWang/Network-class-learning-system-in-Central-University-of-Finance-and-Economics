<%@LANGUAGE="VBSCRIPT"  CODEPAGE="65001"%>
<!--#include file="Connections/mysql.asp" -->
<%
Dim Recordset1
Dim Recordset1_cmd
Dim Recordset1_numRows
Set Recordset1_cmd = Server.CreateObject ("ADODB.Command")
Recordset1_cmd.ActiveConnection = MM_mysql_STRING
Recordset1_cmd.CommandText = "SELECT * FROM video.用户" 
Recordset1_cmd.Prepared = true

Set Recordset1 = Recordset1_cmd.Execute
Recordset1_numRows = 0
%>

<%
Dim Repeat1__numRows
Dim Repeat1__index

Repeat1__numRows = -1
Repeat1__index = 0
Recordset1_numRows = Recordset1_numRows + Repeat1__numRows
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>学习信息查看</title>
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script> 
<script src="images/js/jquery.circliful.min.js"></script>

<style type="text/css">

#topDiv {
	position: absolute;
	width: 1300px;
	height: 80px;
	z-index: 6;
	left: 11px;
	top: 10px;
}
#tableDiv {
	position: absolute;
	width: 1298px;
	height: 45px;
	z-index: 9;
	left: 10px;
	top: 196px;
}


#apDiv1 {
	position: absolute;
	width: 142px;
	height: 71px;
	z-index: 1;
	left: 1156px;
	top: 5px;
}
#topDiv #apDiv1 font {
	font-weight: bold;
}
#message {
	position: absolute;
	width: 1304px;
	height: 790px;
	z-index: 10;
	left: 11px;
	top: 190px;
}
#apDiv2 {
	position: absolute;
	width: 207px;
	height: 201px;
	z-index: 1;
	left: 443px;
	top: 153px;
}
#apDiv3 {
	position: absolute;
	width: 930px;
	height: 711px;
	z-index: 2;
	left: 195px;
	top: 48px;
	visibility: inherit;
}
#apDiv4 {
	position: absolute;
	width: 864px;
	height: 318px;
	z-index: 11;
	left: 236px;
	top: 655px;
}
#headpictureDiv {
	position: absolute;
	width: 120px;
	height: 160px;
	z-index: 13;
	left: 108px;
	top: 35px;
}
#tongjiDiv {
	position: absolute;
	width: 571px;
	height: 289px;
	z-index: 14;
	left: 86px;
	top: 19px;
}
#subjectDiv1 {
	position: absolute;
	width: 180px;
	height: 146px;
	z-index: 13;
	top: 47px;
	left: 4px;
}
#subjectDiv2 {
	position: absolute;
	width: 178px;
	height: 140px;
	z-index: 13;
	top: 48px;
	left: 343px;
}
#subjectDiv3 {
	position: absolute;
	width: 184px;
	height: 135px;
	z-index: 13;
	top: 50px;
	left: 166px;
}
#subjectDiv4 {
	position: absolute;
	width: 177px;
	height: 133px;
	z-index: 13;
	top: 48px;
	left: 513px;
}
#subjectDiv5 {
	position: absolute;
	width: 177px;
	height: 133px;
	z-index: 13;
	top: 49px;
	left: 677px;
}
.circliful { 
    position: relative;  
} 
.circle-text, .circle-info, .circle-text-half, .circle-info-half { 
    width: 100%; 
    position: absolute; 
    text-align: center; 
    display: inline-block; 
} 
.circle-info, .circle-info-half { 
    color: #999; 
} 
.circliful .fa { 
    margin: -10px 3px 0 3px; 
    position: relative; 
    bottom: 4px; 
} 
#personmessageDiv {
	position: absolute;
	width: 216px;
	height: 102px;
	z-index: 15;
	left: 57px;
	top: 205px;
}
#apDiv5 {
	position: absolute;
	width: 276px;
	height: 154px;
	z-index: 12;
	left: 476px;
	top: 106px;
}
#apDiv6 {
	position: absolute;
	width: 145px;
	height: 32px;
	z-index: 13;
	left: 533px;
	top: 260px;
}
</style>
</head>




<body>
<div align="center">
<div id="topDiv" align="left"><img src="images/长图.jpg" width="1298px" height="180px"></div>
<div id="message" style=" background-image:url(images/bg00.jpg)">
  <div id="apDiv3" style=" background-color:#CF9; text-height:20px;">
  
  <div id="topDisv" align="center">
<table border="1" style="border-collapse:collapse;border:none;text-align:center">
  <tr>
    <td style="border:solid #000 1px;">工号</td>
    <td style="border:solid #000 1px;">姓名</td>
    <td style="border:solid #000 1px;">党支部</td>
    <td style="border:solid #000 1px;">部门</td>
    <td style="border:solid #000 1px;">总观看时长</td>
    <td style="border:solid #000 1px;">统计学</td>
    <td style="border:solid #000 1px;">数学</td>
    <td style="border:solid #000 1px;">MBA</td>
    <td style="border:solid #000 1px;">计算机</td>
    <td style="border:solid #000 1px;">统计软件</td>
  </tr>
   <% 
While ((Repeat1__numRows <> 0) AND (NOT Recordset1.EOF)) 
%>
  <tr>
    <td style="border:solid #000 1px;"><%=Recordset1.Fields.Item("工号").Value%></td>
    <td style="border:solid #000 1px;"><%=Recordset1.Fields.Item("姓名")%></td>
    <td style="border:solid #000 1px;">商品中心支部</td>
    <td style="border:solid #000 1px;"><%=Recordset1.Fields.Item("部门")%></td>
    <td style="border:solid #000 1px;"><%=INT(INT(Recordset1.Fields.Item("总时长"))/60)%>分钟</td>
    <td style="border:solid #000 1px;"><%=INT(INT(Recordset1.Fields.Item("统计学"))/60)%>分钟</td>
    <td style="border:solid #000 1px;"><%=INT(INT(Recordset1.Fields.Item("数学"))/60)%>分钟</td>
    <td style="border:solid #000 1px;"><%=INT(INT(Recordset1.Fields.Item("MBA"))/60)%>分钟</td>
    <td style="border:solid #000 1px;"><%=INT(INT(Recordset1.Fields.Item("计算机"))/60)%>分钟</td>
    <td style="border:solid #000 1px;"><%=INT(INT(Recordset1.Fields.Item("统计软件"))/60)%>分钟</td>
  </tr>
   <% 
  Repeat1__index=Repeat1__index+1
  Repeat1__numRows=Repeat1__numRows-1
  Recordset1.MoveNext()
Wend
%>
</table>
</div>

  </div>
</div>
</div>
</body>
</html>
<%
Recordset1.Close()
Set Recordset1 = Nothing
%>