<?php
    include "connect.php";
    $macd = $_POST['macd'];
    $str = "SELECT cd.MaCongDan, TenCongDan, GioiTinh, NamSinh, cd.MaDiemCachLy, TenDiemCachLy, NuocVe
    FROM CONGDAN CD, DIEMCACHLY D WHERE CD.MADIEMCACHLY = D.MADIEMCACHLY AND MACONGDAN='$macd'";
    $rs = $connect->query($str);
    $sqlDCL = "SELECT * FROM DIEMCACHLY";
    $resultDCL = $connect->query($sqlDCL);
    echo "<form action='cau4_update_congdan.php' method='post'>";
    while($row=$rs->fetch_row()){
        //tên trong ".$row['tên_giống_tên_thuộc_tính_trong database']."
        echo "Mã công dân: <input type='text' value='$row[0]' name='macd'></input><br>";
        echo "Tên công dân: <input type='text' value='$row[1]' name='tencd'></input><br>";
        if($row[2]){
            echo "Giới tính: 
            <input type='hidden' name='gioitinh' value='0'>
            <input type='checkbox' checked name='gioitinh'></input><br>";
        } else { 
            echo "Giới tính: 
            <input type='checkbox' name='gioitinh'></input><br>";
        }
        echo "Năm sinh: <input type='date' value='$row[3]' name='namsinh'></input><br>";
        echo "Tên điểm cách ly: <select name='madcl'>";
        echo "<option value='$row[4]'>$row[5]</option>";
        while($rowDCL = $resultDCL->fetch_assoc()) {
            if($rowDCL['TenDiemCachLy'] !== $row[5])
                echo "<option value='".$rowDCL['MaDiemCachLy']."'>".$rowDCL['TenDiemCachLy']."</option>";
        }
        echo "</select><br>";
        echo "Nước về: <input type='text' value='$row[6]' name='nuocve'></input><br>";
        echo "<input type='submit' name='submit' value='Update'></input></form>";
    }
    // echo "<div class='formUpdate'></div>";

    $connect->close();
?>