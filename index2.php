<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<h1>ҩƷ���ͳ��</h1>
<?php

define("HOST","localhost");	
define("USER","root");		
define("PASS","");		
define("DBNAME","yaopin");	
$link = @mysql_connect(HOST,USER,PASS) or die("failed");
mysql_select_db(DBNAME,$link);
mysql_query("set names gb2312");
$checksql = "Select `�������`,Count(*) From yp Group By `�������` Having Count(*) > 0";
$count = "SELECT * FROM `yp` ";
$check = mysql_query($checksql,$link);    //������ƺ�����




$allrow = mysql_query($count,$link);    //����
$all=mysql_num_rows($allrow);

?>
<table style="border-style: groove">
<thead>
<tr>
<th>�������</th>
<th>����</th>
<th>�ٷֱ�</th>
</tr>
</thead>

<?php
//print_r($check);
while($row = mysql_fetch_array($check))//, MYSQL_NUM
{
	echo "<tr >";
	echo "<td>{$row['�������']}</td>";
	//echo "&nbsp&nbsp&nbsp";
	
	
	
	
	echo"<td>";
	echo $row['Count(*)'];
	echo"</td>";
	
	
	
	$num = $row['Count(*)'];
	//echo $all;
	$per = $num / $all;
	$persp = $per * 100;
	//echo "&nbsp&nbsp&nbsp";
	//round(persp,2)
	echo"<td>";
	echo round($persp,2);
	echo "%";
	echo"</td>";
	//echo "<br/>";
	echo"</tr>";
}
?>	
	
</table>	












<h1>�۸�Χ</h1>
<?php
$a1 = "SELECT * FROM `yp` WHERE `����` > 0 and `����` < 1";
$a2 = "SELECT * FROM `yp` WHERE `����` >= 1 and `����` <= 5";
$a3 = "SELECT * FROM `yp` WHERE `����` > 5 and `����` <= 10";
$a4 = "SELECT * FROM `yp` WHERE `����` > 10 and `����` <= 20";
$a5 = "SELECT * FROM `yp` WHERE `����` > 20 and `����` <= 50";
$a6 = "SELECT * FROM `yp` WHERE `����` > 50 and `����` <= 100";
$a7 = "SELECT * FROM `yp` WHERE `����` > 100";
$a8 = "SELECT * FROM `yp` WHERE `����` =''";

$check1 = mysql_query($a1,$link);    //������ƺ�����
$check2 = mysql_query($a2,$link);
$check3 = mysql_query($a3,$link);
$check4 = mysql_query($a4,$link);
$check5 = mysql_query($a5,$link);
$check6 = mysql_query($a6,$link);
$check7 = mysql_query($a7,$link);
$check8 = mysql_query($a8,$link);

?>
<table style="border-style: groove">
<thead>
<tr>
<th>�۸�Χ</th>
<th>����</th>
<th>�ٷֱ�</th>
</tr>
</thead>
	
<?php
//print_r($check);
$row1 = mysql_num_rows($check1);
$row2 = mysql_num_rows($check2);
$row3 = mysql_num_rows($check3);
$row4 = mysql_num_rows($check4);
$row5 = mysql_num_rows($check5);
$row6 = mysql_num_rows($check6);
$row7 = mysql_num_rows($check7);
$row8 = mysql_num_rows($check8);

//, MYSQL_NUM

	echo "<tr >";
	echo "<td>0-1Ԫ</td>";
	echo"<td>";
	echo $row1;
	echo"</td>";
	$num = $row1;
	$per = $num / $all;
	$persp = $per * 100;
	echo"<td>";
	echo round($persp,2);
	echo "%";
	echo"</td>";
	echo"</tr>";
	
	
	echo "<tr >";
	echo "<td>1-5Ԫ</td>";
	echo"<td>";
	echo $row2;
	echo"</td>";
	$num = $row2;
	$per = $num / $all;
	$persp = $per * 100;
	echo"<td>";
	echo round($persp,2);
	echo "%";
	echo"</td>";
	echo"</tr>";

		echo "<tr >";
	echo "<td>5.1-10Ԫ</td>";
	echo"<td>";
	echo $row3;
	echo"</td>";
	$num = $row3;
	$per = $num / $all;
	$persp = $per * 100;
	echo"<td>";
	echo round($persp,2);
	echo "%";
	echo"</td>";
	echo"</tr>";
	
	
	
		echo "<tr >";
	echo "<td>10.1-20Ԫ</td>";
	echo"<td>";
	echo $row4;
	echo"</td>";
	$num = $row4;
	$per = $num / $all;
	$persp = $per * 100;
	echo"<td>";
	echo round($persp,2);
	echo "%";
	echo"</td>";
	echo"</tr>";
	
	
	
		echo "<tr >";
	echo "<td>20.1-50Ԫ</td>";
	echo"<td>";
	echo $row5;
	echo"</td>";
	$num = $row5;
	$per = $num / $all;
	$persp = $per * 100;
	echo"<td>";
	echo round($persp,2);
	echo "%";
	echo"</td>";
	echo"</tr>";
	
	
	
		echo "<tr >";
	echo "<td>50.1-100Ԫ</td>";
	echo"<td>";
	echo $row6;
	echo"</td>";
	$num = $row6;
	$per = $num / $all;
	$persp = $per * 100;
	echo"<td>";
	echo round($persp,2);
	echo "%";
	echo"</td>";
	echo"</tr>";
	
	
	
		echo "<tr >";
	echo "<td>����100Ԫ</td>";
	echo"<td>";
	echo $row7;
	echo"</td>";
	$num = $row7;
	$per = $num / $all;
	$persp = $per * 100;
	echo"<td>";
	echo round($persp,2);
	echo "%";
	echo"</td>";
	echo"</tr>";
	
	
	



	echo "<tr >";
	echo "<td>��û����д�۸�</td>";
	echo"<td>";
	echo $row8;
	echo"</td>";
	$num = $row8;
	$per = $num / $all;
	$persp = $per * 100;
	echo"<td>";
	echo round($persp,2);
	echo "%";
	echo"</td>";
	echo"</tr>";








?>	
</table>	
<h2>ҩƷ����Ϊ:&nbsp&nbsp<?php echo $all;?></h2>





























	
	
	

