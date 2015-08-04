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
			
			
			$bname = $_POST["bname"];
							//3. 获取要修改信息的商家，并拼装查看sql语句，执行查询，获取要修改的信息
					$checksql = "select * from jnyo_ad where bname='{$bname}'";
					$check = mysql_query($checksql,$link);
					
				//4. 判断是否获取到了要修改的信息
					if($check && mysql_num_rows($check)>0){
						die("商家名重复！");
					}
					
					
					
					
				$bid = $_POST["bid"];
				

				$pid = $_POST["pid"];				
				$url = $_POST["url"];
				$settlemode = $_POST["str1"].$_POST["str2"];
				
				//$settlemode = $_POST["settlemode"];
				$status = $_POST["status"];				
				$image = $_POST["image"];				
				$category = $_POST["category"];				
				
				$timestamp = time();
				
			//2. 做信息过滤（省略）
			//3. 拼装添加SQL语句，并执行添加操作
				$sql = "insert into jnyo_ad values(null,'{$bid}','{$bname}','{$pid}','{$category}','{$url}','{$image}','{$settlemode}','{$status}','{$timestamp}')";
				//echo $sql;
				mysql_query($sql,$link);
				
			//4. 判断是否成功
				$id = mysql_insert_id($link);//获取刚刚添加信息的自增id号值
				if($id>0){
					echo "<h3>广告信息添加成功！</h3>";
					header("Location:index.php");
				}else{
					echo "<h3>广告信息添加失败！</h3>";
				}
				echo "<a href='javascript:window.history.back();'>返回</a>&nbsp;&nbsp;";
				echo "<a href='index.php'>浏览所有广告</a>";
				
				break;
		
		case "del": //执行删除操作
				//1. 获取要删除的id号
				$aid=$_GET['id'];
				
				//2. 拼装删除sql语句，并执行删除操作
				$sql = "delete from jnyo_ad where aid={$aid}";
				
				mysql_query($sql,$link);
				
				//3. 自动跳转到浏览新闻界面
				header("Location:index.php");
			break;
			
		case "update": //执行修改操作
				//1. 获取要修改的信息
				$timestamp = $_POST["timestamp"];
				$category = $_POST["category"];
				$bname = $_POST["bname"];
				$bid = $_POST["bid"];
				$pid = $_POST["pid"];
				$url = $_POST["url"];
				$image = $_POST["image"];
				
				$settlemode = $_POST["str1"].$_POST["str2"];
				
				
				//$settlemode = $_POST['settlemode'];
				$aid = $_POST["aid"];
				$status = $_POST["status"];
				
				//2. 过滤要修改的信息（省略）
				//3. 拼装修改sql语句，并执行修改操作
				$sql = "update jnyo_ad set timestamp='{$timestamp}',category='{$category}',adname='{$bname}',bid='{$bid}',pid='{$pid}',url='{$url}',image='{$image}',settlemode='{$settlemode}',status='{$status}' where aid={$aid}";
				echo $sql;
				mysql_query($sql,$link);
			
				//4. 跳转回浏览界面
				header("Location:index.php");
				
			break;
	
	}
	
//（4）、关闭数据连接
	mysql_close($link);
