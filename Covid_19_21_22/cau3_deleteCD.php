<?php
    include "connect.php";
    $macd = $_POST['macd'];
    $str = "delete from CN_TC where macongdan = '$macd'";
    $rs = $connect->query($str);
    $str1 = "delete from CONGDAN where macongdan = '$macd'";
    $rs1 = $connect->query($str1);
    $connect->close();
?>