<?php
    $SoLanBD = $_GET['SoLanBD'];
    Include "connect.php";
    $sql = "SELECT HOTENKH, BD.SOXE, COUNT(*) FROM (XE X JOIN BAODUONG BD ON X.SOXE = BD.SOXE) JOIN KHACHHANG KH ON KH.MAKH = X.MAKH GROUP BY HOTENKH, BD.SOXE HAVING COUNT(*) > $SoLanBD";
    $result = $connect->query($sql);
    echo "<table border='1'><tr><th>Họ tên khách hàng</th><th>Số xe</th><th>Số lần bảo dưỡng</th><tr>";
    while($row = $result->fetch_row())
    {
        Echo "<tr><td>$row[0]</td><td>$row[1]</td><td>$row[2]</td></tr>";
    }
    Echo "</table>";
?>
