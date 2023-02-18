<?php
	$MAKH = $_GET['MAKH'];
    Include "connect.php";
	$sql = "SELECT * FROM hopdong WHERE MAKH = '$MAKH'";
	$result = $connect->query($sql);
	while($row = $result->fetch_row())
	{
		echo "<option value='$row[0]'>$row[0]</option>";
    }
?>
