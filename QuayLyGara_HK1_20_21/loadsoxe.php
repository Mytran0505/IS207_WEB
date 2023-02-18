<?php
    include "connect.php";
    $NGAYNHAN = $_GET['NGAYNHAN'];
    $sql = "SELECT * FROM BAODUONG WHERE NGAYGIONHAN = '$NGAYNHAN'";
    $result = $connect->query($sql);
    while($row = $result->fetch_row())
    {
        echo "<option value='$row[0]'>$row[5]<option>";
    }
    $connect->close();
?>