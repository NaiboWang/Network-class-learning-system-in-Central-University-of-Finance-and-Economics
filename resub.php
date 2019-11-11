<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
</head>
<script>

		  function check()
		  {
			  if(confirm('确认提交信息吗？'))
			  document.getElementById('form1').submit()
				else
				document.getElementById('form2').submit()
   
			 }
		
</script>
<body onload="check()">
<form action="resuccess.php" method="post" name="form1" id="form1"  >
 <input  name="username" type="hidden" id="username" value="<?php echo $_POST['username'] ?>"  ><input name="pass"  onBlur="checkps();" type="hidden" id="pass" value="<?php echo $_POST['pass'] ?>" ><input name="sname" type="hidden" id="sname" value="<?php echo $_POST['sname'] ?>" >
</form>
          


         
</body>
</html>