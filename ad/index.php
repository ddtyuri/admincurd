<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<?php
	Session_start();
	//echo $_SESSION['admin'];
	if(isset($_SESSION['admin'])){
		
	}else{
		die('You are not login,please login....');
	}


?>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="text/javascript">
			function dodel(id){
				if(confirm("确定要删除吗？")){
					window.location="action.php?action=del&id="+id;
				}
			}
		
		</script>
<!-- Required Stylesheets -->
<link rel="stylesheet" type="text/css" href="css/reset.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/text.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/fonts/ptsans/stylesheet.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/fluid.css" media="screen" />

<link rel="stylesheet" type="text/css" href="css/mws.style.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/icons/icons.css" media="screen" />

<!-- Demo and Plugin Stylesheets -->
<link rel="stylesheet" type="text/css" href="css/demo.css" media="screen" />

<link rel="stylesheet" type="text/css" href="plugins/colorpicker/colorpicker.css" media="screen" />
<link rel="stylesheet" type="text/css" href="plugins/jimgareaselect/css/imgareaselect-default.css" media="screen" />
<link rel="stylesheet" type="text/css" href="plugins/fullcalendar/fullcalendar.css" media="screen" />
<link rel="stylesheet" type="text/css" href="plugins/fullcalendar/fullcalendar.print.css" media="print" />
<link rel="stylesheet" type="text/css" href="plugins/tipsy/tipsy.css" media="screen" />
<link rel="stylesheet" type="text/css" href="plugins/sourcerer/Sourcerer-1.2.css" media="screen" />
<link rel="stylesheet" type="text/css" href="plugins/jgrowl/jquery.jgrowl.css" media="screen" />
<link rel="stylesheet" type="text/css" href="plugins/spinner/spinner.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/jui/jquery.ui.css" media="screen" />

<!-- Theme Stylesheet -->
<link rel="stylesheet" type="text/css" href="css/mws.theme.css" media="screen" />

<!-- JavaScript Plugins -->

<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>

<script type="text/javascript" src="plugins/jimgareaselect/jquery.imgareaselect.min.js"></script>
<script type="text/javascript" src="plugins/jquery.dualListBox-1.3.min.js"></script>
<script type="text/javascript" src="plugins/jgrowl/jquery.jgrowl.js"></script>
<script type="text/javascript" src="plugins/jquery.filestyle.js"></script>
<script type="text/javascript" src="plugins/fullcalendar/fullcalendar.min.js"></script>
<script type="text/javascript" src="plugins/jquery.dataTables.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="plugins/flot/excanvas.min.js"></script>
<![endif]-->
<script type="text/javascript" src="plugins/flot/jquery.flot.min.js"></script>
<script type="text/javascript" src="plugins/flot/jquery.flot.pie.min.js"></script>
<script type="text/javascript" src="plugins/flot/jquery.flot.stack.min.js"></script>
<script type="text/javascript" src="plugins/flot/jquery.flot.resize.min.js"></script>
<script type="text/javascript" src="plugins/colorpicker/colorpicker.js"></script>
<script type="text/javascript" src="plugins/tipsy/jquery.tipsy.js"></script>
<script type="text/javascript" src="plugins/sourcerer/Sourcerer-1.2.js"></script>
<script type="text/javascript" src="plugins/jquery.placeholder.js"></script>
<script type="text/javascript" src="plugins/jquery.validate.js"></script>
<script type="text/javascript" src="plugins/jquery.mousewheel.js"></script>
<script type="text/javascript" src="plugins/spinner/ui.spinner.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>

<script type="text/javascript" src="js/mws.js"></script>
<script type="text/javascript" src="js/demo.js"></script>
<script type="text/javascript" src="js/themer.js"></script>

<title>cps后台管理系统</title>

</head>

<body>

	<div id="mws-themer">
    	<div id="mws-themer-hide"></div>
        <div id="mws-themer-content">
        	<div class="mws-themer-section">
	        	<label for="mws-theme-presets">Presets</label> <select id="mws-theme-presets"></select>
            </div>
            <div class="mws-themer-separator"></div>
            <div class="mws-themer-section">
                <ul>
                    <li><span>Base Color</span> <div id="mws-base-cp" class="mws-cp-trigger"></div></li>
                    <li><span>Text Color</span> <div id="mws-text-cp" class="mws-cp-trigger"></div></li>
                    <li><span>Text Glow Color</span> <div id="mws-textglow-cp" class="mws-cp-trigger"></div></li>
                </ul>
            </div>
            <div class="mws-themer-separator"></div>
            <div class="mws-themer-section">
            	<ul>
                    <li><span>Text Glow Opacity</span> <div id="mws-textglow-op"></div></li>
                </ul>
            </div>
            <div class="mws-themer-separator"></div>
            <div class="mws-themer-section">
	            <button class="mws-button red small" id="mws-themer-getcss">Get CSS</button>
            </div>
        </div>
        <div id="mws-themer-css-dialog">
        	<div class="mws-form">
            	<div class="mws-form-row" style="padding:0;">
		        	<div class="mws-form-item">
                    	<textarea cols="auto" rows="auto" readonly="readonly"></textarea>
                    </div>
                </div>
            </div>
        </div>
    </div>

	<div id="mws-header" class="clearfix">
    	<div id="mws-logo-container">

        </div>
        
        
    </div>
    
    <div id="mws-wrapper">
		<div id="mws-sidebar-stitch"></div>
		<div id="mws-sidebar-bg"></div>

		
		
		<?php require("sidebar.php");?>
        
        <div id="mws-container" class="clearfix">
            <div class="container">
            

			<?php require("report.php");?>
			
			
			
			
			
			
			
			
			
			
			
											<form style="margin: 0 0 0 15px" action="editsp.php" method="GET">
				  输入商家名称查询广告: <input type="text" name="name" />
				  <input type="submit" value="Submit" />
				</form>


                
            	<div class="mws-panel grid_8">
                	<div class="mws-panel-header">
                    	<span class="mws-i-24 i-table-1">ad</span>
                    </div>
                    <div class="mws-panel-body">
                        <table class="mws-datatable-fn mws-table">
                            <thead>
                                <tr>
					<th>广告id</th><th>商家id</th><th>商家名称</th>
					<th>商品id</th><th>类型</th>
					<th>广告链接</th><th>广告图片</th><th>结算方式</th><th>广告状态</th><th>发布时间</th><th>操作</th>

                                </tr>
                            </thead>
                            <tbody>

								<?php
					//1.导入配置文件
						$sql1 = "select * from jnyo_ad order by timestamp desc";
						$result1 = mysql_query($sql1,$link);
						
					//4. 解析结果集,并遍历输出
						while($row = mysql_fetch_assoc($result1)){
							echo "<tr class=\"gradeX\">";
							$str1 = substr($row['settlemode'],0,1); //第一位字母
							$str2 = substr($row['settlemode'],1);//后面的数字
							echo "<td>{$row['aid']}</td>";

							echo "<td>{$row['bid']}</td>";
							echo "<td>{$row['bname']}</td>";
							echo "<td>{$row['pid']}</td>";
							//echo "<td>{$row['category']}</td>";
							if ($row['category'] == 1){
								echo "<td>商品广告</td>";
							}else{
								echo "<td>网站广告</td>";
							}							
							echo "<td>{$row['url']}</td>";
							if (!empty($row['image'])){
							echo "<td><a href=\"../Uploads/{$row['image']}\"  target=\"_Blank\">查看广告图片</a></td>";
							}else{
								echo"<td>暂无广告图片！</td>";
							}
							//echo "<td>{$row['settlemode']}</td>";
							if ($str1 == "F"){
								echo "<td>定额分成{$str2}元</td>";
							}else if($str1 == "P"){
								echo "<td>比例分成{$str2}%</td>";
							}else{
								echo "<td>未设置</td>";
							}							
							//echo "<td>{$row['status']}</td>";
							if ($row['status'] == 1){
								echo "<td>已启用</td>";
							}else{
								echo "<td>未启用</td>";
							}
							echo "<td>".date("Y-m-d",$row['timestamp'])."</td>";
							echo "<td>
								<a href='javascript:dodel({$row['aid']})'>删除</a>
								<a href='edit.php?id={$row['aid']}'>修改</a></td>";
							echo "</tr>";
						}
					//5. 释放结果集
						mysql_free_result($result);
						mysql_close($link);
				?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            
<?php require("footer.php");?>
            
        </div>
    </div>

</body>
</html>
