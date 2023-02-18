<?php
    $SOXE = $_GET['SOXE'];
    include "connect.php";
    $sql="SELECT HOTENKH FROM KHACHHANG KH, XE X WHERE KH.MAKH = X.MAKH AND X.SOXE = $SOXE";
    $result = $connect->query($sql);
    $col = $result->fetch_row();
    $connect->close();
    echo $col[0];
?>
