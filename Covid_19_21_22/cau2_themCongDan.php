<?php
    include "connect.php";
    $macd = $_POST["macd"];
    $tencd = $_POST["tencd"];
    $gioitinh = $_POST["gioitinh"];
    $namsinh = $_POST["nsinh"];
    $nuocve = $_POST["nuocve"];
    $madcl = $_POST["madcl"];
    $sql = "INSERT INTO CONGDAN(macongdan, tencongdan, gioitinh, namsinh, nuocve,
     madiemcachly)
     values('$macd', '$tencd', '$gioitinh', '$namsinh', '$nuocve','$madcl')";
    $result = $connect->query($sql);
    if($result) {
        echo " insert thanh cong";
    } else {
        echo "insert khong thanh cong";
    }
    $connect->close();
?>