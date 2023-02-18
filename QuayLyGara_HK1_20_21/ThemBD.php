<?php
    $SOXE = $_POST['SOXE'];
    $MABD = $_POST['MABD'];
    $SOKM = $_POST['SOKM'];
    $NOIDUNG = $_POST['NOIDUNG'];
    $NGAYNHAN = date('Y-m-d');
    include "connect.php";
    $sql = "INSERT INTO BAODUONG VALUES ('$MABD','$NGAYNHAN',NULL,'$SOKM','$NOIDUNG','$SOXE',NULL)";
    if($connect->query($sql)===true){
        echo "Success";
    }
    $connect->close();
?>