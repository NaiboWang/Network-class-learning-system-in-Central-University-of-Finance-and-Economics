<%@LANGUAGE="VBSCRIPT"  CODEPAGE="65001"%>
<!--#include file="Connections/mysql.asp" -->
<%
Dim Recordset1__MMColParam
Recordset1__MMColParam = "1"
If (Session("MM_Username") <> "") Then 
  Recordset1__MMColParam = Session("MM_Username")
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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人信息</title>
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script> 
<script src="images/js/jquery.circliful.min.js"></script>

<style type="text/css">

#topDiv {
	position: absolute;
	width: 1300px;
	height: 80px;
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
	left: 10px;
	top: 241px;
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
	left: 474px;
	top: 78px;
}
#apDiv6 {
	position: absolute;
	width: 145px;
	height: 32px;
	z-index: 13;
	left: 522px;
	top: 276px;
}
</style>
</head>




<body>

<div id="topDiv" align="left"><img src="images/长图.jpg" width="1298px" height="180px">
  <div id="apDiv1" align="center"><font color="green">当前用户<br>
  <%=(Recordset1.Fields.Item("姓名").Value)%></font></div>
</div>
<div id="tableDiv" align="center">
<table width="1300" height="35" border="1" align="center" rules="cols">
  <tr bordercolor="white">
    <th width="227" bgcolor="#CC3300"><a href="toppage.asp" style="text-decoration:none"><font color="white">主页</font></a></th>
    <th width="227" bgcolor="#CC3300"><a href="zhibupage.html" style="text-decoration:none"><font color="white">支部共建</font></a></th>
    <th width="227" bgcolor="#CC3300"><a href="learning.asp" style="text-decoration:none"><font color="white">知识学习</font></a></th>
    <th width="227" bgcolor="#CC3300"><a href="企业文化.html" style="text-decoration:none"><font color="white">企业简介</font></a></th>
    <th width="227"  bgcolor="red"><a href="" style="text-decoration:none"><font color="white">个人主页</font></a></th>
    <th width="105" bgcolor="#CC3300"><a href="" style="text-decoration:none"
    ><font color="white">更多</font></a></th>
  </tr>
</table>
</div>
<div id="message" style=" background-image:url(images/bg00.jpg)">
  <div id="apDiv2"><img src="images/headpicture.png" style="width:200px; height:200px"/></div>
  <div id="apDiv3" style=" background-color:rgba(255,0,0,0.2); text-height:20px;">
   <div id="apDiv5">
   <pre>
   <font color="black" size="+2">
   用户名：<%=(Recordset1.Fields.Item("工号").Value)%>
   姓名：<%=(Recordset1.Fields.Item("姓名").Value)%>
   党支部：商品中心党支部
   部门：<%=(Recordset1.Fields.Item("部门").Value)%>
   </font><font color="red" size="+2">总需学时：1200分钟
   </font><font color="green" size="+2">已达学时:</font><font color="red" size="+2"> </font><font color="green" size="+2"><%=(int(Int(Recordset1.Fields.Item("总时长").Value)/60))%>分钟
   </font>
   </pre>
   </div>
   <div id="apDiv6" style=" background-color:#C30"><a href="./learning.asp" style="text-decoration:none"><font color="#FFFFFF" size="+2">点此继续学习</font></a></div>
  </div>
</div>
<div id="apDiv4">
<div id="jinduDiv">&nbsp;&nbsp;
<font size="+2" color="black">学时统计</font><p>
  
    <div id="subjectDiv1">
    <font color="black"><%=(Int(Int(Recordset1.Fields.Item("统计学").Value)/60))%>分钟</font>
   	  <div id="myStat1" data-dimension="150" data-text="统计学"    	data-info="New Clients"  
    	data-width="10" data-fontsize="15"
        data-percent="<%=(Int(CInt(Recordset1.Fields.Item("统计学").Value)*100/20688))%>" data-fgcolor="#090"  
        data-bgcolor="#eee" data-fill="#ddd"></div> 
    </div>
    <div id="subjectDiv2">
    <font color="black"><%=(Int(Int(Recordset1.Fields.Item("数学").Value)/60))%>分钟</font>
   	  <div id="myStat2" data-dimension="150" data-text="数学"    	data-info="New Clients"  
    	data-width="10" data-fontsize="15"
        data-percent="<%=(Int(Int(Recordset1.Fields.Item("数学").Value)*100/12712))%>" data-fgcolor="blue"  
        data-bgcolor="#eee" data-fill="#ddd"></div> 
    </div>
    <div id="subjectDiv3">
    <font color="black"><%=(Int(Int(Recordset1.Fields.Item("计算机").Value)/60))%>分钟</font>
   	  <div id="myStat3" data-dimension="150" data-text="计算机"    	data-info="New Clients"  
    	data-width="10" data-fontsize="15"
        data-percent="<%=(Int(Int(Recordset1.Fields.Item("计算机").Value)*100/26910))*100%>" data-fgcolor="#60F"  
        data-bgcolor="#eee" data-fill="#ddd"></div> 
    </div>
     <div id="subjectDiv4">
     <font color="black"><%=(Int(Int(Recordset1.Fields.Item("MBA").Value)/60))%>分钟</font>
    	<div id="myStat4" data-dimension="150" data-text="MBA"    	data-info="New Clients"  
    	data-width="10" data-fontsize="15"
        data-percent="<%=(Int(Int(Recordset1.Fields.Item("MBA").Value)*100/6366))%>" data-fgcolor="#F93"  
        data-bgcolor="#eee" data-fill="#ddd"></div> 
     </div>
     <div id="subjectDiv5">
     <font color="black"><%=(Int(Int(Recordset1.Fields.Item("统计软件").Value)/60))%>分钟</font>
    	<div id="myStat5" data-dimension="150" data-text="统计学软件"    	data-info="New Clients"  
    	data-width="10" data-fontsize="15"
        data-percent="<%=(Int(Int(Recordset1.Fields.Item("统计软件").Value)*100/900))%>" data-fgcolor="#F63"  
        data-bgcolor="#eee" data-fill="#ddd"></div> 
     </div>

</div>
</div>

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
<script> 
$( document ).ready(function() { 
        $('#myStat4').circliful(); 
    }); 
</script>
<script> 
$( document ).ready(function() { 
        $('#myStat5').circliful(); 
    }); 
</script>


</body>
</html>
<%
Recordset1.Close()
Set Recordset1 = Nothing
%>