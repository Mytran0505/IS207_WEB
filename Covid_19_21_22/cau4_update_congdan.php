<?php 
    include "connect.php";
    $macd = $_POST['macd'];
    $tencd = $_POST['tencd'];
    $gioitinh = $_POST['gioitinh'];
    $nsinh = $_POST['namsinh'];
    $nuocve = $_POST['nuocve'];
    $madcl = $_POST['madcl'];
    if($gioitinh == 'on'){
        $gioitinh = true;
    }
    $sql = "UPDATE CONGDAN SET TenCongDan='$tencd' , GioiTinh='$gioitinh' , NamSinh='$nsinh', NuocVe='$nuocve', MaDiemCachLy='$madcl' WHERE MaCongDan='$macd'";
    $rs = $connect->query($sql);
    if($rs>0)
        echo "Update successfully!";
    else 
        echo "Update failed!";
    $connect->close();
?>