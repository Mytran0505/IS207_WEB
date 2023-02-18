<?php
	$soluong = $_GET['soluong'];
	Include "connect.php";
	$sql = "SELECT TENXE, COUNT(*) FROM xe JOIN cthd ON xe.MAXE = cthd.MAXE GROUP BY TENXE ORDER BY COUNT(*) DESC LIMIT $soluong";
	$result = $connect->query($sql);
    echo "<table border='1'><tr><th>Tên xe</th><th>Số lần thuê</th></tr>";
	while($row = $result->fetch_row())
	{
		echo "<tr><td>$row[0]</td><td>$row[1]</td></tr>";
    }
    echo "</table>";
?>
