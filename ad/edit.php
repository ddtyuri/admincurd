<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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

			<?php 

				
				//1. 导入配置文件

					

				//3. 获取要修改信息的id号，并拼装查看sql语句，执行查询，获取要修改的信息
					$sql4 = "select * from jnyo_ad where aid={$_GET['id']}";
					$result4 = mysql_query($sql4,$link);
					
				//4. 判断是否获取到了要修改的信息
					if($result4 && mysql_num_rows($result4)>0){
						$jnyo_ad = mysql_fetch_assoc($result4);
					}else{
						die("没有找到要修改的信息！");
					}
			?>
				
				
				<div class="mws-panel grid_8">
                	<div class="mws-panel-header">
                    	<span class="mws-i-24 i-list">edit user</span>
                    </div>
                    <div class="mws-panel-body">
                    	<form class="mws-form" id="mws-validate" action="action.php?action=update" method="post">
						<input type="hidden" name="aid" value="<?php echo $jnyo_ad['aid']; ?>"/>
						<input type="hidden" name="timestamp" value="<?php echo $jnyo_ad['timestamp']; ?>"/>
						<input type="hidden" name="category" value="<?php echo $jnyo_ad['category']; ?>"/>
                    		<div class="mws-form-inline">
                    			<div class="mws-form-row">
                    				<label>商家id:</label>
                    				<div class="mws-form-item small">
                    					<input type="text" class="mws-textinput required" name="bid" value="<?php echo $jnyo_ad['bid']; ?>" >
                    				</div>
                    			</div>
                    			<div class="mws-form-row">
                    				<label>商家名称:</label>
                    				<div class="mws-form-item medium">
                    					<input type="text" class="mws-textinput required" name="bname" value="<?php echo $jnyo_ad['adname']; ?>" >
                    				</div>
                    			</div>
                    			<div class="mws-form-row">
                    				<label>商品id:</label>
                    				<div class="mws-form-item medium">
                    					<input type="text" class="mws-textinput required" name="pid" value="<?php echo $jnyo_ad['pid']; ?>" >
                    				</div>
                    			</div>
                    			<div class="mws-form-row">
                    				<label>广告链接:</label>
                    				<div class="mws-form-item medium">
                    					<input type="text" class="mws-textinput required" name="url" value="<?php echo $jnyo_ad['url']; ?>" >
                    				</div>
                    			</div>



						<?php
							$str1 = substr($jnyo_ad['settlemode'],0,1); //第一位字母
							$str2 = substr($jnyo_ad['settlemode'],1);//后面的数字
							if ($str1 == "F"){
								echo "
								     <div class=\"mws-form-row\">
                    				<label>结算方式:</label>
                    				<div class=\"mws-form-item small\">
                    					<select name=\"str1\">
                    						<option value=\"F\">定额</option>
                    						<option value=\"P\">比例分成</option>

                    					</select>
								
                    				</div>
                    			</div>";	
								
								
								
								
								

							}else if($str1 == "P"){
								echo "
								<div class=\"mws-form-row\">
                    				<label>结算方式:</label>
                    				<div class=\"mws-form-item small\">
                    					<select name=\"str1\">
                    						<option value=\"P\">比例分成</option>
                    						<option value=\"F\">定额</option>

                    					</select>
								
                    				</div>
                    			</div>";	
							}else{
								echo "
								<div class=\"mws-form-row\">
                    				<label>结算方式:</label>
                    				<div class=\"mws-form-item small\">
                    					<select name=\"str1\">
                    						<option value=\"P\">比例分成</option>
                    						<option value=\"F\">定额</option>

                    					</select>
								
                    				</div>
                    			</div>";								
							}
						?>
								<div class="mws-form-row">
                    				<label>比例或者定金仅填写数字:</label>
                    				<div class="mws-form-item medium">
                    					<input type="text" class="mws-textinput required" name="str2" value="<?php echo $str2; ?>"/>	
                    				</div>
                    			</div>



								
								
								
								
								
								
                    			<div class="mws-form-row">
                    				<label>广告状态</label>
                    				<div class="mws-form-item small">
                    					<select name="status">
                    						<option value="1">开启</option>
                    						<option value="0">暂停</option>
                    						<option value="2">关闭</option>
                    					</select>
                    				</div>
                    			</div>		

								
								<div style="display:none;" class="mws-form-row">
                    				<label>广告图片</label>
                    				<div class="mws-form-item medium">
                    					<input type="text" class="mws-textinput required" name="image" value="<?php echo $jnyo_ad['image']; 
										
										
										
																						//5. 释放结果集
						mysql_free_result($result);
						mysql_close($link);
										?>">
                    				</div>
                    			</div>




                    		</div>

                    		<div class="mws-button-row">

                    			<input type="submit" value="Submit" class="mws-button blue">

                    		</div>
                    	</form>
                    </div>    	
                </div>
				
				
				
				
				
				
				
				
				
				
				
 
                </div>
            </div>
            
            <div id="mws-footer">
            	Copyright &copy; 2015.cps admin All rights reserved.


            </div>
            
        </div>
    </div>

</body>
</html>
