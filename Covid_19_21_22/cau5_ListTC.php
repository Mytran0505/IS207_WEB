<?php
    include "connect.php";
    $macd = $_POST['macd'];
    $sql = "SELECT tc.MaTrieuChung, TenTrieuChung FROM CN_TC ct, TRIEUCHUNG tc, CONGDAN cd 
    WHERE ct.MatrieuChung=tc.MatrieuChung AND cd.MaCongDan=ct.MaCongDan AND ct.MaCongDan='$macd'";
    $rs = $connect->query($sql);
    echo "<table border='1' cellspacing='0'>
        <tr>
            <th>STT</th>
            <th>Mã triệu chứng</th>
            <th>Tên triệu chứng</th>
        </tr>";
        $stt = 0;
        while($row=$rs->fetch_array()){
            $stt++;
            echo "<tr>
                <td>$stt</td>
                <td>$row[0]</td>
                <td>$row[1]</td>";
    }
    echo "</tr></table>";
    $connect->close();
?>