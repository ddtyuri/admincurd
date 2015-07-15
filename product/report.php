            	<div class="mws-report-container clearfix" >
                	<a class="mws-report" href="add.php">
                    	<span class="mws-report-icon mws-ic ic-building"></span>
                        <span class="mws-report-content">
                        	<span class="mws-report-title">添加商品</span>
                            <span class="mws-report-value">now!</span>
                        </span>
                    </a>

                	<a class="mws-report" href="#" style="display:none;">
                    	<span class="mws-report-icon mws-ic ic-sport"></span>
                        <span class="mws-report-content">
                        	<span class="mws-report-title">最新添加广告用户:</span><br/>
                            <span class="mws-report-title" style="font-size : 18px; font-weight : bold;">
															<?php
					//1.导入配置文件
						require("dbconfig.php");
						
					//2.连接MySQL，选择数据库
						$link = @mysql_connect(HOST,USER,PASS) or die("数据库连接失败！");
						mysql_select_db(DBNAME,$link);
						mysql_query("set names utf8");
					//3. 执行查询，并返回结果集
						$sql = "select * from jnyo_ad order by timestamp desc";
						$result = mysql_query($sql,$link);

					//4. 解析结果集,并遍历输出
						while($row = mysql_fetch_assoc($result)){
								echo $row['bname'];
							break;
						}
					
					
					
					
					//5. 释放结果集

				?>
							
							
							
							
							
							
							</span>
                        </span>
                    </a>

                	<a class="mws-report" href="#" style="display:none;">
                    	<span class="mws-report-icon mws-ic ic-walk"></span>
                        <span class="mws-report-content">
                        	<span class="mws-report-title">广告总量</span>
                            <span class="mws-report-value">



								<?php

					//3. 执行查询，并返回结果集
						$sql = "select * from jnyo_ad order by timestamp desc";
						$result = mysql_query($sql,$link);
						$i=0;
					//4. 解析结果集,并遍历输出
						while($row = mysql_fetch_assoc($result)){
								$i++;
							
						}
						echo $i;
					//5. 释放结果集

				?>










							</span>
                        </span>
                    </a>
                    
                	<a class="mws-report" href="#" style="display:none;">
                    	<span class="mws-report-icon mws-ic ic-bug"></span>
                        <span class="mws-report-content">
                        	<span class="mws-report-title">广告启用率</span>
                            <span class="mws-report-value up">
							<?php
								$sql2 = "select * from jnyo_ad where status = 1";
								$result2 = mysql_query($sql2,$link);
								$u = 0;
								while($row = mysql_fetch_assoc($result2)){
								$u++;
						}
								$goodresult = $u/$i;
								$goodresult1 = $goodresult*100;
								echo floor($goodresult1);
							
							
							

							?>%
							
							
							
							</span>
                        </span>
                    </a>
                    
                	<a class="mws-report" href="#" style="display:none;">
                    	<span class="mws-report-icon mws-ic ic-car"></span>
                        <span class="mws-report-content">
                        	<span class="mws-report-title">暂无数据</span>
                            <span class="mws-report-value">
														0
							
							
							
							
							
							
							
							</span>
                        </span>
                    </a>
                </div>