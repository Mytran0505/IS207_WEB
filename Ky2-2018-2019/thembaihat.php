<?php
        $MaBaiHat = $_POST['MaBaiHat'];
        $TenBaiHat = $_POST['TenBaiHat'];
        $TheLoai = $_POST['TheLoai'];
        Include "connect.php";
        $sql = "INSERT INTO BAIHAT VALUES('$MaBaiHat', '$TenBaiHat', '$TheLoai')";
        $connect->query($sql);
?>
