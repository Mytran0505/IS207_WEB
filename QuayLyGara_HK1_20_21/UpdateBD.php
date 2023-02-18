<?php
    $NGAYTRA = date('Y-m-d');
    $THANHTIEN = $_POST['THANHTIEN'];
    $MABD = $_POST['MABD'];
    include "connect.php";
    $sql="UPDATE BAODUONG SET NGAYGIOTRA = '$NGAYTRA', THANHTIEN = '$THANHTIEN' 
    WHERE MABD = '$MABD'";
    $connect->query($sql);
    $connect->close();
?>