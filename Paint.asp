<%@LANGUAGE="VBSCRIPT"  CODEPAGE="65001"%>
<!--#include file="Connections/mysql.asp" -->
<%
Dim Recordset1
Dim Recordset1_cmd
Dim Recordset1_numRows
Set Recordset1_cmd = Server.CreateObject ("ADODB.Command")
Recordset1_cmd.ActiveConnection = MM_mysql_STRING
Recordset1_cmd.CommandText = "SELECT * FROM video.count WHERE month = '"&request.QueryString("month")&"'" 
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
Recordset2_cmd.CommandText = "SELECT sum(count) as sum FROM video.count WHERE month = '"&request.QueryString("month")&"'" 
Recordset2_cmd.Prepared = true

Set Recordset2 = Recordset2_cmd.Execute
Recordset2_numRows = 0
%>


<%
Dim Repeat1__numRows
Dim Repeat1__index

Repeat1__numRows = -1
Repeat1__index = 0
Recordset1_numRows = Recordset1_numRows + Repeat1__numRows
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>系统访问量统计</title>
<script src="http://code.jquery.com/jquery-1.4.1.min.js"></script>

<script src="highcharts.js"></script>
<script>

$(function () {
         var xdata = [];
         var series = [];
         var xtmp= ['start',
		 <% 
While ((Repeat1__numRows <> 0) AND (NOT Recordset1.EOF)) 
%>
  <%="'"&(Recordset1.Fields.Item("date").Value)&"',"%>
  <% 
  Repeat1__index=Repeat1__index+1
  Repeat1__numRows=Repeat1__numRows-1
  Recordset1.MoveNext()
Wend
%>'end'];
         var stmp=[0, <% 
		 Recordset1.MoveFirst()
While ((Repeat1__numRows <> 0) AND (NOT Recordset1.EOF)) 
%>

  <%=(Recordset1.Fields.Item("count").Value)&","%>
  <% 
  Repeat1__index=Repeat1__index+1
  Repeat1__numRows=Repeat1__numRows-1
  Recordset1.MoveNext()
Wend
%>0];
         for(var i=0;i<xtmp.length;i++){
            xdata.push(xtmp[i]);
         }
          for(var i=0;i<stmp.length;i++){
            series.push(stmp[i]);
         }
    $('#container').highcharts({
        chart: {
            //plotBackgroundImage: '',
            type: 'line'
        },
        title: {
            text: '<%=request.QueryString("month")%>月份访问量'
        },
        subtitle: {
            text: '该月总访问量：<%=(Recordset2.Fields.Item("sum").Value)%>'
        },
        xAxis: {
            title: {
                text: '日期'
            },
             categories:xdata
        
        },
        yAxis: {
            title: {
                text: '访问量'
            }
        },
        tooltip: {
            enabled: false,
            formatter: function() {
                return '<b>'+ this.series.name +'</b><br/>'+this.x +': '+ this.y +'°C';
            }
        },
        plotOptions: {
            line: {
                dataLabels: {
                    enabled: true
                },
                enableMouseTracking: false
            }
        },
        series: [{
            name: '日访问量',
            data: series
        }]
    });


});
</script>
<script src="theme.js"></script>
  
</head>
<body style="alignment-adjust:middle">
<div align="center">
<p align="center" style="font-size:24px">请选择要查看的月份</p>
<a href="Paint.asp?month=07"><input type="button"  name="12" id="12" value="7月份" style="font-size: 16px;
  font-weight: 300 !important;
  position:relative;
  color: #fff;
  cursor: pointer;
  outline: none;
  padding: 10px 15px;
  width: 7%;
  border: none;
  background: #00BBFF ;
  border-radius: 2px;
  -webkit-border-radius: 2px;
  -moz-border-radius: 2px;
  -o-border-radius: 2px;
  text-transform: uppercase;margin-left:10px" onMouseOver="this.style.background='#9900FF'" onMouseOut="this.style.background='#00BBFF '" /></a>
  <a href="Paint.asp?month=08"><input type="button"  name="12" id="12" value="8月份" style="font-size: 16px;
  font-weight: 300 !important;
  position:relative;
  color: #fff;
  cursor: pointer;
  outline: none;
  padding: 10px 15px;
  width: 7%;
  border: none;
  background: #00BBFF ;
  border-radius: 2px;
  -webkit-border-radius: 2px;
  -moz-border-radius: 2px;
  -o-border-radius: 2px;
  text-transform: uppercase;margin-left:10px" onMouseOver="this.style.background='#9900FF'" onMouseOut="this.style.background='#00BBFF '" /></a>
  <a href="Paint.asp?month=09"><input type="button"  name="12" id="12" value="9月份" style="font-size: 16px;
  font-weight: 300 !important;
  position:relative;
  color: #fff;
  cursor: pointer;
  outline: none;
  padding: 10px 15px;
  width: 7%;
  border: none;
  background: #00BBFF ;
  border-radius: 2px;
  -webkit-border-radius: 2px;
  -moz-border-radius: 2px;
  -o-border-radius: 2px;
  text-transform: uppercase;margin-left:10px" onMouseOver="this.style.background='#9900FF'" onMouseOut="this.style.background='#00BBFF '" /></a>
  <a href="Paint.asp?month=10"><input type="button"  name="12" id="12" value="10月份" style="font-size: 16px;
  font-weight: 300 !important;
  position:relative;
  color: #fff;
  cursor: pointer;
  outline: none;
  padding: 10px 15px;
  width: 7%;
  border: none;
  background: #00BBFF ;
  border-radius: 2px;
  -webkit-border-radius: 2px;
  -moz-border-radius: 2px;
  -o-border-radius: 2px;
  text-transform: uppercase;margin-left:10px" onMouseOver="this.style.background='#9900FF'" onMouseOut="this.style.background='#00BBFF '" /></a>
  <a href="Paint.asp?month=11"><input type="button"  name="12" id="12" value="11月份" style="font-size: 16px;
  font-weight: 300 !important;
  position:relative;
  color: #fff;
  cursor: pointer;
  outline: none;
  padding: 10px 15px;
  width: 7%;
  border: none;
  background: #00BBFF ;
  border-radius: 2px;
  -webkit-border-radius: 2px;
  -moz-border-radius: 2px;
  -o-border-radius: 2px;
  text-transform: uppercase;margin-left:10px" onMouseOver="this.style.background='#9900FF'" onMouseOut="this.style.background='#00BBFF '" /></a>
  <a href="Paint.asp?month=12"><input type="button"  name="12" id="12" value="12月份" style="font-size: 16px;
  font-weight: 300 !important;
  position:relative;
  color: #fff;
  cursor: pointer;
  outline: none;
  padding: 10px 15px;
  width: 7%;
  border: none;
  background: #00BBFF ;
  border-radius: 2px;
  -webkit-border-radius: 2px;
  -moz-border-radius: 2px;
  -o-border-radius: 2px;
  text-transform: uppercase;margin-left:10px" onMouseOver="this.style.background='#9900FF'" onMouseOut="this.style.background='#00BBFF '" /></a>
<div id="container"style="margin:20px;width:1200px; height:600px;"> </div>
</div>
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
