<?php
    $SOXE = $_POST['SOXE'];
    $HANGXE = $_POST['HANGXE'];
    $NAMSX = $_POST['NAMSX'];
    $MAKH = $_POST['MAKH'];
    include "connect.php";
    $sql = "INSERT INTO XE VALUES ('$SOXE','$HANGXE','$NAMSX','$MAKH')";

    if($connect->query($sql) == TRUE) {
        echo "Success";
    }
    $connect->close();
?>