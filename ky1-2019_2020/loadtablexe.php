<?php
	echo "Danh sách các xe";
	echo "<table border='1'><tr><th>Tên xe</th><th>Chức năng</th></tr>";
	$MAHD = $_GET['MAHD'];
	$sql = "SELECT xe.MAXE, TENXE, MAHD FROM cthd JOIN xe ON xe.MAXE = cthd.MAXE WHERE MAHD = '$MAHD'";
	include "connect.php";
	$result = $connect->query($sql);
	while($row = $result->fetch_row())
	{
		echo "<tr><td>$row[1]<input type='hidden'  class = 'MAXE' value='$row[0]'/><input type='hidden' class = 'MAHD' value='$row[2]'/></td>";
		echo "<td><button type='button' class='xoa'>Delete</button></td><tr>";
	}
	echo "</table>";
?>
