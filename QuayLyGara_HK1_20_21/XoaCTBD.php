<?php
    $MABD = $_GET['MABD'];
    $MACV = $_GET['MACV'];
    include "connect.php";
    $sql = "DELETE FROM CT_BD WHERE MABD ='$MABD' AND MACV = '$MACV'";
    $connect->query($sql);
    $connect->close();
?>