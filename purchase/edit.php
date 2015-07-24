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
            
<?php //require("report.php");?>

			<?php 

				
				//1. 导入配置文件

					

				//3. 获取要修改信息的id号，并拼装查看sql语句，执行查询，获取要修改的信息
					//1.导入配置文件
						require("dbconfig.php");
						
					//2.连接MySQL，选择数据库
						$link = @mysql_connect(HOST,USER,PASS) or die("数据库连接失败！");
						mysql_select_db(DBNAME,$link);
						mysql_query("set names utf8");				
					$sql4 = "select * from jnyo_purchase_record where pid={$_GET['id']}";
					$result4 = mysql_query($sql4,$link);
					
				//4. 判断是否获取到了要修改的信息
					if($result4 && mysql_num_rows($result4)>0){
						$jnyo_user = mysql_fetch_assoc($result4);
					}else{
						die("没有找到要修改的信息！");
					}
			?>
				
				
				<div class="mws-panel grid_8">
                	<div class="mws-panel-header">
                    	<span class="mws-i-24 i-list">check purchase</span>
                    </div>
                    <div class="mws-panel-body">
                    	<form class="mws-form" id="mws-validate" action="action.php?action=update" method="post">
						<input type="hidden" name="pid" value="<?php echo $jnyo_user['pid']; ?>"/>


                    		<div class="mws-form-inline">
                    			<div class="mws-form-row">
                    				<label>分享id</label>
                    				<div class="mws-form-item small">
                    					<input type="text" class="mws-textinput required" name="sid" value="<?php echo $jnyo_user['sid']; ?>" readonly="true"/>
                    				</div>
                    			</div>
                    			<div class="mws-form-row">
                    				<label>站长id:</label>
                    				<div class="mws-form-item medium">
                    					<input type="text" class="mws-textinput required" name="zid" value="<?php echo $jnyo_user['zid']; ?>" readonly="true"/>
                    				</div>
                    			</div>
								
								
                            	<div class="mws-form-row">
                                	<label>广告id</label>
                                	<div class="mws-form-item">
                                    	<input type="text" name="aid" class="mws-textinput" value="<?php echo $jnyo_user['aid']; ?>" readonly="true"/>
                                    </div>
                                </div>
								
								
								
								<div class="mws-form-row">
                                	<label>商家id</label>
                                	<div class="mws-form-item">
                                    	<input type="text" name="bid" class="mws-textinput" value="<?php echo $jnyo_user['bid']; ?>" readonly="true"/>
                                    </div>
                                </div>
								
								
								
								<div class="mws-form-row">
                                	<label>商品名称</label>
                                	<div class="mws-form-item">
                                    	<input type="text" name="name" class="mws-textinput" value="<?php echo $jnyo_user['name']; ?>" readonly="true"/>
                                    </div>
                                </div>
								
								
								
								<div class="mws-form-row">
                                	<label>IP地址</label>
                                	<div class="mws-form-item">
                                    	<input type="text" name="ip" class="mws-textinput" value="<?php echo $jnyo_user['ip']; ?>" readonly="true"/>
                                    </div>
                                </div>
								
								
								
								<div class="mws-form-row">
                                	<label>订单号</label>
                                	<div class="mws-form-item">
                                    	<input type="text" name="orderid" class="mws-textinput" value="<?php echo $jnyo_user['orderid']; ?>" readonly="true"/>
                                    </div>
                                </div>
								
								<div class="mws-form-row">
                                	<label>订单金额</label>
                                	<div class="mws-form-item">
                                    	<input type="text" name="amount" class="mws-textinput" value="<?php echo $jnyo_user['amount']; ?>" readonly="true"/>
                                    </div>
                                </div>



								<div class="mws-form-row">
                                	<label>结算方式</label>
                                	<div class="mws-form-item">
                                    	<input type="text" name="settlemode" class="mws-textinput" value="<?php 
										$str1 = substr($jnyo_user['settlemode'],0,1); //第一位字母
										$str2 = substr($jnyo_user['settlemode'],1);//后面的数字
										if ($str1 == "F"){
											echo "定额分成{$str2}元";
										}else if($str1 == "P"){
											echo "比例分成{$str2}%";
										}else{
											echo "未设置";
										} ?>" readonly="true"/>
                                    </div>
                                </div>	


								<div class="mws-form-row">
                    				<label>购买时间:</label>
                    				<div class="mws-form-item medium">
                    					<input type="text" readonly="true" class="mws-textinput required" name="timestamp" value="<?php echo date("Y-m-d",$jnyo_user['timestamp']); 
										
										
										
																						//5. 释放结果集
						mysql_free_result($result4);
						mysql_close($link);
										?>">
                    				</div>
                    			</div>

                    			<div class="mws-form-row">
                    				<label>设置商品状态</label>
                    				<div class="mws-form-item small">
                    					<select name="status">
                    						<option value="0">已结算收益</option>
                    						<option value="1">待审核</option>
                    						<option value="2">退货</option>
                    						<option value="3">待结算收益</option>											
                    					</select>
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
