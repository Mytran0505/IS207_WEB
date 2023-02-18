<?php
    include "connect.php";
    $madcl = $_POST['madcl'];
    $sql = "SELECT * FROM CONGDAN WHERE MaDiemCachLy = '$madcl'";
    $rs = $connect->query($sql);
    echo "<option name='tencd'>Tên công dân</option>";
    while($row=$rs->fetch_assoc()){
        echo "<option value='".$row['MaCongDan']."'>".$row['TenCongDan']."</option>";
    }
?>