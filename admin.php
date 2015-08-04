<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<?php
Session_start();
if(!empty($_POST['nickname'])){
$nickname = $_POST['nickname'];
$password = $_POST['password'];
//echo $nickname;
define("HOST","localhost");	//主机名
define("USER","root");		//账号
define("PASS","8vdyBMU8");		//密码
define("DBNAME","jnyo");	//数据库名
$link = @mysql_connect(HOST,USER,PASS) or die("数据库连接失败！");
mysql_select_db(DBNAME,$link);
mysql_query("set names utf8");
$checksql = "select * from jnyo_admin where nickname='{$nickname}' and password='{$password}'";
$check = mysql_query($checksql,$link);

					
				//4. 判断是否获取到了要修改的信息
					if($check && mysql_num_rows($check)>0){
					echo ("验证成功！");

					$_SESSION['admin']="三国杀";
					Echo $_SESSION['admin'];
					header("Location:/user/index.php");
					}else{
						unset($_SESSION['admin']) ;
						die("Your password failed!") ;
					}
					//}


}else{
	//echo "nonickname";
}

	

?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台登录</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<meta name="keywords" content="cps, admin" />

<link href="css/style.css" rel='stylesheet' type='text/css' />

<script type="text/javascript" src="js/jquery.min.js"></script>

</head>
<body>
<script>$(document).ready(function(c) {
	$('.close').on('click', function(c){
		$('.login-form').fadeOut('slow', function(c){
	  		$('.login-form').remove();
		});
	});	  
});
</script>

<h1>后台登录</h1>
<div class="login-form">
	<div class="close"> </div>
	<div class="head-info">
		<label class="lbl-1"> </label>
		<label class="lbl-2"> </label>
		<label class="lbl-3"> </label>
	</div>
	<div class="clear"> </div>
	<div class="avtar"><img src="images/avtar.png" /></div>
	<form action="admin.php" method="post">
	  <input type="text" name="nickname" />
  <input type="password" name="password" />
  <input type="submit" value="管理员登录" />
			</form>
	
</div>
<div class="copy-rights">
	<p>Copyright &copy; 2015.cps All rights reserved.<a target="_blank" href="#">后台登录</a></p>
</div>

</body>
</html>