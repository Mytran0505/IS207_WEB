<?php
	$MAXE = $_GET['MAXE'];
	$MAHD = $_GET['MAHD'];
	Include "connect.php";
	$sql = "DELETE FROM cthd WHERE MAXE = '$MAXE' AND MAHD = '$MAHD'";
	$connect->query($sql);
?>
