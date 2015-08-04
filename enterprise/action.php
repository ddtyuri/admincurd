<?php
//这是一个信息增、删和改操作的处理页

//（1）、 导入配置文件
	require("dbconfig.php");
	
//（2）、连接MySQL、并选择数据库
	$link = @mysql_connect(HOST,USER,PASS) or die("数据库连接失败！");
	mysql_select_db(DBNAME,$link);
	mysql_query("set names utf8");
//（3）、根据需要action值，来判断所属操作，执行对应的代码
	switch($_GET["action"]){
		case "add": //执行添加操作
			//1. 获取要添加的信息，并补充其他信息
				
				$name = $_POST["name"];
				
				
				
				
				
					$checksql = "select * from jnyo_user where name='{$name}'";
					$check = mysql_query($checksql,$link);
					
				//4. 判断是否获取到了要修改的信息
					if($check && mysql_num_rows($check)>0){
						die("用户名重复！");
					}
					
					
				$password = md5($_POST["password"]);
				$balance = $_POST["balance"];
				$mobile = $_POST["mobile"];

				$type = $_POST["type"];
				$status = $_POST["status"];
				$timestamp = time();
				
			//2. 做信息过滤（省略）
			//3. 拼装添加SQL语句，并执行添加操作
				$sql = "insert into jnyo_user values(null,'{$name}','{$password}','{$balance}','{$mobile}','{$type}','{$status}','{$timestamp}')";

				//echo $sql;
				mysql_query($sql,$link);
				
			//4. 判断是否成功
				$id = mysql_insert_id($link);//获取刚刚添加信息的自增id号值
				if($id>0){
					echo "<h3>用户信息添加成功！</h3>";
					//header("Location:index.php");
					
					if($type == 1){
						echo "广告主(个人)";
						$sql1 = "insert into jnyo_advertiser_individual values('{$id}','未设置','未设置','未设置','未设置')";
						echo "$sql1";
						mysql_query($sql1,$link);
						header("Location:index.php");
					}else if($type == 2){
						echo "广告主（企业）";
						$sql1 = "insert into jnyo_advertiser_enterprise values('{$id}','未设置','未设置','未设置','未设置','未设置','未设置','未设置','未设置','未设置','未设置')";
						echo "$sql1";
						mysql_query($sql1,$link);
						header("Location:index.php");
					}else{
						echo "站长";
						$sql1 = "insert into jnyo_station values('{$id}','未设置','未设置','未设置','未设置','未设置')";
						mysql_query($sql1,$link);
						header("Location:index.php");
					}
					
					
					
					
					
					
				}else{
					echo "<h3>用户信息添加失败！</h3>";
				}
				echo "<a href='javascript:window.history.back();'>返回</a>&nbsp;&nbsp;";
				echo "<a href='index.php'>浏览用户</a>";
				
				break;
		
		case "del": //执行删除操作
				//1. 获取要删除的id号
				$jid=$_GET['id'];
				
				//2. 拼装删除sql语句，并执行删除操作
				$sql = "delete from jnyo_user where jid={$jid}";
				mysql_query($sql,$link);
				$sql2 = "delete from jnyo_advertiser_enterprise where jid={$jid}";
				$sql3 = "delete from jnyo_advertiser_individual where jid={$jid}";
				$sql4 = "delete from jnyo_station where jid={$jid}";
				mysql_query($sql2,$link);
				mysql_query($sql3,$link);
				mysql_query($sql4,$link);
				//echo $sql;
				//3. 自动跳转到浏览新闻界面
				header("Location:index.php");
			break;
			
		case "update": //执行修改操作
				//1. 获取要修改的信息
				$name = $_POST["name"];
				$license = $_POST["license"];
				$licenseimg = $_POST["licenseimg"];
				$realname = $_POST["realname"];
				$idnum = $_POST["idnum"];
				$idimg = $_POST["idimg"];
				$bankname = $_POST["bankname"];
				$accountname = $_POST["accountname"];
				$bankaccount = $_POST["bankaccount"];
				$tradepwd = $_POST["tradepwd"];
				$status = $_POST["status"];				
				$jid = $_POST['jid'];
				
				//2. 过滤要修改的信息（省略）
				//3. 拼装修改sql语句，并执行修改操作
				$sql = "update jnyo_advertiser_enterprise set name='{$name}',license='{$license}',licenseimg='{$licenseimg}',realname='{$realname}',idnum='{$idnum}',idimg='{$idimg}',bankname='{$bankname}',accountname='{$accountname}',bankaccount='{$bankaccount}',status='{$status}' where jid={$jid}";
				//echo $sql;
				mysql_query($sql,$link);
			
				//4. 跳转回浏览界面
				header("Location:index.php");
				
			break;
			
			
			
			
			
			
					case "updateindividual": //执行修改操作
				//1. 获取要修改的信息
				$realname = $_POST["realname"];
				$idnum = $_POST["idnum"];
				$email = $_POST["email"];
				$alipay = $_POST["alipay"];

				$jid = $_POST['jid'];
				
				//2. 过滤要修改的信息（省略）
				//3. 拼装修改sql语句，并执行修改操作
				$sql = "update jnyo_advertiser_individual set realname='{$realname}',idnum='{$idnum}',email='{$email}',alipay='{$alipay}' where jid={$jid}";
				//echo $sql;
				mysql_query($sql,$link);
			
				//4. 跳转回浏览界面
				header("Location:index.php");
				
				
			break;
			
			
			
			
			
			
			case "updateenterprise": //执行修改操作
			//1. 获取要修改的信息
			$name = $_POST["name"];
			$license = $_POST["license"];
			$licenseimg = $_POST["licenseimg"];
			$realname = $_POST["realname"];
			$idnum = $_POST["idnum"];
			$idimg = $_POST["idimg"];
			$bankname = $_POST["bankname"];
			$accountname = $_POST["accountname"];
			$bankaccount = $_POST["bankaccount"];
			$tradepwd = $_POST["tradepwd"];	
			
			
			$jid = $_POST['jid'];
			
			//2. 过滤要修改的信息（省略）
			//3. 拼装修改sql语句，并执行修改操作
			$sql = "update jnyo_advertiser_enterprise set name='{$name}',license='{$license}',licenseimg='{$licenseimg}',realname='{$realname}',idnum='{$idnum}',idimg='{$idimg}',bankname='{$bankname}',bankaccount='{$bankaccount}',accountname='{$accountname}',tradepwd='{$tradepwd}' where jid={$jid}";
			//echo $sql;
			mysql_query($sql,$link);
		
			//4. 跳转回浏览界面
			header("Location:index.php");
				
				
			break;
			
			
			
			
			
			case "updatestation": //执行修改操作
			//1. 获取要修改的信息
			$realname = $_POST["realname"];
			$idnum = $_POST["idnum"];
			$email = $_POST["email"];
			$alipay = $_POST["alipay"];
			$website = $_POST["website"];

			
			
			$jid = $_POST['jid'];
			
			//2. 过滤要修改的信息（省略）
			//3. 拼装修改sql语句，并执行修改操作
			$sql = "update jnyo_station set realname='{$realname}',idnum='{$idnum}',email='{$email}',alipay='{$alipay}',website='{$website}' where jid={$jid}";
			//echo $sql;
			mysql_query($sql,$link);
		
			//4. 跳转回浏览界面
			header("Location:index.php");
				
				
			break;
	
	}
	
//（4）、关闭数据连接
	mysql_close($link);
