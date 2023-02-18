<?php
	$MAKH = $_POST['MAKH'];
	$HOTEN = $_POST['HOTEN'];
    $SDT = $_POST['SDT'];
    Include "connect.php";
    $sql = "INSERT INTO khachhang VALUES('$MAKH', '$HOTEN', '$SDT')";
    $connect->query($sql);
    $connect->close();
?>
