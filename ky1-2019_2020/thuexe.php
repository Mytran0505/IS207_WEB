<?php
	$MAHD = $_POST['MAHD'];
	$TENHD = $_POST['TENHD'];
	$NGAYLAP = date('Y-m-d');
    $MAKH = $_POST['MAKH'];
    $TONGTIEN = $_POST['TONGTIEN'];
    $MAXE = $_POST['MAXE'];
    Include "connect.php";
    $sql = "INSERT INTO hopdong VALUES('$MAHD', '$TENHD', '$NGAYLAP', '$MAKH', '$TONGTIEN')";
    $connect->query($sql);
    foreach($MAXE as $item)
    {
        $sql1 = "INSERT INTO cthd VALUES('$MAHD', '$item')";
        $connect->query($sql1);
    }
    $connect->close();
?>
