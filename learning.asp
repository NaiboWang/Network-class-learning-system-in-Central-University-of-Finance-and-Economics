<%@LANGUAGE="VBSCRIPT"  CODEPAGE="65001"%>
<!--#include file="Connections/mysql.asp" -->
<%
Dim Recordset1__MMColParam
Recordset1__MMColParam = "1"
If (Session("MM_Username") <> "") Then 
  Recordset1__MMColParam = Session("MM_Username")
  else
  Session("MM_Username") = "666"
End If
%>
<%
Dim Recordset1
Dim Recordset1_cmd
Dim Recordset1_numRows

Set Recordset1_cmd = Server.CreateObject ("ADODB.Command")
Recordset1_cmd.ActiveConnection = MM_mysql_STRING
Recordset1_cmd.CommandText = "SELECT * FROM video.用户 WHERE 工号 = '"& Session("MM_Username")&"'" 
Recordset1_cmd.Prepared = true
Recordset1_cmd.Parameters.Append Recordset1_cmd.CreateParameter("param1", 200, 1, 255, Recordset1__MMColParam) ' adVarChar

Set Recordset1 = Recordset1_cmd.Execute
Recordset1_numRows = 0
%>
<%
Dim Recordset2__MMColParam
Recordset2__MMColParam = "1"
If (Session("MM_Username") <> "") Then 
  Recordset2__MMColParam = Session("MM_Username")
End If
%>
<%
Dim Recordset3__MMColParam
Recordset3__MMColParam = "1"
If (Session("MM_Username") <> "") Then 
  Recordset3__MMColParam = Session("MM_Username")
End If
%>
<%
Dim Recordset4__MMColParam
Recordset4__MMColParam = "1"
If (Session("MM_Username") <> "") Then 
  Recordset4__MMColParam = Session("MM_Username")
End If
%>
<%
Dim Recordset5__MMColParam
Recordset5__MMColParam = "1"
If (Session("MM_Username") <> "") Then 
  Recordset5__MMColParam = Session("MM_Username")
End If
%>
<%
Dim Recordset2
Dim Recordset2_cmd
Dim Recordset2_numRows

Set Recordset2_cmd = Server.CreateObject ("ADODB.Command")
Recordset2_cmd.ActiveConnection = MM_mysql_STRING
Recordset2_cmd.CommandText = "SELECT * FROM video.信息, video.视频 WHERE 用户工号 = '"& Session("MM_Username")&"' AND 类 = '统计学' and 视频ID = ID" 
Recordset2_cmd.Prepared = true
Recordset2_cmd.Parameters.Append Recordset2_cmd.CreateParameter("param1", 200, 1, 255, Recordset2__MMColParam) ' adVarChar

Set Recordset2 = Recordset2_cmd.Execute
Recordset2_numRows = 0
%>
<%
Dim Recordset3
Dim Recordset3_cmd
Dim Recordset3_numRows

Set Recordset3_cmd = Server.CreateObject ("ADODB.Command")
Recordset3_cmd.ActiveConnection = MM_mysql_STRING
Recordset3_cmd.CommandText = "SELECT * FROM video.信息, video.视频 WHERE 用户工号 = '"& Session("MM_Username")&"' AND 类 = '数学' and 视频ID = ID" 
Recordset3_cmd.Prepared = true
Recordset3_cmd.Parameters.Append Recordset3_cmd.CreateParameter("param1", 200, 1, 255, Recordset3__MMColParam) ' adVarChar

Set Recordset3 = Recordset3_cmd.Execute
Recordset3_numRows = 0
%>
<%
Dim Recordset4
Dim Recordset4_cmd
Dim Recordset4_numRows

Set Recordset4_cmd = Server.CreateObject ("ADODB.Command")
Recordset4_cmd.ActiveConnection = MM_mysql_STRING
Recordset4_cmd.CommandText = "SELECT * FROM video.信息, video.视频 WHERE 用户工号 = '"& Session("MM_Username")&"' AND 类 = 'MBA' and 视频ID = ID" 
Recordset4_cmd.Prepared = true
Recordset4_cmd.Parameters.Append Recordset4_cmd.CreateParameter("param1", 200, 1, 255, Recordset4__MMColParam) ' adVarChar

Set Recordset4 = Recordset4_cmd.Execute
Recordset4_numRows = 0
%>
<%
Dim Recordset5
Dim Recordset5_cmd
Dim Recordset5_numRows

Set Recordset5_cmd = Server.CreateObject ("ADODB.Command")
Recordset5_cmd.ActiveConnection = MM_mysql_STRING
Recordset5_cmd.CommandText = "SELECT * FROM video.信息, video.视频 WHERE 用户工号 = '"& Session("MM_Username")&"' AND 类 = '计算机' and 视频ID = ID" 
Recordset5_cmd.Prepared = true
Recordset5_cmd.Parameters.Append Recordset5_cmd.CreateParameter("param1", 200, 1, 255, Recordset5__MMColParam) ' adVarChar

Set Recordset5 = Recordset5_cmd.Execute
Recordset5_numRows = 0
%>
<%
Dim Recordset6__MMColParam
Recordset6__MMColParam = "1"
If (Session("MM_Username") <> "") Then 
  Recordset6__MMColParam = Session("MM_Username")
End If
%>
<%
Dim Recordset6
Dim Recordset6_cmd
Dim Recordset6_numRows

Set Recordset6_cmd = Server.CreateObject ("ADODB.Command")
Recordset6_cmd.ActiveConnection = MM_mysql_STRING
Recordset6_cmd.CommandText = "SELECT * FROM video.信息, video.视频 WHERE 用户工号 = '"& Session("MM_Username")&"' AND 类 = '统计软件' and 视频ID = ID" 
Recordset6_cmd.Prepared = true
Recordset6_cmd.Parameters.Append Recordset6_cmd.CreateParameter("param1", 200, 1, 255, Recordset6__MMColParam) ' adVarChar

Set Recordset6 = Recordset6_cmd.Execute
Recordset6_numRows = 0
%>
<%
Dim Repeat1__numRows
Dim Repeat1__index

Repeat1__numRows = -1
Repeat1__index = 0
Recordset2_numRows = Recordset2_numRows + Repeat1__numRows
%>
<%
Dim Repeat2__numRows
Dim Repeat2__index

Repeat2__numRows = -1
Repeat2__index = 0
Recordset3_numRows = Recordset3_numRows + Repeat2__numRows
%>
<%
Dim Repeat3__numRows
Dim Repeat3__index

Repeat3__numRows = -1
Repeat3__index = 0
Recordset5_numRows = Recordset5_numRows + Repeat3__numRows
%>
<%
Dim Repeat4__numRows
Dim Repeat4__index

Repeat4__numRows = -1
Repeat4__index = 0
Recordset4_numRows = Recordset4_numRows + Repeat4__numRows
%>
<%
Dim Repeat5__numRows
Dim Repeat5__index

Repeat5__numRows = -1
Repeat5__index = 0
Recordset6_numRows = Recordset6_numRows + Repeat5__numRows
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>知识学习</title>
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="images/js/jquery.circliful.min.js"></script>
<style type="text/css">

#topDiv {
	position: absolute;
	width: 1300px;
	height: 180px;
	z-index: 6;
	left: 10px;
	top: 7px;
}
#tableDiv {
	position: absolute;
	width: 1298px;
	height: 45px;
	z-index: 9;
	left: 10px;
	top: 196px;
}
#jianjieDiv {
	position: absolute;
	width: 472px;
	height: 309px;
	z-index: 10;
	left: 11px;
	top: 140px;
}
#jinduDiv {
	position: absolute;
	width: 806px;
	height: 309px;
	z-index: 11;
	left: 498px;
	top: 142px;
}
#subjectDiv {
	position: absolute;
	width: 644px;
	height: 329px;
	z-index: 12;
	left: 10px;
	top: 243px;
}
#apDiv1 {
	position: absolute;
	width: 644px;
	height: 329px;
	z-index: 12;
	left: 664px;
	top: 244px;
}
</style>
<link href="SpryAssets/SpryTabbedPanels.css" rel="stylesheet" type="text/css" />
<style type="text/css">
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
	left: 152px;
	top: 18px;
}
#subjectDiv1 {
	position: absolute;
	width: 180px;
	height: 146px;
	z-index: 13;
	top: 2px;
	left: 177px;
}
#subjectDiv2 {
	position: absolute;
	width: 178px;
	height: 140px;
	z-index: 13;
	top: 4px;
	left: 370px;
}
#subjectDiv3 {
	position: absolute;
	width: 184px;
	height: 135px;
	z-index: 13;
	top: 154px;
	left: 175px;
}
#subjectDiv4 {
	position: absolute;
	width: 177px;
	height: 133px;
	z-index: 13;
	top: 152px;
	left: 372px;
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
</style>
<script src="SpryAssets/SpryTabbedPanels.js" type="text/javascript"></script>
</head>
<style>
#graphbox{
border:1px solid #e7e7e7;
padding:10px;
width:250px;
background-color:#f8f8f8;
margin:5px 0;
}
#graphbox h2{
color:#666666;
font-family:Arial;
font-size:18px;
font-weight:700;
}
.graph{
position:relative;
background-color:#F0EFEF;
border:1px solid #cccccc;
padding:2px;
font-size:13px;
font-weight:700;
}
.graph .orange, .green, .blue, .red, .black{
position:relative;
text-align:left;
color:#ffffff;
height:18px;
line-height:18px;
font-family:Arial;
display:block;
}
.graph .orange{background-color:green;}
.graph .green{background-color:green;}
.graph .blue{background-color:green;}
.graph .red{background-color:green;}
.graph .black{background-color:green;}
</style>





<body bgcolor="#FFFFCC">
<div id="topDiv" align="left"><img src="images/长图.jpg" width="1298px" height="180px"><font size="+3"  color="black">&nbsp;&nbsp;</font>
  <div id="apDiv2"></div>
</div>
<div id="tableDiv" align="center">
<table width="1300" height="35" border="1" align="center" rules="cols">
     <th width="227" bgcolor="#CC3300"><a href="toppage.asp" style="text-decoration:none"><font color="white">主页</font></a></th>
    <th width="227" bgcolor="#CC3300"><a href="zhibupage.html" style="text-decoration:none"><font color="white">支部共建</font></a></th>
    <th width="227" bgcolor="red"><font color="white">知识学习</font></th>
    <th width="227" bgcolor="#CC3300"><a href="企业文化.html" style="text-decoration:none"><font color="white">企业简介</font></a></th>
    <th width="227" bgcolor="#CC3300"><a href="./index.asp" style="text-decoration:none"><font color="white">个人主页</font></a></th>
    <th width="105" bgcolor="#CC3300"><a href="" style="text-decoration:none"
    ><font color="white">更多</font></a></th>
  </tr>
</table>
</div>
<article class="zzsc-container">
	<div class="zzsc-content">
 
<div class="progress" id="vader"></div>
		  <div class="progress" id="yoda"></div>
		  <div class="progress" id="obi"></div>
		  <div class="progress" id="windu"></div>
		  <script>
			var vd=$("#vader").ProgressBarWars({porcentaje:20,estilo:"vader"});
			var yd=$("#yoda").ProgressBarWars({porcentaje:30,estilo:"yoda"});
			var ob=$("#obi").ProgressBarWars({porcentaje:50,estilo:"obi"});
			var wd=$("#windu").ProgressBarWars({porcentaje:80,estilo:"windu"});
		  </script>
		  
          
          
<div id="subjectDiv">
  <div id="TabbedPanels1" class="TabbedPanels">
    <ul class="TabbedPanelsTabGroup">
      <li class="TabbedPanelsTab" tabindex="0" style="color:white"><font size="+1">统计学</font></li>
      <li class="TabbedPanelsTab" tabindex="0" style="color:white"><font size="+1">数学</font></li>
      <li class="TabbedPanelsTab" tabindex="0" style="color:white"><font size="+1">计算机</font></li>
      <li class="TabbedPanelsTab" tabindex="0" style="color:white"><font size="+1">MBA</font></li>
      <li class="TabbedPanelsTab" tabindex="0" style="color:white"><font size="+1">统计软件</font></li>
    </ul>
    <div class="TabbedPanelsContentGroup">
      <div class="TabbedPanelsContent">
    <table   border="0">  
    
      <% 
	  if Session("MM_Username") = "666"then
	  %>
	  <tr >
      <td  align="right" >
<font style=" background-color: yellow" size="+2">请先登录后再使用。</td>
       
    </tr>

	  <%
	  end if
While ((Repeat1__numRows <> 0) AND (NOT Recordset2.EOF)) 
%>
<tr >
      <td  align="right" >
<font style=" background-color: yellow" size="+2">视频<%=Repeat1__index+1%>：</font></td>
      <td><a href="video.asp?ID=<%=(Recordset2.Fields.Item("md5").Value)%>"><font style=" background-color: yellow" size="+2"><%=(Recordset2.Fields.Item("视频名").Value)%></font></a></td>
       
    </tr>
        <% 
  Repeat1__index=Repeat1__index+1
  Repeat1__numRows=Repeat1__numRows-1
  Recordset2.MoveNext()
Wend
%>
    </table>
      </div>
      <div class="TabbedPanelsContent">
       <table   border="0">
        <% 
While ((Repeat2__numRows <> 0) AND (NOT Recordset3.EOF)) 
%>
 
    
    <tr >
      <td  align="right" ><font style=" background-color: yellow" size="+2"> 视频<%=Repeat2__index+1%>:</font></td>
      <td><a href="video.asp?ID=<%=(Recordset3.Fields.Item("md5").Value)%>"><font style=" background-color: yellow" size="+2"><%=(Recordset3.Fields.Item("视频名").Value)%></font></a></td>
      
      </tr>

  <% 
  Repeat2__index=Repeat2__index+1
  Repeat2__numRows=Repeat2__numRows-1
  Recordset3.MoveNext()
Wend
%>
  </table>
<p><p></div>
      <div class="TabbedPanelsContent">
      <table   border="0">
        <% 
While ((Repeat3__numRows <> 0) AND (NOT Recordset5.EOF)) 
%>
  
    <tr >
      <td  align="right" > <font style=" background-color: yellow" size="+2">视频<%=Repeat3__index+1%>：</font></td>
      <td><a href="video.asp?ID=<%=(Recordset5.Fields.Item("md5").Value)%>"><font style=" background-color: yellow" size="+2"><%=(Recordset5.Fields.Item("视频名").Value)%></font></a></td>
     
      </tr>
    

  <% 
  Repeat3__index=Repeat3__index+1
  Repeat3__numRows=Repeat3__numRows-1
  Recordset5.MoveNext()
Wend
%>
  </table>
<p><p></div>
      <div class="TabbedPanelsContent">
      <table   border="0">
        <% 
While ((Repeat4__numRows <> 0) AND (NOT Recordset4.EOF)) 
%>
  
    
    <tr >
      <td  align="right" ><font style=" background-color: yellow" size="+2"> 视频<%=Repeat4__index+1%>：</font></td>
      <td><a href="video.asp?ID=<%=(Recordset4.Fields.Item("md5").Value)%>"><font style=" background-color: yellow" size="+2"><%=(Recordset4.Fields.Item("视频名").Value)%></font></a></td>
     
      </tr>
    

  <% 
  Repeat4__index=Repeat4__index+1
  Repeat4__numRows=Repeat4__numRows-1
  Recordset4.MoveNext()
Wend
%>
  </table>
<p><p></div>

      
      
      
      <div class="TabbedPanelsContent">
    <table   border="0">  
      <% 
While ((Repeat5__numRows <> 0) AND (NOT Recordset6.EOF)) 
%>
<tr >
      <td  align="right" >
<font style=" background-color: yellow" size="+2">视频<%=Repeat5__index+1%>：</font></td>
      <td><a href="video.asp?ID=<%=(Recordset6.Fields.Item("md5").Value)%>"><font style=" background-color: yellow" size="+2"><%=(Recordset6.Fields.Item("视频名").Value)%></font></a></td>
       
    </tr>
        <% 
  Repeat5__index=Repeat5__index+1
  Repeat5__numRows=Repeat5__numRows-1
  Recordset6.MoveNext()
Wend
%>
    </table>
      </div>
      
      
      
      
    </div>
    
  </div>
</div>
<script type="text/javascript">
var TabbedPanels1 = new Spry.Widget.TabbedPanels("TabbedPanels1");
</script>
<script> 
$( document ).ready(function() { 
        $('#myStat1').circliful(); 
    }); 
</script>
<script> 
$( document ).ready(function() { 
        $('#myStat2').circliful(); 
    }); 
</script>
<script> 
$( document ).ready(function() { 
        $('#myStat3').circliful(); 
    }); 
</script>
<div id="apDiv1">
<img src="images/zhishixuexi1.jpg" width="644px" />
</div>
<script> 
$( document ).ready(function() { 
        $('#myStat4').circliful(); 
    }); 
</script>
</body>
</html>
<%
Recordset1.Close()
Set Recordset1 = Nothing
%>
<%
Recordset2.Close()
Set Recordset2 = Nothing
%>
<%
Recordset3.Close()
Set Recordset3 = Nothing
%>
<%
Recordset4.Close()
Set Recordset4 = Nothing
%>
<%
Recordset5.Close()
Set Recordset5 = Nothing
%>
<%
Recordset6.Close()
Set Recordset6 = Nothing
%>
